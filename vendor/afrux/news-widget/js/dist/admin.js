module.exports=function(t){var n={};function e(i){if(n[i])return n[i].exports;var r=n[i]={i:i,l:!1,exports:{}};return t[i].call(r.exports,r,r.exports,e),r.l=!0,r.exports}return e.m=t,e.c=n,e.d=function(t,n,i){e.o(t,n)||Object.defineProperty(t,n,{enumerable:!0,get:i})},e.r=function(t){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},e.t=function(t,n){if(1&n&&(t=e(t)),8&n)return t;if(4&n&&"object"==typeof t&&t&&t.__esModule)return t;var i=Object.create(null);if(e.r(i),Object.defineProperty(i,"default",{enumerable:!0,value:t}),2&n&&"string"!=typeof t)for(var r in t)e.d(i,r,function(n){return t[n]}.bind(null,r));return i},e.n=function(t){var n=t&&t.__esModule?function(){return t.default}:function(){return t};return e.d(n,"a",n),n},e.o=function(t,n){return Object.prototype.hasOwnProperty.call(t,n)},e.p="",e(e.s=11)}([function(t,n){t.exports=flarum.core.compat["admin/app"]},function(t,n){t.exports=flarum.core.compat["extensions/afrux-forum-widgets-core/common/extend/Widgets"]},function(t,n){t.exports=flarum.core.compat["common/app"]},function(t,n){t.exports=flarum.core.compat["common/helpers/icon"]},function(t,n){t.exports=flarum.core.compat["common/utils/classList"]},function(t,n){t.exports=flarum.core.compat["common/utils/Stream"]},function(t,n){t.exports=flarum.core.compat["extensions/afrux-forum-widgets-core/common/components/Widget"]},function(t,n,e){"use strict";var i=e(1),r=e.n(i);function o(t,n){return(o=Object.setPrototypeOf||function(t,n){return t.__proto__=n,t})(t,n)}var s=e(2),a=e.n(s),u=e(3),c=e.n(u),l=e(4),f=e.n(l),d=e(5),p=e.n(d),g=e(6),w=function(t){var n,e;function i(){for(var n,e=arguments.length,i=new Array(e),r=0;r<e;r++)i[r]=arguments[r];return(n=t.call.apply(t,[this].concat(i))||this).newslines=void 0,n.line=void 0,n.switching=void 0,n}e=t,(n=i).prototype=Object.create(e.prototype),n.prototype.constructor=n,o(n,e);var r=i.prototype;return r.oninit=function(n){t.prototype.oninit.call(this,n),this.newslines=a.a.forum.attribute("afrux-news-widget.lines"),this.line=p()({index:0,text:this.newslines[0]}),this.switching=!1},r.className=function(){return"Afrux-NewsWidget"},r.icon=function(){return"fas fa-bullhorn"},r.title=function(){return""},r.content=function(){var t,n=this;return this.newslines.length>1&&!this.switching&&(this.switching=!0,setTimeout((function(){var t=(n.line().index+1)%n.newslines.length;n.switching=!1,n.line({index:t,text:n.newslines[t]}),m.redraw()}),7e3)),this.newslines.length>1&&(t=this.newslines[(this.line().index-1+this.newslines.length)%this.newslines.length]),m("div",{className:"Afrux-NewsWidget-content"},m("div",{className:"Afrux-NewsWidget-icon"},c()("fas fa-bullhorn")),m("div",{className:"Afrux-NewsWidget-line-container"},this.newslines.map((function(e,i){return m("div",{className:f()(["Afrux-NewsWidget-line",n.line().index===i?"Afrux-NewsWidget-line--current":"",t===e?"Afrux-NewsWidget-line--previous":""]),key:i},m.trust(e))}))))},i}(e.n(g).a);n.a=function(t){(new r.a).add({key:"news",component:w,isDisabled:function(){return!t.forum.attribute("afrux-news-widget.lines").length},isUnique:!0,placement:"top",position:1}).extend(t,"afrux-news-widget")}},function(t,n){t.exports=flarum.core.compat["common/components/Button"]},function(t,n){t.exports=flarum.core.compat["common/components/Alert"]},,function(t,n,e){"use strict";e.r(n);var i=e(0),r=e.n(i),o=e(8),s=e.n(o),a=e(7),u=e(9),c=e.n(u);r.a.initializers.add("afrux/news-widget",(function(){Object(a.a)(r.a);var t="afrux-news-widget.lines";r.a.extensionData.for("afrux-news-widget").registerSetting((function(){var n=this;return m("div",{className:"Form-group Afrux-NewsWidget-htmlWarning"},m(s.a,{className:"Button",onclick:function(){var e=JSON.parse(n.setting(t)()||"[]");n.setting(t)(JSON.stringify([].concat(e,[""])))}},r.a.translator.trans("afrux-news-widget.admin.settings.add_line")),m(c.a,{dismissible:!1},r.a.translator.trans("afrux-news-widget.admin.settings.html_warning")))})).registerSetting((function(){var n=this,e=JSON.parse(this.setting(t)()||"[]");if(e.length)return m("div",{className:"Form-group"},m("label",null,r.a.translator.trans("afrux-news-widget.admin.settings.lines")),e.map((function(i,r){return m("div",{className:"Afrux-NewsWidget-lineSetting"},m("textarea",{className:"FormControl",oninput:function(i){e[r]=i.target.value,n.setting(t)(JSON.stringify([].concat(e)))}},i),m(s.a,{className:"Button Button--icon",icon:"fas fa-trash",onclick:function(){n.setting(t)(JSON.stringify([].concat(e.filter((function(t,n){return n!==r})))))}}))})))}))}))}]);
//# sourceMappingURL=admin.js.map