import type Component from 'flarum/common/components/Component';
import Modal from 'flarum/common/components/Modal';

/**
 * Notice from V17: Temporary override due to lack of multi-dialogs!
 *
 * We'll open a PR to support multi-dialog to the Flarum main repo
 */

/**
 * Ideally, `show` would take a higher-kinded generic, ala:
 *  `show<Attrs, C>(componentClass: C<Attrs>, attrs: Attrs): void`
 * Unfortunately, TypeScript does not support this:
 * https://github.com/Microsoft/TypeScript/issues/1213
 * Therefore, we have to use this ugly, messy workaround.
 */
type UnsafeModalClass = ComponentClass<any, Modal> & {
  isDismissible: boolean;
  component: typeof Component.component;
};

/**
 * Class used to manage modal state.
 *
 * Accessible on the `app` object via `app.modal` property.
 */
export default class OverrideModalState {
  /**
   * @internal
   */
  modal: null | {
    componentClass: UnsafeModalClass;
    attrs?: Record<string, unknown>;
    key: number;
  } = null;

  modalList: Array = [];

  /**
   * Used to force re-initialization of modals if a modal
   * is replaced by another of the same type.
   */
  private key = 0;

  private closeTimeout?: NodeJS.Timeout;

  /**
   * Shows a modal dialog.
   *
   * If a modal is already open, the existing one will close and the new modal will replace it.
   *
   * @example <caption>Show a modal</caption>
   * app.modal.show(MyCoolModal, { attr: 'value' });
   *
   * @example <caption>Show a modal from a lifecycle method (`oncreate`, `view`, etc.)</caption>
   * // This "hack" is needed due to quirks with nested redraws in Mithril.
   * setTimeout(() => app.modal.show(MyCoolModal, { attr: 'value' }), 0);
   */
  show(componentClass: UnsafeModalClass, attrs: Record<string, unknown> = {}, keepLast: Boolean = false): void {
    if (!(componentClass.prototype instanceof Modal)) {
      // This is duplicated so that if the error is caught, an error message still shows up in the debug console.
      const invalidModalWarning = 'The ModalManager can only show Modals.';
      console.error(invalidModalWarning);
      throw new Error(invalidModalWarning);
    }

    if (this.closeTimeout) clearTimeout(this.closeTimeout);

    // Open new modal
    this.modal = { componentClass, attrs, key: this.key++ };

    // Remember previously opened modal
    if (keepLast) {
      this.modalList.push(this.modal);
    } else {
      // Override last modals
      this.modalList = [this.modal];
    }

    m.redraw.sync();
  }

  /**
   * Closes the currently open dialog, if one is open.
   */
  close(): void {
    if (!this.modal) return;

    // There are more modals currently opened
    // Close current and open last in list
    if (this.modalList.length >= 2) {
      $(`.modal[modal-key=${this.modal?.key}]`)
        .one('hide.bs.modal', () => {
          const currentModalPosition = this.modalList.indexOf(this.modal);

          // Remove last modal from list
          this.modalList.splice(currentModalPosition, 1);

          // Open last modal from list
          this.modal = this.modalList[this.modalList.length - 1];

          setTimeout(() => {
            $(document.body).addClass('modal-open');
          }, 1000);

          m.redraw();
        })
        .modal('hide');

      m.redraw();
      return;
    }

    // Don't hide the modal immediately, because if the consumer happens to call
    // the `show` method straight after to show another modal dialog, it will
    // cause Bootstrap's modal JS to misbehave. Instead we will wait for a tiny
    // bit to give the `show` method the opportunity to prevent this from going
    // ahead.

    this.closeTimeout = setTimeout(() => {
      $(`.modal[modal-key=${this.modal?.key}]`)
        .modal('hide')
        .one('hide.bs.modal', () => {
          this.modal = null;

          m.redraw();
        });
    });
  }

  /**
   * Checks if a modal is currently open.
   *
   * @return `true` if a modal dialog is currently open, otherwise `false`.
   */
  isModalOpen(): boolean {
    return !!this.modal;
  }
}
