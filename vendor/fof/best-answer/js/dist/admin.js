(()=>{var e={n:t=>{var n=t&&t.__esModule?()=>t.default:()=>t;return e.d(n,{a:n}),n},d:(t,n)=>{for(var s in n)e.o(n,s)&&!e.o(t,s)&&Object.defineProperty(t,s,{enumerable:!0,get:n[s]})},o:(e,t)=>Object.prototype.hasOwnProperty.call(e,t),r:e=>{"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})}},t={};(()=>{"use strict";e.r(t);const n=flarum.core.compat["admin/app"];var s=e.n(n);const a=flarum.core.compat["tags/components/EditTagModal"];var r=e.n(a);const o=flarum.core.compat["common/extend"],i=flarum.core.compat["utils/Stream"];var l=e.n(i);const d=flarum.core.compat.Model;var c=e.n(d);const f=flarum.core.compat["tags/models/Tag"];var b=e.n(f);function u(e,t){return u=Object.setPrototypeOf||function(e,t){return e.__proto__=t,e},u(e,t)}const p=flarum.core.compat["admin/components/ExtensionPage"];var _=e.n(p);const g=flarum.core.compat["common/components/Button"];var h=e.n(g);const w=flarum.core.compat["common/components/Link"];var v=e.n(w),y=function(e){var t,n;function a(){return e.apply(this,arguments)||this}n=e,(t=a).prototype=Object.create(n.prototype),t.prototype.constructor=t,u(t,n);var r=a.prototype;return r.oninit=function(t){e.prototype.oninit.call(this,t),this.loading=!1},r.enableAllTags=function(){this.enable("enableAllTags")},r.enableAllReminders=function(){this.enable("enableAllReminders")},r.enable=function(e){this.loading=!0,s().request({method:"POST",url:s().forum.attribute("apiUrl")+"/fof/best-answer/enable",body:{feature:e}}).then(this.loading=!1)},r.content=function(){return[m("div",{className:"container"},m("div",{className:"BestAnswerSettingsPage"},m("div",{className:"Form"},m("div",{className:"Introduction"},m("p",null,s().translator.trans("fof-best-answer.admin.settings.introduction",{a:m(v(),{href:s().route("extension",{id:"flarum-tags"})})})),m("div",{className:"ButtonGroup"},m(h(),{className:"Button",onclick:this.enableAllTags.bind(this),loading:this.loading,icon:"fas fa-check"},s().translator.trans("fof-best-answer.admin.settings.enable_all_tags_button")),m(h(),{className:"Button",onclick:this.enableAllReminders.bind(this),loading:this.loading,icon:"fas fa-stopwatch"},s().translator.trans("fof-best-answer.admin.settings.enable_all_tags_reminder_button")))),m("hr",null),m("div",{className:"GeneralPreferences"},m("h3",null,s().translator.trans("fof-best-answer.admin.settings.label.general")),this.buildSettingComponent({type:"boolean",setting:"fof-best-answer.allow_select_own_post",label:s().translator.trans("fof-best-answer.admin.settings.allow_select_own_post"),help:s().translator.trans("fof-best-answer.admin.settings.allow_select_own_post_help")}),this.buildSettingComponent({type:"boolean",setting:"fof-best-answer.use_alternative_ui",label:s().translator.trans("fof-best-answer.admin.settings.use_alt_ui"),help:s().translator.trans("fof-best-answer.admin.settings.use_alt_ui_help")}),this.buildSettingComponent({type:"boolean",setting:"fof-best-answer.show_filter_dropdown",label:s().translator.trans("fof-best-answer.admin.settings.show_filter_label"),help:s().translator.trans("fof-best-answer.admin.settings.show_filter_help")})),m("hr",null),m("div",{className:"Reminders"},m("h3",null,s().translator.trans("fof-best-answer.admin.settings.label.reminders")),m("p",{className:"helpText"},s().translator.trans("fof-best-answer.admin.settings.label.reminders_notice")," ",m("a",{href:"https://docs.flarum.org/console.html#schedule-run",target:"_blank"},s().translator.trans("fof-best-answer.admin.settings.documentation"))),this.buildSettingComponent({type:"number",setting:"fof-best-answer.select_best_answer_reminder_days",label:s().translator.trans("fof-best-answer.admin.settings.select_best_answer_reminder_days"),placeholder:"0",min:0,help:s().translator.trans("fof-best-answer.admin.settings.select_best_answer_reminder_days_help")})),m("hr",null),m("div",{className:"AdvancedPreferences"},m("h3",null,s().translator.trans("fof-best-answer.admin.settings.label.advanced")),this.buildSettingComponent({type:"boolean",setting:"fof-best-answer.schedule_on_one_server",label:s().translator.trans("fof-best-answer.admin.settings.schedule_on_one_server"),help:s().translator.trans("fof-best-answer.admin.settings.schedule_on_one_server_help")}),this.buildSettingComponent({type:"boolean",setting:"fof-best-answer.stop_overnight",label:s().translator.trans("fof-best-answer.admin.settings.schedule_stop_overnight"),help:s().translator.trans("fof-best-answer.admin.settings.schedule_stop_overnight_help")}),this.buildSettingComponent({type:"boolean",setting:"fof-best-answer.store_log_output",label:s().translator.trans("fof-best-answer.admin.settings.schedule_log_output")})),this.submitButton())))]},a}(_());s().initializers.add("fof-best-answer",(function(){s().extensionData.for("fof-best-answer").registerPage(y).registerPermission({icon:"far fa-comment",label:s().translator.trans("fof-best-answer.admin.permissions.best_answer"),permission:"discussion.selectBestAnswerOwnDiscussion"},"reply").registerPermission({icon:"far fa-comment",label:s().translator.trans("fof-best-answer.admin.permissions.best_answer_not_own_discussion"),permission:"discussion.selectBestAnswerNotOwnDiscussion"},"reply"),s().initializers.has("flarum-tags")&&(b().prototype.isQnA=c().attribute("isQnA"),b().prototype.reminders=c().attribute("reminders"),(0,o.extend)(r().prototype,"oninit",(function(){this.isQnA=l()(this.tag.isQnA()||!1),this.reminders=l()(this.tag.reminders()||!1)})),(0,o.extend)(r().prototype,"fields",(function(e){e.add("qna",m("div",{className:"Form-group"},m("div",null,m("label",{className:"checkbox"},m("input",{type:"checkbox",bidi:this.isQnA}),s().translator.trans("fof-best-answer.admin.edit_tag.qna_label")))),10),e.add("reminders",m("div",{className:"Form-group"},m("div",null,m("label",{className:"checkbox"},m("input",{type:"checkbox",bidi:this.reminders}),s().translator.trans("fof-best-answer.admin.edit_tag.reminders")))))})),(0,o.extend)(r().prototype,"submitData",(function(e){e.isQnA=this.isQnA(),e.reminders=this.reminders()})))}))})(),module.exports=t})();
//# sourceMappingURL=admin.js.map