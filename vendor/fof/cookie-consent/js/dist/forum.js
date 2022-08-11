(()=>{var e={446:()=>{!function(e){if(!e.hasInitialised){var t={escapeRegExp:function(e){return e.replace(/[\-\[\]\/\{\}\(\)\*\+\?\.\\\^\$\|]/g,"\\$&")},hasClass:function(e,t){var o=" ";return 1===e.nodeType&&(o+e.className+o).replace(/[\n\t]/g,o).indexOf(o+t+o)>=0},addClass:function(e,t){e.className+=" "+t},removeClass:function(e,t){var o=new RegExp("\\b"+this.escapeRegExp(t)+"\\b");e.className=e.className.replace(o,"")},interpolateString:function(e,t){return e.replace(/{{([a-z][a-z0-9\-_]*)}}/gi,(function(e){return t(arguments[1])||""}))},getCookie:function(e){var t=("; "+document.cookie).split("; "+e+"=");return t.length<2?void 0:t.pop().split(";").shift()},setCookie:function(e,t,o,i,n,s){var r=new Date;r.setHours(r.getHours()+24*(o||365));var a=[e+"="+t,"expires="+r.toUTCString(),"path="+(n||"/")];i&&a.push("domain="+i),s&&a.push("secure"),document.cookie=a.join(";")},deepExtend:function(e,t){for(var o in t)t.hasOwnProperty(o)&&(o in e&&this.isPlainObject(e[o])&&this.isPlainObject(t[o])?this.deepExtend(e[o],t[o]):e[o]=t[o]);return e},throttle:function(e,t){var o=!1;return function(){o||(e.apply(this,arguments),o=!0,setTimeout((function(){o=!1}),t))}},hash:function(e){var t,o,i=0;if(0===e.length)return i;for(t=0,o=e.length;t<o;++t)i=(i<<5)-i+e.charCodeAt(t),i|=0;return i},normaliseHex:function(e){return"#"==e[0]&&(e=e.substr(1)),3==e.length&&(e=e[0]+e[0]+e[1]+e[1]+e[2]+e[2]),e},getContrast:function(e){return e=this.normaliseHex(e),(299*parseInt(e.substr(0,2),16)+587*parseInt(e.substr(2,2),16)+114*parseInt(e.substr(4,2),16))/1e3>=128?"#000":"#fff"},getLuminance:function(e){var t=parseInt(this.normaliseHex(e),16),o=38+(t>>16),i=38+(t>>8&255),n=38+(255&t);return"#"+(16777216+65536*(o<255?o<1?0:o:255)+256*(i<255?i<1?0:i:255)+(n<255?n<1?0:n:255)).toString(16).slice(1)},isMobile:function(){return/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)},isPlainObject:function(e){return"object"==typeof e&&null!==e&&e.constructor==Object},traverseDOMPath:function(e,o){return e&&e.parentNode?t.hasClass(e,o)?e:this.traverseDOMPath(e.parentNode,o):null}};e.status={deny:"deny",allow:"allow",dismiss:"dismiss"},e.transitionEnd=function(){var e=document.createElement("div"),t={t:"transitionend",OT:"oTransitionEnd",msT:"MSTransitionEnd",MozT:"transitionend",WebkitT:"webkitTransitionEnd"};for(var o in t)if(t.hasOwnProperty(o)&&void 0!==e.style[o+"ransition"])return t[o];return""}(),e.hasTransition=!!e.transitionEnd;var o=Object.keys(e.status).map(t.escapeRegExp);e.customStyles={},e.Popup=function(){var i={enabled:!0,container:null,cookie:{name:"cookieconsent_status",path:"/",domain:"",expiryDays:365,secure:!1},onPopupOpen:function(){},onPopupClose:function(){},onInitialise:function(e){},onStatusChange:function(e,t){},onRevokeChoice:function(){},onNoCookieLaw:function(e,t){},content:{header:"Cookies used on the website!",message:"This website uses cookies to ensure you get the best experience on our website.",dismiss:"Got it!",allow:"Allow cookies",deny:"Decline",link:"Learn more",href:"https://www.cookiesandyou.com",close:"&#x274c;",target:"_blank",policy:"Cookie Policy"},elements:{header:'<span class="cc-header">{{header}}</span>&nbsp;',message:'<span id="cookieconsent:desc" class="cc-message">{{message}}</span>',messagelink:'<span id="cookieconsent:desc" class="cc-message">{{message}} <a aria-label="learn more about cookies" role=button tabindex="0" class="cc-link" href="{{href}}" rel="noopener noreferrer nofollow" target="{{target}}">{{link}}</a></span>',dismiss:'<a aria-label="dismiss cookie message" role=button tabindex="0" class="cc-btn cc-dismiss">{{dismiss}}</a>',allow:'<a aria-label="allow cookies" role=button tabindex="0"  class="cc-btn cc-allow">{{allow}}</a>',deny:'<a aria-label="deny cookies" role=button tabindex="0" class="cc-btn cc-deny">{{deny}}</a>',link:'<a aria-label="learn more about cookies" role=button tabindex="0" class="cc-link" href="{{href}}" rel="noopener noreferrer nofollow" target="{{target}}">{{link}}</a>',close:'<span aria-label="dismiss cookie message" role=button tabindex="0" class="cc-close">{{close}}</span>'},window:'<div role="dialog" aria-live="polite" aria-label="cookieconsent" aria-describedby="cookieconsent:desc" class="cc-window {{classes}}">\x3c!--googleoff: all--\x3e{{children}}\x3c!--googleon: all--\x3e</div>',revokeBtn:'<div class="cc-revoke {{classes}}">{{policy}}</div>',compliance:{info:'<div class="cc-compliance">{{dismiss}}</div>',"opt-in":'<div class="cc-compliance cc-highlight">{{deny}}{{allow}}</div>',"opt-out":'<div class="cc-compliance cc-highlight">{{deny}}{{allow}}</div>'},type:"info",layouts:{basic:"{{messagelink}}{{compliance}}","basic-close":"{{messagelink}}{{compliance}}{{close}}","basic-header":"{{header}}{{message}}{{link}}{{compliance}}"},layout:"basic",position:"bottom",theme:"block",static:!1,palette:null,revokable:!1,animateRevokable:!0,showLink:!0,dismissOnScroll:!1,dismissOnTimeout:!1,dismissOnWindowClick:!1,ignoreClicksFrom:["cc-revoke","cc-btn"],autoOpen:!0,autoAttach:!0,whitelistPage:[],blacklistPage:[],overrideHTML:null};function n(){this.initialise.apply(this,arguments)}function s(e){this.openingTimeout=null,t.removeClass(e,"cc-invisible")}function r(t){t.style.display="none",t.removeEventListener(e.transitionEnd,this.afterTransition),this.afterTransition=null}function a(){var e=this.options.position.split("-"),t=[];return e.forEach((function(e){t.push("cc-"+e)})),t}function c(i){var n=this.options,s=document.createElement("div"),r=n.container&&1===n.container.nodeType?n.container:document.body;s.innerHTML=i;var a=s.children[0];return a.style.display="none",t.hasClass(a,"cc-window")&&e.hasTransition&&t.addClass(a,"cc-invisible"),this.onButtonClick=function(i){var n=t.traverseDOMPath(i.target,"cc-btn")||i.target;if(t.hasClass(n,"cc-btn")){var s=n.className.match(new RegExp("\\bcc-("+o.join("|")+")\\b")),r=s&&s[1]||!1;r&&(this.setStatus(r),this.close(!0))}t.hasClass(n,"cc-close")&&(this.setStatus(e.status.dismiss),this.close(!0)),t.hasClass(n,"cc-revoke")&&this.revokeChoice()}.bind(this),a.addEventListener("click",this.onButtonClick),n.autoAttach&&(r.firstChild?r.insertBefore(a,r.firstChild):r.appendChild(a)),a}function l(e){return"000000"==(e=t.normaliseHex(e))?"#222":t.getLuminance(e)}function u(e,t){for(var o=0,i=e.length;o<i;++o){var n=e[o];if(n instanceof RegExp&&n.test(t)||"string"==typeof n&&n.length&&n===t)return!0}return!1}return n.prototype.initialise=function(o){this.options&&this.destroy(),t.deepExtend(this.options={},i),t.isPlainObject(o)&&t.deepExtend(this.options,o),function(){var t=this.options.onInitialise.bind(this);if(!window.navigator.cookieEnabled)return t(e.status.deny),!0;if(window.CookiesOK||window.navigator.CookiesOK)return t(e.status.allow),!0;var o=Object.keys(e.status),i=this.getStatus(),n=o.indexOf(i)>=0;return n&&t(i),n}.call(this)&&(this.options.enabled=!1),u(this.options.blacklistPage,location.pathname)&&(this.options.enabled=!1),u(this.options.whitelistPage,location.pathname)&&(this.options.enabled=!0);var n=this.options.window.replace("{{classes}}",function(){var o=this.options,i="top"==o.position||"bottom"==o.position?"banner":"floating";t.isMobile()&&(i="floating");var n=["cc-"+i,"cc-type-"+o.type,"cc-theme-"+o.theme];return o.static&&n.push("cc-static"),n.push.apply(n,a.call(this)),function(o){var i=t.hash(JSON.stringify(o)),n="cc-color-override-"+i,s=t.isPlainObject(o);return this.customStyleSelector=s?n:null,s&&function(o,i,n){if(e.customStyles[o])++e.customStyles[o].references;else{var s={},r=i.popup,a=i.button,c=i.highlight;r&&(r.text=r.text?r.text:t.getContrast(r.background),r.link=r.link?r.link:r.text,s[n+".cc-window"]=["color: "+r.text,"background-color: "+r.background],s[n+".cc-revoke"]=["color: "+r.text,"background-color: "+r.background],s[n+" .cc-link,"+n+" .cc-link:active,"+n+" .cc-link:visited"]=["color: "+r.link],a&&(a.text=a.text?a.text:t.getContrast(a.background),a.border=a.border?a.border:"transparent",s[n+" .cc-btn"]=["color: "+a.text,"border-color: "+a.border,"background-color: "+a.background],a.padding&&s[n+" .cc-btn"].push("padding: "+a.padding),"transparent"!=a.background&&(s[n+" .cc-btn:hover, "+n+" .cc-btn:focus"]=["background-color: "+(a.hover||l(a.background))]),c?(c.text=c.text?c.text:t.getContrast(c.background),c.border=c.border?c.border:"transparent",s[n+" .cc-highlight .cc-btn:first-child"]=["color: "+c.text,"border-color: "+c.border,"background-color: "+c.background]):s[n+" .cc-highlight .cc-btn:first-child"]=["color: "+r.text]));var u=document.createElement("style");document.head.appendChild(u),e.customStyles[o]={references:1,element:u.sheet};var h=-1;for(var p in s)s.hasOwnProperty(p)&&u.sheet.insertRule(p+"{"+s[p].join(";")+"}",++h)}}(i,o,"."+n),s}.call(this,this.options.palette),this.customStyleSelector&&n.push(this.customStyleSelector),n}.call(this).join(" ")).replace("{{children}}",function(){var e={},o=this.options;o.showLink||(o.elements.link="",o.elements.messagelink=o.elements.message),Object.keys(o.elements).forEach((function(i){e[i]=t.interpolateString(o.elements[i],(function(e){var t=o.content[e];return e&&"string"==typeof t&&t.length?t:""}))}));var i=o.compliance[o.type];i||(i=o.compliance.info),e.compliance=t.interpolateString(i,(function(t){return e[t]}));var n=o.layouts[o.layout];return n||(n=o.layouts.basic),t.interpolateString(n,(function(t){return e[t]}))}.call(this)),s=this.options.overrideHTML;if("string"==typeof s&&s.length&&(n=s),this.options.static){var r=c.call(this,'<div class="cc-grower">'+n+"</div>");r.style.display="",this.element=r.firstChild,this.element.style.display="none",t.addClass(this.element,"cc-invisible")}else this.element=c.call(this,n);(function(){var o=this.setStatus.bind(this),i=this.close.bind(this),n=this.options.dismissOnTimeout;"number"==typeof n&&n>=0&&(this.dismissTimeout=window.setTimeout((function(){o(e.status.dismiss),i(!0)}),Math.floor(n)));var s=this.options.dismissOnScroll;if("number"==typeof s&&s>=0){var r=function t(n){window.pageYOffset>Math.floor(s)&&(o(e.status.dismiss),i(!0),window.removeEventListener("scroll",t),this.onWindowScroll=null)};this.options.enabled&&(this.onWindowScroll=r,window.addEventListener("scroll",r))}var a=this.options.dismissOnWindowClick,c=this.options.ignoreClicksFrom;if(a){var l=function(n){for(var s=!1,r=n.path.length,a=c.length,u=0;u<r;u++)if(!s)for(var h=0;h<a;h++)s||(s=t.hasClass(n.path[u],c[h]));s||(o(e.status.dismiss),i(!0),window.removeEventListener("click",l),window.removeEventListener("touchend",l),this.onWindowClick=null)}.bind(this);this.options.enabled&&(this.onWindowClick=l,window.addEventListener("click",l),window.addEventListener("touchend",l))}}).call(this),function(){if("info"!=this.options.type&&(this.options.revokable=!0),t.isMobile()&&(this.options.animateRevokable=!1),this.options.revokable){var e=a.call(this);this.options.animateRevokable&&e.push("cc-animate"),this.customStyleSelector&&e.push(this.customStyleSelector);var o=this.options.revokeBtn.replace("{{classes}}",e.join(" ")).replace("{{policy}}",this.options.content.policy);this.revokeBtn=c.call(this,o);var i=this.revokeBtn;if(this.options.animateRevokable){var n=t.throttle((function(e){var o=!1,n=window.innerHeight-20;t.hasClass(i,"cc-top")&&e.clientY<20&&(o=!0),t.hasClass(i,"cc-bottom")&&e.clientY>n&&(o=!0),o?t.hasClass(i,"cc-active")||t.addClass(i,"cc-active"):t.hasClass(i,"cc-active")&&t.removeClass(i,"cc-active")}),200);this.onMouseMove=n,window.addEventListener("mousemove",n)}}}.call(this),this.options.autoOpen&&this.autoOpen()},n.prototype.destroy=function(){this.onButtonClick&&this.element&&(this.element.removeEventListener("click",this.onButtonClick),this.onButtonClick=null),this.dismissTimeout&&(clearTimeout(this.dismissTimeout),this.dismissTimeout=null),this.onWindowScroll&&(window.removeEventListener("scroll",this.onWindowScroll),this.onWindowScroll=null),this.onWindowClick&&(window.removeEventListener("click",this.onWindowClick),this.onWindowClick=null),this.onMouseMove&&(window.removeEventListener("mousemove",this.onMouseMove),this.onMouseMove=null),this.element&&this.element.parentNode&&this.element.parentNode.removeChild(this.element),this.element=null,this.revokeBtn&&this.revokeBtn.parentNode&&this.revokeBtn.parentNode.removeChild(this.revokeBtn),this.revokeBtn=null,function(o){if(t.isPlainObject(o)){var i=t.hash(JSON.stringify(o)),n=e.customStyles[i];if(n&&!--n.references){var s=n.element.ownerNode;s&&s.parentNode&&s.parentNode.removeChild(s),e.customStyles[i]=null}}}(this.options.palette),this.options=null},n.prototype.open=function(t){if(this.element)return this.isOpen()||(e.hasTransition?this.fadeIn():this.element.style.display="",this.options.revokable&&this.toggleRevokeButton(),this.options.onPopupOpen.call(this)),this},n.prototype.close=function(t){if(this.element)return this.isOpen()&&(e.hasTransition?this.fadeOut():this.element.style.display="none",t&&this.options.revokable&&this.toggleRevokeButton(!0),this.options.onPopupClose.call(this)),this},n.prototype.fadeIn=function(){var o=this.element;if(e.hasTransition&&o&&(this.afterTransition&&r.call(this,o),t.hasClass(o,"cc-invisible"))){if(o.style.display="",this.options.static){var i=this.element.clientHeight;this.element.parentNode.style.maxHeight=i+"px"}this.openingTimeout=setTimeout(s.bind(this,o),20)}},n.prototype.fadeOut=function(){var o=this.element;e.hasTransition&&o&&(this.openingTimeout&&(clearTimeout(this.openingTimeout),s.bind(this,o)),t.hasClass(o,"cc-invisible")||(this.options.static&&(this.element.parentNode.style.maxHeight=""),this.afterTransition=r.bind(this,o),o.addEventListener(e.transitionEnd,this.afterTransition),t.addClass(o,"cc-invisible")))},n.prototype.isOpen=function(){return this.element&&""==this.element.style.display&&(!e.hasTransition||!t.hasClass(this.element,"cc-invisible"))},n.prototype.toggleRevokeButton=function(e){this.revokeBtn&&(this.revokeBtn.style.display=e?"":"none")},n.prototype.revokeChoice=function(e){this.options.enabled=!0,this.clearStatus(),this.options.onRevokeChoice.call(this),e||this.autoOpen()},n.prototype.hasAnswered=function(t){return Object.keys(e.status).indexOf(this.getStatus())>=0},n.prototype.hasConsented=function(t){var o=this.getStatus();return o==e.status.allow||o==e.status.dismiss},n.prototype.autoOpen=function(e){!this.hasAnswered()&&this.options.enabled?this.open():this.hasAnswered()&&this.options.revokable&&this.toggleRevokeButton(!0)},n.prototype.setStatus=function(o){var i=this.options.cookie,n=t.getCookie(i.name),s=Object.keys(e.status).indexOf(n)>=0;Object.keys(e.status).indexOf(o)>=0?(t.setCookie(i.name,o,i.expiryDays,i.domain,i.path,i.secure),this.options.onStatusChange.call(this,o,s)):this.clearStatus()},n.prototype.getStatus=function(){return t.getCookie(this.options.cookie.name)},n.prototype.clearStatus=function(){var e=this.options.cookie;t.setCookie(e.name,"",-1,e.domain,e.path)},n}(),e.Location=function(){var e={timeout:5e3,services:["ipinfo"],serviceDefinitions:{ipinfo:function(){return{url:"//ipinfo.io",headers:["Accept: application/json"],callback:function(e,t){try{var o=JSON.parse(t);return o.error?s(o):{code:o.country}}catch(e){return s({error:"Invalid response ("+e+")"})}}}},ipinfodb:function(e){return{url:"//api.ipinfodb.com/v3/ip-country/?key={api_key}&format=json&callback={callback}",isScript:!0,callback:function(e,t){try{var o=JSON.parse(t);return"ERROR"==o.statusCode?s({error:o.statusMessage}):{code:o.countryCode}}catch(e){return s({error:"Invalid response ("+e+")"})}}}},maxmind:function(){return{url:"//js.maxmind.com/js/apis/geoip2/v2.1/geoip2.js",isScript:!0,callback:function(e){window.geoip2?geoip2.country((function(t){try{e({code:t.country.iso_code})}catch(t){e(s(t))}}),(function(t){e(s(t))})):e(new Error("Unexpected response format. The downloaded script should have exported `geoip2` to the global scope"))}}}}};function o(o){t.deepExtend(this.options={},e),t.isPlainObject(o)&&t.deepExtend(this.options,o),this.currentServiceIndex=-1}function i(e,t,o){var i,n=document.createElement("script");n.type="text/"+(e.type||"javascript"),n.src=e.src||e,n.async=!1,n.onreadystatechange=n.onload=function(){var e=n.readyState;clearTimeout(i),t.done||e&&!/loaded|complete/.test(e)||(t.done=!0,t(),n.onreadystatechange=n.onload=null)},document.body.appendChild(n),i=setTimeout((function(){t.done=!0,t(),n.onreadystatechange=n.onload=null}),o)}function n(e,t,o,i,n){var s=new(window.XMLHttpRequest||window.ActiveXObject)("MSXML2.XMLHTTP.3.0");if(s.open(i?"POST":"GET",e,1),s.setRequestHeader("Content-type","application/x-www-form-urlencoded"),Array.isArray(n))for(var r=0,a=n.length;r<a;++r){var c=n[r].split(":",2);s.setRequestHeader(c[0].replace(/^\s+|\s+$/g,""),c[1].replace(/^\s+|\s+$/g,""))}"function"==typeof t&&(s.onreadystatechange=function(){s.readyState>3&&t(s)}),s.send(i)}function s(e){return new Error("Error ["+(e.code||"UNKNOWN")+"]: "+e.error)}return o.prototype.getNextService=function(){var e;do{e=this.getServiceByIdx(++this.currentServiceIndex)}while(this.currentServiceIndex<this.options.services.length&&!e);return e},o.prototype.getServiceByIdx=function(e){var o=this.options.services[e];if("function"==typeof o){var i=o();return i.name&&t.deepExtend(i,this.options.serviceDefinitions[i.name](i)),i}return"string"==typeof o?this.options.serviceDefinitions[o]():t.isPlainObject(o)?this.options.serviceDefinitions[o.name](o):null},o.prototype.locate=function(e,t){var o=this.getNextService();o?(this.callbackComplete=e,this.callbackError=t,this.runService(o,this.runNextServiceOnError.bind(this))):t(new Error("No services to run"))},o.prototype.setupUrl=function(e){var t=this.getCurrentServiceOpts();return e.url.replace(/\{(.*?)\}/g,(function(o,i){if("callback"===i){var n="callback"+Date.now();return window[n]=function(t){e.__JSONP_DATA=JSON.stringify(t)},n}if(i in t.interpolateUrl)return t.interpolateUrl[i]}))},o.prototype.runService=function(e,t){var o=this;e&&e.url&&e.callback&&(e.isScript?i:n)(this.setupUrl(e),(function(i){var n=i?i.responseText:"";e.__JSONP_DATA&&(n=e.__JSONP_DATA,delete e.__JSONP_DATA),o.runServiceCallback.call(o,t,e,n)}),this.options.timeout,e.data,e.headers)},o.prototype.runServiceCallback=function(e,t,o){var i=this,n=t.callback((function(t){n||i.onServiceResult.call(i,e,t)}),o);n&&this.onServiceResult.call(this,e,n)},o.prototype.onServiceResult=function(e,t){t instanceof Error||t&&t.error?e.call(this,t,null):e.call(this,null,t)},o.prototype.runNextServiceOnError=function(e,t){if(e){this.logError(e);var o=this.getNextService();o?this.runService(o,this.runNextServiceOnError.bind(this)):this.completeService.call(this,this.callbackError,new Error("All services failed"))}else this.completeService.call(this,this.callbackComplete,t)},o.prototype.getCurrentServiceOpts=function(){var e=this.options.services[this.currentServiceIndex];return"string"==typeof e?{name:e}:"function"==typeof e?e():t.isPlainObject(e)?e:{}},o.prototype.completeService=function(e,t){this.currentServiceIndex=-1,e&&e(t)},o.prototype.logError=function(e){var t=this.currentServiceIndex,o=this.getServiceByIdx(t);console.warn("The service["+t+"] ("+o.url+") responded with the following error",e)},o}(),e.Law=function(){var e={regionalLaw:!0,hasLaw:["AT","BE","BG","HR","CZ","CY","DK","EE","FI","FR","DE","EL","HU","IE","IT","LV","LT","LU","MT","NL","PL","PT","SK","ES","SE","GB","UK","GR","EU"],revokable:["HR","CY","DK","EE","FR","DE","LV","LT","NL","PT","ES"],explicitAction:["HR","IT","ES"]};function o(e){this.initialise.apply(this,arguments)}return o.prototype.initialise=function(o){t.deepExtend(this.options={},e),t.isPlainObject(o)&&t.deepExtend(this.options,o)},o.prototype.get=function(e){var t=this.options;return{hasLaw:t.hasLaw.indexOf(e)>=0,revokable:t.revokable.indexOf(e)>=0,explicitAction:t.explicitAction.indexOf(e)>=0}},o.prototype.applyLaw=function(e,t){var o=this.get(t);return o.hasLaw||(e.enabled=!1,"function"==typeof e.onNoCookieLaw&&e.onNoCookieLaw(t,o)),this.options.regionalLaw&&(o.revokable&&(e.revokable=!0),o.explicitAction&&(e.dismissOnScroll=!1,e.dismissOnTimeout=!1)),e},o}(),e.initialise=function(o,i,n){var s=new e.Law(o.law);i||(i=function(){}),n||(n=function(){});var r=Object.keys(e.status),a=t.getCookie("cookieconsent_status");r.indexOf(a)>=0?i(new e.Popup(o)):e.getCountryCode(o,(function(t){delete o.law,delete o.location,t.code&&(o=s.applyLaw(o,t.code)),i(new e.Popup(o))}),(function(t){delete o.law,delete o.location,n(t,new e.Popup(o))}))},e.getCountryCode=function(t,o,i){t.law&&t.law.countryCode?o({code:t.law.countryCode}):t.location?new e.Location(t.location).locate((function(e){o(e||{})}),i):o({})},e.utils=t,e.hasInitialised=!0,window.cookieconsent=e}}(window.cookieconsent||{})}},t={};function o(i){var n=t[i];if(void 0!==n)return n.exports;var s=t[i]={exports:{}};return e[i](s,s.exports,o),s.exports}o.n=e=>{var t=e&&e.__esModule?()=>e.default:()=>e;return o.d(t,{a:t}),t},o.d=(e,t)=>{for(var i in t)o.o(t,i)&&!o.o(e,i)&&Object.defineProperty(e,i,{enumerable:!0,get:t[i]})},o.o=(e,t)=>Object.prototype.hasOwnProperty.call(e,t),o.r=e=>{"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})};var i={};(()=>{"use strict";o.r(i);const e=flarum.core.compat["forum/app"];var t=o.n(e);o(446),t().initializers.add("fof-cookie-consent",(function(){$(document).ready((function(){var e=t().forum.attribute("fof-cookie-consent.ccTheme"),o=t().forum.attribute("fof-cookie-consent.backgroundColor"),i=t().forum.attribute("fof-cookie-consent.textColor"),n=t().forum.attribute("fof-cookie-consent.consentText"),s=t().forum.attribute("fof-cookie-consent.buttonText"),r=t().forum.attribute("fof-cookie-consent.buttonBackgroundColor"),a=t().forum.attribute("fof-cookie-consent.buttonTextColor"),c=t().forum.attribute("fof-cookie-consent.learnMoreLinkText"),l=t().forum.attribute("fof-cookie-consent.learnMoreLinkUrl"),u={},h={};o&&(u.background=o),i&&(u.text=i),r&&(h.background=r),a&&(h.text=a);try{var p={palette:{popup:u,button:h},theme:e,content:{message:n,dismiss:s,link:c,href:l}};cookieconsent.initialise(p)}catch(e){t().forum.attribute("adminUrl")?(console.error("An error occurred initializing the Cookie Consent library. Please make sure you have set all the settings properly."),console.error("Please report the following error if you don't think the issue is on your end\n\n",e)):console.error("An error occurred with the cookie consent prompt. Please contact an administrator so they can fix the issue.")}delete window.cookieconsent}))}))})(),module.exports=i})();
//# sourceMappingURL=forum.js.map