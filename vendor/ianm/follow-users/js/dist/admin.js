module.exports=function(e){var n={};function o(t){if(n[t])return n[t].exports;var r=n[t]={i:t,l:!1,exports:{}};return e[t].call(r.exports,r,r.exports,o),r.l=!0,r.exports}return o.m=e,o.c=n,o.d=function(e,n,t){o.o(e,n)||Object.defineProperty(e,n,{enumerable:!0,get:t})},o.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},o.t=function(e,n){if(1&n&&(e=o(e)),8&n)return e;if(4&n&&"object"==typeof e&&e&&e.__esModule)return e;var t=Object.create(null);if(o.r(t),Object.defineProperty(t,"default",{enumerable:!0,value:e}),2&n&&"string"!=typeof e)for(var r in e)o.d(t,r,function(n){return e[n]}.bind(null,r));return t},o.n=function(e){var n=e&&e.__esModule?function(){return e.default}:function(){return e};return o.d(n,"a",n),n},o.o=function(e,n){return Object.prototype.hasOwnProperty.call(e,n)},o.p="",o(o.s=25)}({1:function(e,n){e.exports=flarum.extensions["fof-follow-tags"]},2:function(e,n){e.exports=flarum.core.compat["common/app"]},25:function(e,n,o){"use strict";o.r(n);var t=o(2),r=o.n(t),i=o(1),l=o(5);r.a.initializers.add("ianm-follow-users",(function(){r.a.extensionData.for("ianm-follow-users").registerPermission({icon:"fas fa-user-friends",label:r.a.translator.trans("ianm-follow-users.admin.permissions.be_followed_label"),permission:"user.beFollowed"},"reply",95),r.a.initializers.has("fof/follow-tags")&&(i.utils.followingPageOptions=l.a,i.utils.followingPageOptions("admin.settings"))}))},5:function(e,n,o){"use strict";var t=o(1),r=t.utils.followingPageOptions;n.a=function(e){var n=r(e);return n.users=app.translator.trans("ianm-follow-users.lib.following_link"),n}}});
//# sourceMappingURL=admin.js.map