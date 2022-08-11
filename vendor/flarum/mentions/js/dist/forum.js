(()=>{var t={n:e=>{var n=e&&e.__esModule?()=>e.default:()=>e;return t.d(n,{a:n}),n},d:(e,n)=>{for(var o in n)t.o(n,o)&&!t.o(e,o)&&Object.defineProperty(e,o,{enumerable:!0,get:n[o]})},o:(t,e)=>Object.prototype.hasOwnProperty.call(t,e),r:t=>{"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})}},e={};(()=>{"use strict";t.r(e),t.d(e,{filterPostMentions:()=>Pt,filterUserMentions:()=>wt});var n={};t.r(n),t.d(n,{default:()=>R,insertMention:()=>L});var o={};t.r(o),t.d(o,{filterPostMentions:()=>Pt,filterUserMentions:()=>wt});const r=flarum.core.compat["common/extend"],s=flarum.core.compat["forum/app"];var i=t.n(s);const a=flarum.core.compat["forum/components/NotificationGrid"];var u=t.n(a);const c=flarum.core.compat["common/utils/string"],f=flarum.core.compat["forum/components/CommentPost"];var l=t.n(f);const d=flarum.core.compat["forum/components/PostPreview"];var p=t.n(d);const h=flarum.core.compat["common/components/LoadingIndicator"];var v=t.n(h);const g=flarum.core.compat["common/Model"];var y=t.n(g);const b=flarum.core.compat["common/models/Post"];var w=t.n(b);const P=flarum.core.compat["common/components/Link"];var x=t.n(P);const C=flarum.core.compat["common/helpers/punctuateSeries"];var M=t.n(C);const T=flarum.core.compat["common/helpers/username"];var _=t.n(T);const B=flarum.core.compat["common/helpers/icon"];var A=t.n(B);const k=flarum.core.compat["common/components/Button"];var N=t.n(k);const S=flarum.core.compat["forum/utils/DiscussionControls"];var H=t.n(S);const D=flarum.core.compat["forum/components/EditPostComposer"];var I=t.n(D);const U=flarum.core.compat["common/utils/extractText"];var j=t.n(U),E=function(){return j()(i().translator.trans("core.lib.username.deleted_text"))};function W(t,e){return void 0===e&&(e=!0),t?((e?t.displayName():t.username())||E()).replace(/"#[a-z]{0,3}[0-9]+/,"_"):E().replace(/"#[a-z]{0,3}[0-9]+/,"_")}function O(t,e){return void 0===e?i().forum.attribute("allowUsernameMentionFormat")?"@"+W(t,!1):'@"'+W(t)+'"#'+t.id():'@"'+W(t)+'"#p'+e}function L(t,e,n){return new Promise((function(o){var r=O(t.user(),t.id())+" ";e.fields.content()||(e.body.attrs.originalContent=r);var s=e.editor.getSelectionRange()[0],i=e.fields.content().slice(0,s),a=0==i.length?0:3-i.match(/(\n{0,2})$/)[0].length;return e.editor.insertAtCursor(Array(a).join("\n")+(n?"> "+r+n.trim().replace(/\n/g,"\n> ")+"\n\n":r),!1),o(e)}))}function R(t,e){return i().composer.bodyMatches(I())&&i().composer.body.attrs.post.discussion()===t.discussion()?L(t,i().composer,e):H().replyAction.call(t.discussion()).then((function(n){return L(t,n,e)}))}function q(t,e){return q=Object.setPrototypeOf||function(t,e){return t.__proto__=e,t},q(t,e)}function J(t,e){t.prototype=Object.create(e.prototype),t.prototype.constructor=t,q(t,e)}const F=flarum.core.compat["common/Fragment"];var z=t.n(F),Q=function(t){function e(e){var n;return(n=t.call(this)||this).post=e,n}J(e,t);var n=e.prototype;return n.view=function(){var t=this;return m("button",{class:"Button PostQuoteButton",onclick:function(){R(t.post,t.content)}},A()("fas fa-quote-left",{className:"Button-icon"}),i().translator.trans("flarum-mentions.forum.post.quote_button"))},n.show=function(t,e){var n=this.$().show(),o=n.offsetParent().offset();n.css("left",t-o.left).css("top",e-o.top),this.hideHandler=this.hide.bind(this),$(document).on("mouseup",this.hideHandler)},n.showStart=function(t,e){var n=this.$();this.show(t,$(window).scrollTop()+e-n.outerHeight()-5)},n.showEnd=function(t,e){var n=this.$();this.show(t-n.outerWidth(),$(window).scrollTop()+e+5)},n.hide=function(){this.$().hide(),$(document).off("mouseup",this.hideHandler)},e}(z());function X(t){var e=window.getSelection();if(null!=e&&e.rangeCount){var n=e.getRangeAt(0),o=n.commonAncestorContainer;if(t[0]===o||$.contains(t[0],o)){var r=$("<div>").append(n.cloneContents());return r.find("img.emoji").replaceWith((function(){return this.alt})),r.find("img").replaceWith((function(){return"![]("+this.src+")"})),r.find("a").replaceWith((function(){return"["+this.innerText+"]("+this.href+")"})),r.text()}}return""}const Y=flarum.core.compat["common/components/TextEditor"];var G=t.n(Y);const K=flarum.core.compat["common/components/TextEditorButton"];var V=t.n(K);const Z=flarum.core.compat["forum/components/ReplyComposer"];var tt=t.n(Z);const et=flarum.core.compat["common/helpers/avatar"];var nt=t.n(et);const ot=flarum.core.compat["common/helpers/highlight"];var rt=t.n(ot);const st=flarum.core.compat["forum/utils/KeyboardNavigatable"];var it=t.n(st);const at=flarum.core.compat["common/utils/throttleDebounce"];var ut=function(t){function e(){for(var e,n=arguments.length,o=new Array(n),r=0;r<n;r++)o[r]=arguments[r];return(e=t.call.apply(t,[this].concat(o))||this).items=[],e.active=!1,e.index=0,e.keyWasJustPressed=!1,e}J(e,t);var n=e.prototype;return n.view=function(){return m("ul",{className:"Dropdown-menu MentionsDropdown"},this.items.map((function(t){return m("li",null,t)})))},n.show=function(t,e){this.$().show().css({left:t+"px",top:e+"px"}),this.active=!0},n.hide=function(){this.$().hide(),this.active=!1},n.navigate=function(t){var e=this;this.keyWasJustPressed=!0,this.setIndex(this.index+t,!0),clearTimeout(this.keyWasJustPressedTimeout),this.keyWasJustPressedTimeout=setTimeout((function(){return e.keyWasJustPressed=!1}),500)},n.complete=function(){this.$("li").eq(this.index).find("button").click()},n.setIndex=function(t,e){if(!this.keyWasJustPressed||e){var n=this.$(),o=n.find("li"),r=t;r<0?r=o.length-1:r>=o.length&&(r=0),this.index=r;var s=o.removeClass("active").eq(r).addClass("active");if(e){var i,a=n.scrollTop(),u=n.offset().top,c=u+n.outerHeight(),m=s.offset().top,f=m+s.outerHeight();m<u?i=a-u+m-parseInt(n.css("padding-top"),10):f>c&&(i=a-c+f+parseInt(n.css("padding-bottom"),10)),void 0!==i&&n.stop(!0).animate({scrollTop:i},100)}}},e}(z()),ct=(0,at.throttle)(250,(function(t,e,n,o,r,s){var a=t.toLowerCase();e.includes(a)||(i().store.find("users",{filter:{q:t},page:{limit:5}}).then((function(t){t.forEach((function(t){o.has(t.id())||(o.add(t.id()),n.push(t))})),s()})),e.push(a))}));const mt=flarum.core.compat["forum/components/Notification"];var ft=t.n(mt),lt=function(t){function e(){return t.apply(this,arguments)||this}J(e,t);var n=e.prototype;return n.icon=function(){return"fas fa-reply"},n.href=function(){var t=this.attrs.notification,e=t.subject(),n=t.content();return i().route.discussion(e.discussion(),n&&n.replyNumber)},n.content=function(){var t=this.attrs.notification.fromUser();return i().translator.trans("flarum-mentions.forum.notifications.post_mentioned_text",{user:t,count:1})},n.excerpt=function(){return(0,c.truncate)(this.attrs.notification.subject().contentPlain()||"",200)},e}(ft()),dt=function(t){function e(){return t.apply(this,arguments)||this}J(e,t);var n=e.prototype;return n.icon=function(){return"fas fa-at"},n.href=function(){var t=this.attrs.notification.subject();return i().route.discussion(t.discussion(),t.number())},n.content=function(){var t=this.attrs.notification.fromUser();return i().translator.trans("flarum-mentions.forum.notifications.user_mentioned_text",{user:t})},n.excerpt=function(){return(0,c.truncate)(this.attrs.notification.subject().contentPlain(),200)},e}(ft());const pt=flarum.core.compat["forum/components/UserPage"];var ht=t.n(pt);const vt=flarum.core.compat["common/components/LinkButton"];var gt=t.n(vt);const yt=flarum.core.compat["forum/components/PostsUserPage"];var bt=function(t){function e(){return t.apply(this,arguments)||this}return J(e,t),e.prototype.loadResults=function(t){return i().store.find("posts",{filter:{type:"comment",mentioned:this.user.id()},page:{offset:t,limit:this.loadLimit},sort:"-createdAt"})},e}(t.n(yt)());function wt(t){var e;if(i().forum.attribute("allowUsernameMentionFormat")&&t.hasAttribute("username")?e=i().store.getBy("users","username",t.getAttribute("username")):t.hasAttribute("id")&&(e=i().store.getById("users",t.getAttribute("id"))),e)return t.setAttribute("id",e.id()),t.setAttribute("slug",e.slug()),t.setAttribute("displayname",j()(_()(e))),!0;t.invalidate()}function Pt(t){var e=i().store.getById("posts",t.getAttribute("id"));if(e)return t.setAttribute("discussionid",e.discussion().id()),t.setAttribute("number",e.number()),t.setAttribute("displayname",j()(_()(e.user()))),!0}const xt={"mentions/components/MentionsUserPage":bt,"mentions/components/PostMentionedNotification":lt,"mentions/components/UserMentionedNotification":dt,"mentions/fragments/AutocompleteDropdown":ut,"mentions/fragments/PostQuoteButton":Q,"mentions/utils/getCleanDisplayName":W,"mentions/utils/getMentionText":O,"mentions/utils/reply":n,"mentions/utils/selectedText":X,"mentions/utils/textFormatter":o},$t=flarum.core;i().initializers.add("flarum-mentions",(function(){var t,e;!function(){function t(){var t=this.attrs.post.contentHtml();if(t!==this.oldPostContentHtml&&!this.isEditing()){this.oldPostContentHtml=t;var e=this.attrs.post,n=this.$();this.$().on("click",".UserMention:not(.UserMention--deleted), .PostMention:not(.PostMention--deleted)",(function(t){m.route.set(this.getAttribute("href")),t.preventDefault()})),this.$(".PostMention:not(.PostMention--deleted)").each((function(){var t,o=$(this),r=o.data("id"),s=$('<ul class="Dropdown-menu PostMention-preview fade"/>');n.append(s);var i=function(){return $('.PostStream-item[data-id="'+r+'"]')},a=function(){var t=i(),a=!1;if(t.length){var u=t.offset().top,c=window.pageYOffset;u>c&&u+t.height()<c+$(window).height()&&(t.addClass("pulsate"),a=!0)}if(!a){var f=function(){var t=s.outerHeight(!0),e=0;o.offset().top-t<$(window).scrollTop()+$("#header").outerHeight()?e+=o.outerHeight(!0):e-=t,s.show().css("top",o.offset().top-n.offset().top+e).css("left",o.offsetParent().offset().left-n.offset().left).css("max-width",o.offsetParent().width())},l=function(t){var n=t.discussion();m.render(s[0],[n!==e.discussion()?m("li",null,m("span",{className:"PostMention-preview-discussion"},n.title())):"",m("li",null,p().component({post:t}))]),f()},d=app.store.getById("posts",r);d&&d.discussion()?l(d):(m.render(s[0],v().component()),app.store.find("posts",r).then(l),f()),setTimeout((function(){return s.off("transitionend").addClass("in")}))}},u=function(){i().removeClass("pulsate"),s.hasClass("in")&&s.removeClass("in").one("transitionend",(function(){return s.hide()}))};o.on("touchend",(function(t){t.cancelable&&t.preventDefault()})),o.add(s).hover((function(){clearTimeout(t),t=setTimeout(a,250)}),(function(){clearTimeout(t),i().removeClass("pulsate"),t=setTimeout(u,250)})).on("touchend",(function(t){a(),t.stopPropagation()})),$(document).on("touchend",u)}))}}(0,r.extend)(l().prototype,"oncreate",t),(0,r.extend)(l().prototype,"onupdate",t)}(),function(){function t(){this.$(".Post-mentionedBy-preview").removeClass("in").one("transitionend",(function(){$(this).hide()}))}w().prototype.mentionedBy=y().hasMany("mentionedBy"),(0,r.extend)(l().prototype,"oncreate",(function(){var e,n=this,o=this.attrs.post.mentionedBy();if(o&&o.length){var r=$('<ul class="Dropdown-menu Post-mentionedBy-preview fade"/>');this.$().append(r);var s=this.$(),i=this.$(".Post-mentionedBy"),a=function(){!r.hasClass("in")&&r.is(":visible")||(m.render(r[0],o.map((function(e){return m("li",{"data-number":e.number()},p().component({post:e,onclick:t.bind(n)}))}))),r.show().css("top",i.offset().top-s.offset().top+i.outerHeight(!0)).css("left",i.offsetParent().offset().left-s.offset().left).css("max-width",s.width()),setTimeout((function(){return r.off("transitionend").addClass("in")})))};i.add(r).hover((function(){clearTimeout(e),e=setTimeout(a,250)}),(function(){clearTimeout(e),e=setTimeout(t,250)})),this.$().find(".Post-mentionedBy-summary a").hover((function(){r.find('[data-number="'+$(this).data("number")+'"]').addClass("active")}),(function(){r.find("[data-number]").removeClass("active")}))}})),(0,r.extend)(l().prototype,"footerItems",(function(e){var n=this,o=this.attrs.post.mentionedBy();if(o&&o.length){var r=[],s=o.sort((function(t){return t.user()===i().session.user?-1:0})).filter((function(t){var e=t.user();if(-1===r.indexOf(e))return r.push(e),!0})),a=s.length>4,u=s.slice(0,a?3:4).map((function(e){var o=e.user();return m(x(),{href:i().route.post(e),onclick:t.bind(n),"data-number":e.number()},i().session.user===o?i().translator.trans("flarum-mentions.forum.post.you_text"):_()(o))}));if(a){var c=s.length-u.length;u.push(i().translator.trans("flarum-mentions.forum.post.others_text",{count:c}))}e.add("replies",m("div",{className:"Post-mentionedBy"},m("span",{className:"Post-mentionedBy-summary"},A()("fas fa-reply"),i().translator.trans("flarum-mentions.forum.post.mentioned_by"+(s[0].user()===i().session.user?"_self":"")+"_text",{count:u.length,users:M()(u)}))))}}))}(),(0,r.extend)(l().prototype,"actionItems",(function(t){var e=this.attrs.post;e.isHidden()||i().session.user&&!e.discussion().canReply()||t.add("reply",m(N(),{className:"Button Button--link",onclick:function(){return R(e)}},i().translator.trans("flarum-mentions.forum.post.reply_link")))})),(0,r.extend)(l().prototype,"oncreate",(function(){var t=this.attrs.post;if(!(t.isHidden()||i().session.user&&!t.discussion().canReply())){var e=this.$(".Post-body"),n=$('<div class="Post-quoteButtonContainer"></div>'),o=new Q(t),r=function(t){setTimeout((function(){var r=X(e);if(r){o.content=r,m.render(n[0],o.render());var s=window.getSelection().getRangeAt(0).getClientRects(),i=s[0];if(t.clientY<i.bottom&&t.clientX-i.right<i.left-t.clientX)o.showStart(i.left,i.top);else{var a=s[s.length-1];o.showEnd(a.right,a.bottom)}}}),1)};this.$().after(n).on("mouseup",r),"ontouchstart"in window&&document.addEventListener("selectionchange",r,!1)}})),t=$('<div class="ComposerBody-mentionsDropdownContainer"></div>'),e=new ut,(0,r.extend)(G().prototype,"oncreate",(function(){var n=this.$(".TextEditor-editor").wrap('<div class="ComposerBody-mentionsWrapper"></div>');this.navigator=new(it()),this.navigator.when((function(){return e.active})).onUp((function(){return e.navigate(-1)})).onDown((function(){return e.navigate(1)})).onSelect(e.complete.bind(e)).onCancel(e.hide.bind(e)).bindTo(n),n.after(t)})),(0,r.extend)(G().prototype,"buildEditorParams",(function(n){var o,r,s,a,u=this,f=[],l=Array.from(i().store.all("users")),d=new Set(l.map((function(t){return t.id()})));n.inputListeners.push((function(){var n=u.attrs.composer.editor.getSelectionRange(),p=n[0];if(!(n[1]-p>0)){var h=u.attrs.composer.editor.getLastNChars(30);r=0;for(var v=h.length-1;v>=0;v--)if("@"===h.substr(v,1)&&(0==v||/\s/.test(h.substr(v-1,1)))){o=v+1,r=p-h.length+v+1;break}if(e.hide(),e.active=!1,r){s=h.substring(o).toLowerCase(),a=s.match(/^["|“]((?:(?!"#).)+)$/),s=a&&a[1]||s;var g=function(t,n,o,i){void 0===i&&(i="");var a=_()(t);return s&&(a.children=[rt()(a.text,s)],delete a.text),m("button",{className:"PostPreview "+i,onclick:function(){return function(t){u.attrs.composer.editor.replaceBeforeCursor(r-1,t+" "),e.hide()}(n)},onmouseenter:function(){e.setIndex($(this).parent().index())}},m("span",{className:"PostPreview-content"},nt()(t),a," ",o))},y=function(t){return[t.username(),t.displayName()].some((function(t){return t.toLowerCase().substr(0,s.length)===s}))},b=function(){var n=[];if(s&&l.forEach((function(t){y(t)&&n.push(g(t,O(t),"","MentionsDropdown-user"))})),u.attrs.composer.bodyMatches(tt())||u.attrs.composer.bodyMatches(I())){var o=u.attrs.composer.body.attrs,a=o.post,f=a&&a.discussion()||o.discussion;f&&f.posts().filter((function(t){return t&&"comment"===t.contentType()&&(!a||t.number()<a.number())})).sort((function(t,e){return e.createdAt()-t.createdAt()})).filter((function(t){var e=t.user();return e&&y(e)})).splice(0,5).forEach((function(t){var e=t.user();n.push(g(e,O(e,t.id()),[i().translator.trans("flarum-mentions.forum.composer.reply_to_post_text",{number:t.number()})," — ",(0,c.truncate)(t.contentPlain(),200)],"MentionsDropdown-post"))}))}if(n.length){e.items=n,m.render(t[0],e.render()),e.show();var d=u.attrs.composer.editor.getCaretCoordinates(r),p=e.$().outerWidth(),h=e.$().outerHeight(),v=e.$().offsetParent(),b=d.left,w=d.top+15;w+h>v.height()&&(w=d.top-h-15),b+p>v.width()&&(b=v.width()-p),w=Math.max(-(v.offset().top-$(document).scrollTop()),w),b=Math.max(-v.offset().left,b),e.show(b,w)}else e.active=!1,e.hide()};e.active=!0,b(),e.setIndex(0),e.$().scrollTop(0),s.length>1&&i().forum.attribute("canSearchUsers")&&ct(s,f,l,d,e,b)}}}))})),(0,r.extend)(G().prototype,"toolbarItems",(function(t){var e=this;t.add("mention",m(V(),{onclick:function(){return e.attrs.composer.editor.insertAtCursor(" @")},icon:"fas fa-at"},i().translator.trans("flarum-mentions.forum.composer.mention_tooltip")))})),i().notificationComponents.postMentioned=lt,i().notificationComponents.userMentioned=dt,(0,r.extend)(u().prototype,"notificationTypes",(function(t){t.add("postMentioned",{name:"postMentioned",icon:"fas fa-reply",label:i().translator.trans("flarum-mentions.forum.settings.notify_post_mentioned_label")}),t.add("userMentioned",{name:"userMentioned",icon:"fas fa-at",label:i().translator.trans("flarum-mentions.forum.settings.notify_user_mentioned_label")})})),i().routes["user.mentions"]={path:"/u/:username/mentions",component:bt},(0,r.extend)(ht().prototype,"navItems",(function(t){var e=this.user;t.add("mentions",gt().component({href:i().route("user.mentions",{username:e.slug()}),name:"mentions",icon:"fas fa-at"},i().translator.trans("flarum-mentions.forum.user.mentions_link")),80)})),c.getPlainContent.removeSelectors.push("a.PostMention")})),Object.assign($t.compat,xt)})(),module.exports=e})();
//# sourceMappingURL=forum.js.map