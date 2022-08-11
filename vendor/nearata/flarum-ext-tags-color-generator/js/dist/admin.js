(()=>{var o={5:function(o,r,e){var t;o=e.nmd(o),t=function(){var o=null,r={};s("monochrome",null,[[0,0],[100,0]]),s("red",[-26,18],[[20,100],[30,92],[40,89],[50,85],[60,78],[70,70],[80,60],[90,55],[100,50]]),s("orange",[18,46],[[20,100],[30,93],[40,88],[50,86],[60,85],[70,70],[100,70]]),s("yellow",[46,62],[[25,100],[40,94],[50,89],[60,86],[70,84],[80,82],[90,80],[100,75]]),s("green",[62,178],[[30,100],[40,90],[50,85],[60,81],[70,74],[80,64],[90,50],[100,40]]),s("blue",[178,257],[[20,100],[30,86],[40,80],[50,74],[60,60],[70,52],[80,44],[90,39],[100,35]]),s("purple",[257,282],[[20,100],[30,87],[40,79],[50,70],[60,65],[70,59],[80,52],[90,45],[100,42]]),s("pink",[282,334],[[20,100],[30,90],[40,86],[60,84],[80,80],[90,75],[100,73]]);var e=[];function t(o){if(e.length>0){var t=i(u=function(o){if(isNaN(o)){if("string"==typeof o)if(r[o]){var e=r[o];if(e.hueRange)return e.hueRange}else if(o.match(/^#?([0-9A-F]{3}|[0-9A-F]{6})$/i))return l(m(o)[0]).hueRange}else{var t=parseInt(o);if(t<360&&t>0)return l(o).hueRange}return[0,360]}(o.hue)),n=(u[1]-u[0])/e.length,a=parseInt((t-u[0])/n);return!0===e[a]?a=(a+2)%e.length:e[a]=!0,(t=i(u=[(u[0]+a*n)%359,(u[0]+(a+1)*n)%359]))<0&&(t=360+t),t}var u;return(t=i(u=function(o){if("number"==typeof parseInt(o)){var e=parseInt(o);if(e<360&&e>0)return[e,e]}if("string"==typeof o)if(r[o]){var t=r[o];if(t.hueRange)return t.hueRange}else if(o.match(/^#?([0-9A-F]{3}|[0-9A-F]{6})$/i)){var n=m(o)[0];return[n,n]}return[0,360]}(o.hue)))<0&&(t=360+t),t}function n(o,r){if("monochrome"===r.hue)return 0;if("random"===r.luminosity)return i([0,100]);var e=function(o){return l(o).saturationRange}(o),t=e[0],n=e[1];switch(r.luminosity){case"bright":t=55;break;case"dark":t=n-10;break;case"light":n=55}return i([t,n])}function a(o,r,e){var t=function(o,r){for(var e=l(o).lowerBounds,t=0;t<e.length-1;t++){var n=e[t][0],a=e[t][1],u=e[t+1][0],i=e[t+1][1];if(r>=n&&r<=u){var s=(i-a)/(u-n);return s*r+(a-s*n)}}return 0}(o,r),n=100;switch(e.luminosity){case"dark":n=t+20;break;case"light":t=(n+t)/2;break;case"random":t=0,n=100}return i([t,n])}function u(o,r){switch(r.format){case"hsvArray":return o;case"hslArray":return h(o);case"hsl":var e=h(o);return"hsl("+e[0]+", "+e[1]+"%, "+e[2]+"%)";case"hsla":var t=h(o),n=r.alpha||Math.random();return"hsla("+t[0]+", "+t[1]+"%, "+t[2]+"%, "+n+")";case"rgbArray":return c(o);case"rgb":return"rgb("+c(o).join(", ")+")";case"rgba":var a=c(o);return n=r.alpha||Math.random(),"rgba("+a.join(", ")+", "+n+")";default:return function(o){var r=c(o);function e(o){var r=o.toString(16);return 1==r.length?"0"+r:r}return"#"+e(r[0])+e(r[1])+e(r[2])}(o)}}function l(o){for(var e in o>=334&&o<=360&&(o-=360),r){var t=r[e];if(t.hueRange&&o>=t.hueRange[0]&&o<=t.hueRange[1])return r[e]}return"Color not found"}function i(r){if(null===o){var e=Math.random();return e+=.618033988749895,e%=1,Math.floor(r[0]+e*(r[1]+1-r[0]))}var t=r[1]||1,n=r[0]||0,a=(o=(9301*o+49297)%233280)/233280;return Math.floor(n+a*(t-n))}function s(o,e,t){var n=t[0][0],a=t[t.length-1][0],u=t[t.length-1][1],l=t[0][1];r[o]={hueRange:e,lowerBounds:t,saturationRange:[n,a],brightnessRange:[u,l]}}function c(o){var r=o[0];0===r&&(r=1),360===r&&(r=359),r/=360;var e=o[1]/100,t=o[2]/100,n=Math.floor(6*r),a=6*r-n,u=t*(1-e),l=t*(1-a*e),i=t*(1-(1-a)*e),s=256,c=256,m=256;switch(n){case 0:s=t,c=i,m=u;break;case 1:s=l,c=t,m=u;break;case 2:s=u,c=t,m=i;break;case 3:s=u,c=l,m=t;break;case 4:s=i,c=u,m=t;break;case 5:s=t,c=u,m=l}return[Math.floor(255*s),Math.floor(255*c),Math.floor(255*m)]}function m(o){o=3===(o=o.replace(/^#/,"")).length?o.replace(/(.)/g,"$1$1"):o;var r=parseInt(o.substr(0,2),16)/255,e=parseInt(o.substr(2,2),16)/255,t=parseInt(o.substr(4,2),16)/255,n=Math.max(r,e,t),a=n-Math.min(r,e,t),u=n?a/n:0;switch(n){case r:return[(e-t)/a%6*60||0,u,n];case e:return[60*((t-r)/a+2)||0,u,n];case t:return[60*((r-e)/a+4)||0,u,n]}}function h(o){var r=o[0],e=o[1]/100,t=o[2]/100,n=(2-e)*t;return[r,Math.round(e*t/(n<1?n:2-n)*1e4)/100,n/2*100]}return function r(l){if(void 0!==(l=l||{}).seed&&null!==l.seed&&l.seed===parseInt(l.seed,10))o=l.seed;else if("string"==typeof l.seed)o=function(o){for(var r=0,e=0;e!==o.length&&!(r>=Number.MAX_SAFE_INTEGER);e++)r+=o.charCodeAt(e);return r}(l.seed);else{if(void 0!==l.seed&&null!==l.seed)throw new TypeError("The seed value must be an integer or string");o=null}var i,s;if(null!==l.count&&void 0!==l.count){for(var c=l.count,m=[],h=0;h<l.count;h++)e.push(!1);for(l.count=null;c>m.length;){var p=r(l);null!==o&&(l.seed=o),m.push(p)}return l.count=c,m}return u([i=t(l),s=n(i,l),a(i,s,l)],l)}}(),o&&o.exports&&(r=o.exports=t),r.randomColor=t}},r={};function e(t){var n=r[t];if(void 0!==n)return n.exports;var a=r[t]={id:t,loaded:!1,exports:{}};return o[t].call(a.exports,a,a.exports,e),a.loaded=!0,a.exports}e.n=o=>{var r=o&&o.__esModule?()=>o.default:()=>o;return e.d(r,{a:r}),r},e.d=(o,r)=>{for(var t in r)e.o(r,t)&&!e.o(o,t)&&Object.defineProperty(o,t,{enumerable:!0,get:r[t]})},e.o=(o,r)=>Object.prototype.hasOwnProperty.call(o,r),e.r=o=>{"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(o,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(o,"__esModule",{value:!0})},e.nmd=o=>(o.paths=[],o.children||(o.children=[]),o);var t={};(()=>{"use strict";e.r(t);const o=flarum.core.compat["common/extend"],r=flarum.core.compat["admin/app"];var n=e.n(r);const a=flarum.core.compat["common/components/Button"];var u=e.n(a);const l=flarum.core.compat["common/components/ColorPreviewInput"];var i=e.n(l);const s=flarum.core.compat["common/components/Select"];var c=e.n(s);const h=flarum.core.compat["tags/admin/components/EditTagModal"];var p=e.n(h),f=e(5),d=e.n(f),g=function(o){return n().translator.trans("nearata-tags-color-generator.admin."+o)};n().initializers.add("nearata-tags-color-generator",(function(){(0,o.extend)(p().prototype,"oninit",(function(){this.luminosity="random",this.hue="random",this.textColor=this.tag.name()&&this.tag.attribute("textColor")||"",this.isCustomColor=this.tag.name()&&!this.textColor.startsWith("theme")||!1,this.textColorSelect="default",this.isCustomColor?this.textColorSelect="custom":this.textColorSelect=this.textColor})),(0,o.extend)(p().prototype,"submitData",(function(o){o.textColor=this.textColor})),(0,o.extend)(p().prototype,"fields",(function(o){var r=this;o.add("colorLuminosity",m(".Form-group",[m("label",g("color_luminosity_label")),m(c(),{options:{random:g("color_luminosity_options.random"),light:g("color_luminosity_options.light"),bright:g("color_luminosity_options.bright"),dark:g("color_luminosity_options.dark")},value:this.luminosity,onchange:function(o){return r.luminosity=o}})]),20),o.add("colorHue",m(".Form-group",[m("label",g("color_hue_label")),m(c(),{options:{random:g("color_hue_options.random"),red:g("color_hue_options.red"),orange:g("color_hue_options.orange"),yellow:g("color_hue_options.yellow"),green:g("color_hue_options.green"),blue:g("color_hue_options.blue"),purple:g("color_hue_options.purple"),pink:g("color_hue_options.pink"),monochrome:g("color_hue_options.monochrome")},value:this.hue,onchange:function(o){return r.hue=o}})]),20),o.add("generateRandomColor",m(".Form-group",[m(u(),{class:"Button Button--primary Button--block",onclick:function(){return r.color(d()({luminosity:r.luminosity,hue:r.hue}))}},g("generate_color_button"))]),20),o.add("textColor",m(".Form-group",[m(".Form-group",[m("label",g("text_color.label")),m(c(),{options:{default:g("text_color.options.default"),themePrimaryColor:g("text_color.options.theme_primary_color"),themeSecondaryColor:g("text_color.options.theme_secondary_color"),custom:g("text_color.options.custom")},value:this.textColorSelect,onchange:function(o){r.textColorSelect=o,"custom"===o?(r.textColor="",r.isCustomColor=!0):(r.textColor=o,r.isCustomColor=!1)}})]),this.isCustomColor?m(".Form-group",[m("label",g("text_color.custom_label")),m(i(),{placeholder:"#aaaaaa",value:this.textColor,oninput:function(o){return r.textColor=o.target.value}})]):null]),20)}))}))})(),module.exports=t})();
//# sourceMappingURL=admin.js.map