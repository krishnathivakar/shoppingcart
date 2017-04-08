<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<link href="resources/css/layout.css" rel="stylesheet" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/styles.css" />
<link rel="stylesheet" type="text/css" href="resources/css/jssorstyles.css" />


</head>
<style>
<style>
.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown:hover .dropdown-content {
    display: block;
}

.desc {
    padding: 15px;
    text-align: center;
}
</style>


</style>
<body>
	<!-- #region Jssor Slider Begin -->
	<!-- Generator: Jssor Slider Maker -->
	<!-- Source: http://www.jssor.com -->
	<!-- This is deep minimized code which works independently. -->
	<script type="text/javascript">
(function(f,g,c,i,e,k,h){/*! Jssor */
var u=new function(){this.qf=e;this.og=function(b){var a=this.qf;a&&b()}},d={Ib:function(a){return-c.cos(a*c.PI)/2+.5},E:function(a){return a},Nd:function(a){return a*a},oc:function(a){return-a*(a-2)},sg:function(a){return(a*=2)<1?1/2*a*a:-1/2*(--a*(a-2)-1)},xb:function(a){return a*a*a},Sd:function(a){return(a-=1)*a*a+1},pg:function(a){return(a*=2)<1?1/2*a*a*a:1/2*((a-=2)*a*a+2)},eg:function(a){return a*a*a*a},Hf:function(a){return-((a-=1)*a*a*a-1)},Ff:function(a){return(a*=2)<1?1/2*a*a*a*a:-1/2*((a-=2)*a*a*a-2)},Ef:function(a){return a*a*a*a*a},ae:function(a){return(a-=1)*a*a*a*a+1},Df:function(a){return(a*=2)<1?1/2*a*a*a*a*a:1/2*((a-=2)*a*a*a*a+2)},Cf:function(a){return 1-c.cos(c.PI/2*a)},Bf:function(a){return c.sin(c.PI/2*a)},If:function(a){return-1/2*(c.cos(c.PI*a)-1)},z:function(a){return a==0?0:c.pow(2,10*(a-1))},Af:function(a){return a==1?1:-c.pow(2,-10*a)+1},yf:function(a){return a==0||a==1?a:(a*=2)<1?1/2*c.pow(2,10*(a-1)):1/2*(-c.pow(2,-10*--a)+2)},vf:function(a){return-(c.sqrt(1-a*a)-1)},sf:function(a){return c.sqrt(1-(a-=1)*a)},zf:function(a){return(a*=2)<1?-1/2*(c.sqrt(1-a*a)-1):1/2*(c.sqrt(1-(a-=2)*a)+1)},bg:function(a){if(!a||a==1)return a;var b=.3,d=.075;return-(c.pow(2,10*(a-=1))*c.sin((a-d)*2*c.PI/b))},ag:function(a){if(!a||a==1)return a;var b=.3,d=.075;return c.pow(2,-10*a)*c.sin((a-d)*2*c.PI/b)+1},fg:function(a){if(!a||a==1)return a;var b=.45,d=.1125;return(a*=2)<1?-.5*c.pow(2,10*(a-=1))*c.sin((a-d)*2*c.PI/b):c.pow(2,-10*(a-=1))*c.sin((a-d)*2*c.PI/b)*.5+1},Vf:function(a){var b=1.70158;return a*a*((b+1)*a-b)},Uf:function(a){var b=1.70158;return(a-=1)*a*((b+1)*a+b)+1},Rf:function(a){var b=1.70158;return(a*=2)<1?1/2*a*a*(((b*=1.525)+1)*a-b):1/2*((a-=2)*a*(((b*=1.525)+1)*a+b)+2)},vd:function(a){return 1-d.Nc(1-a)},Nc:function(a){return a<1/2.75?7.5625*a*a:a<2/2.75?7.5625*(a-=1.5/2.75)*a+.75:a<2.5/2.75?7.5625*(a-=2.25/2.75)*a+.9375:7.5625*(a-=2.625/2.75)*a+.984375},Qf:function(a){return a<1/2?d.vd(a*2)*.5:d.Nc(a*2-1)*.5+.5},Pf:function(a){return 1-c.cos(a*c.PI*2)},ld:function(a){return(a*=2)<1?a*a*a:(a=2-a)*a*a},Of:c.ceil,Nf:c.floor};var b=new function(){var j=this,xb=/\S+/g,F=1,wb=2,cb=3,bb=4,fb=5,G,r=0,l=0,s=0,Y=0,A=0,I=navigator,kb=I.appName,o=I.userAgent,p=parseFloat;function Fb(){if(!G){G={Sf:"ontouchstart"in f||"createTouch"in g};var a;if(I.pointerEnabled||(a=I.msPointerEnabled))G.Xd=a?"msTouchAction":"touchAction"}return G}function v(i){if(!r){r=-1;if(kb=="Microsoft Internet Explorer"&&!!f.attachEvent&&!!f.ActiveXObject){var e=o.indexOf("MSIE");r=F;s=p(o.substring(e+5,o.indexOf(";",e)));/*@cc_on Y=@_jscript_version@*/;l=g.documentMode||s}else if(kb=="Netscape"&&!!f.addEventListener){var d=o.indexOf("Firefox"),b=o.indexOf("Safari"),h=o.indexOf("Chrome"),c=o.indexOf("AppleWebKit");if(d>=0){r=wb;l=p(o.substring(d+8))}else if(b>=0){var j=o.substring(0,b).lastIndexOf("/");r=h>=0?bb:cb;l=p(o.substring(j+1,b))}else{var a=/Trident\/.*rv:([0-9]{1,}[\.0-9]{0,})/i.exec(o);if(a){r=F;l=s=p(a[1])}}if(c>=0)A=p(o.substring(c+12))}else{var a=/(opera)(?:.*version|)[ \/]([\w.]+)/i.exec(o);if(a){r=fb;l=p(a[2])}}}return i==r}function q(){return v(F)}function vb(){return q()&&(l<6||g.compatMode=="BackCompat")}function ab(){return v(cb)}function eb(){return v(fb)}function rb(){return ab()&&A>534&&A<535}function J(){v();return A>537||l>42||r==F&&l>=11}function tb(){return q()&&l<9}function sb(a){var b,c;return function(f){if(!b){b=e;var d=a.substr(0,1).toUpperCase()+a.substr(1);n([a].concat(["WebKit","ms","Moz","O","webkit"]),function(g,e){var b=a;if(e)b=g+d;if(f.style[b]!=h)return c=b})}return c}}function qb(b){var a;return function(c){a=a||sb(b)(c)||b;return a}}var K=qb("transform");function jb(a){return{}.toString.call(a)}var gb={};n(["Boolean","Number","String","Function","Array","Date","RegExp","Object"],function(a){gb["[object "+a+"]"]=a.toLowerCase()});function n(b,d){var a,c;if(jb(b)=="[object Array]"){for(a=0;a<b.length;a++)if(c=d(b[a],a,b))return c}else for(a in b)if(c=d(b[a],a,b))return c}function D(a){return a==i?String(a):gb[jb(a)]||"object"}function hb(a){for(var b in a)return e}function B(a){try{return D(a)=="object"&&!a.nodeType&&a!=a.window&&(!a.constructor||{}.hasOwnProperty.call(a.constructor.prototype,"isPrototypeOf"))}catch(b){}}function u(a,b){return{x:a,y:b}}function nb(b,a){setTimeout(b,a||0)}function H(b,d,c){var a=!b||b=="inherit"?"":b;n(d,function(c){var b=c.exec(a);if(b){var d=a.substr(0,b.index),e=a.substr(b.index+b[0].length+1,a.length-1);a=d+e}});a=c+(!a.indexOf(" ")?"":" ")+a;return a}function pb(b,a){if(l<9)b.style.filter=a}j.Tf=Fb;j.Vd=q;j.Wf=ab;j.Id=eb;j.Xf=J;j.ac=tb;sb("transform");j.Dd=function(){return l};j.Yf=function(){v();return A};j.S=nb;function V(a){a.constructor===V.caller&&a.Hd&&a.Hd.apply(a,V.caller.arguments)}j.Hd=V;j.Kb=function(a){if(j.Zf(a))a=g.getElementById(a);return a};function t(a){return a||f.event}j.Kd=t;j.Cc=function(b){b=t(b);var a=b.target||b.srcElement||g;if(a.nodeType==3)a=j.Md(a);return a};j.Pd=function(a){a=t(a);return{x:a.pageX||a.clientX||0,y:a.pageY||a.clientY||0}};function w(c,d,a){if(a!==h)c.style[d]=a==h?"":a;else{var b=c.currentStyle||c.style;a=b[d];if(a==""&&f.getComputedStyle){b=c.ownerDocument.defaultView.getComputedStyle(c,i);b&&(a=b.getPropertyValue(d)||b[d])}return a}}function X(b,c,a,d){if(a!==h){if(a==i)a="";else d&&(a+="px");w(b,c,a)}else return p(w(b,c))}function m(c,a){var d=a?X:w,b;if(a&4)b=qb(c);return function(e,f){return d(e,b?b(e):c,f,a&2)}}function Ab(b){if(q()&&s<9){var a=/opacity=([^)]*)/.exec(b.style.filter||"");return a?p(a[1])/100:1}else return p(b.style.opacity||"1")}function Cb(b,a,f){if(q()&&s<9){var h=b.style.filter||"",i=new RegExp(/[\s]*alpha\([^\)]*\)/g),e=c.round(100*a),d="";if(e<100||f)d="alpha(opacity="+e+") ";var g=H(h,[i],d);pb(b,g)}else b.style.opacity=a==1?"":c.round(a*100)/100}var L={k:["rotate"],nb:["rotateX"],jb:["rotateY"],ic:["skewX"],jc:["skewY"]};if(!J())L=C(L,{M:["scaleX",2],L:["scaleY",2],fb:["translateZ",1]});function M(d,a){var c="";if(a){if(q()&&l&&l<10){delete a.nb;delete a.jb;delete a.fb}b.g(a,function(d,b){var a=L[b];if(a){var e=a[1]||0;if(N[b]!=d)c+=" "+a[0]+"("+d+(["deg","px",""])[e]+")"}});if(J()){if(a.Db||a.Ab||a.fb!=h)c+=" translate3d("+(a.Db||0)+"px,"+(a.Ab||0)+"px,"+(a.fb||0)+"px)";if(a.M==h)a.M=1;if(a.L==h)a.L=1;if(a.M!=1||a.L!=1)c+=" scale3d("+a.M+", "+a.L+", 1)"}}d.style[K(d)]=c}j.be=m("transformOrigin",4);j.cg=m("backfaceVisibility",4);j.Lf=m("transformStyle",4);j.Kf=m("perspective",6);j.Jf=m("perspectiveOrigin",4);j.tf=function(a,b){if(q()&&s<9||s<10&&vb())a.style.zoom=b==1?"":b;else{var c=K(a),f="scale("+b+")",e=a.style[c],g=new RegExp(/[\s]*scale\(.*?\)/g),d=H(e,[g],f);a.style[c]=d}};j.wc=function(b,a){return function(c){c=t(c);var e=c.type,d=c.relatedTarget||(e=="mouseout"?c.toElement:c.fromElement);(!d||d!==a&&!j.uf(a,d))&&b(c)}};j.j=function(a,d,b,c){a=j.Kb(a);if(a.addEventListener){d=="mousewheel"&&a.addEventListener("DOMMouseScroll",b,c);a.addEventListener(d,b,c)}else if(a.attachEvent){a.attachEvent("on"+d,b);c&&a.setCapture&&a.setCapture()}};j.ab=function(a,c,d,b){a=j.Kb(a);if(a.removeEventListener){c=="mousewheel"&&a.removeEventListener("DOMMouseScroll",d,b);a.removeEventListener(c,d,b)}else if(a.detachEvent){a.detachEvent("on"+c,d);b&&a.releaseCapture&&a.releaseCapture()}};j.qc=function(a){a=t(a);a.preventDefault&&a.preventDefault();a.cancel=e;a.returnValue=k};j.wf=function(a){a=t(a);a.stopPropagation&&a.stopPropagation();a.cancelBubble=e};j.gb=function(d,c){var a=[].slice.call(arguments,2),b=function(){var b=a.concat([].slice.call(arguments,0));return c.apply(d,b)};return b};j.xf=function(a,b){if(b==h)return a.textContent||a.innerText;var c=g.createTextNode(b);j.vc(a);a.appendChild(c)};j.Ob=function(d,c){for(var b=[],a=d.firstChild;a;a=a.nextSibling)(c||a.nodeType==1)&&b.push(a);return b};function ib(a,c,e,b){b=b||"u";for(a=a?a.firstChild:i;a;a=a.nextSibling)if(a.nodeType==1){if(S(a,b)==c)return a;if(!e){var d=ib(a,c,e,b);if(d)return d}}}j.Q=ib;function Q(a,d,f,b){b=b||"u";var c=[];for(a=a?a.firstChild:i;a;a=a.nextSibling)if(a.nodeType==1){S(a,b)==d&&c.push(a);if(!f){var e=Q(a,d,f,b);if(e.length)c=c.concat(e)}}return c}function db(a,c,d){for(a=a?a.firstChild:i;a;a=a.nextSibling)if(a.nodeType==1){if(a.tagName==c)return a;if(!d){var b=db(a,c,d);if(b)return b}}}j.Gf=db;function ub(a,c,e){var b=[];for(a=a?a.firstChild:i;a;a=a.nextSibling)if(a.nodeType==1){(!c||a.tagName==c)&&b.push(a);if(!e){var d=ub(a,c,e);if(d.length)b=b.concat(d)}}return b}j.dg=ub;j.tg=function(b,a){return b.getElementsByTagName(a)};function C(){var e=arguments,d,c,b,a,g=1&e[0],f=1+g;d=e[f-1]||{};for(;f<e.length;f++)if(c=e[f])for(b in c){a=c[b];if(a!==h){a=c[b];var i=d[b];d[b]=g&&(B(i)||B(a))?C(g,{},i,a):a}}return d}j.G=C;function W(f,g){var d={},c,a,b;for(c in f){a=f[c];b=g[c];if(a!==b){var e;if(B(a)&&B(b)){a=W(a,b);e=!hb(a)}!e&&(d[c]=a)}}return d}j.ud=function(a){return D(a)=="function"};j.Zf=function(a){return D(a)=="string"};j.ec=function(a){return!isNaN(p(a))&&isFinite(a)};j.g=n;j.Qd=B;function P(a){return g.createElement(a)}j.hc=function(){return P("DIV")};j.lg=function(){return P("SPAN")};j.pd=function(){};function T(b,c,a){if(a==h)return b.getAttribute(c);b.setAttribute(c,a)}function S(a,b){return T(a,b)||T(a,"data-"+b)}j.K=T;j.q=S;function y(b,a){if(a==h)return b.className;b.className=a}j.nd=y;function mb(b){var a={};n(b,function(b){if(b!=h)a[b]=b});return a}function ob(b,a){return b.match(a||xb)}function O(b,a){return mb(ob(b||"",a))}j.hg=ob;function Z(b,c){var a="";n(c,function(c){a&&(a+=b);a+=c});return a}function E(a,c,b){y(a,Z(" ",C(W(O(y(a)),O(c)),O(b))))}j.Md=function(a){return a.parentNode};j.eb=function(a){j.pb(a,"none")};j.H=function(a,b){j.pb(a,b?"none":"")};j.mg=function(b,a){b.removeAttribute(a)};j.ig=function(){return q()&&l<10};j.jg=function(d,a){if(a)d.style.clip="rect("+c.round(a.f||a.I||0)+"px "+c.round(a.C)+"px "+c.round(a.D)+"px "+c.round(a.i||a.J||0)+"px)";else if(a!==h){var g=d.style.cssText,f=[new RegExp(/[\s]*clip: rect\(.*?\)[;]?/i),new RegExp(/[\s]*cliptop: .*?[;]?/i),new RegExp(/[\s]*clipright: .*?[;]?/i),new RegExp(/[\s]*clipbottom: .*?[;]?/i),new RegExp(/[\s]*clipleft: .*?[;]?/i)],e=H(g,f,"");b.pc(d,e)}};j.ub=function(){return+new Date};j.db=function(b,a){b.appendChild(a)};j.nc=function(b,a,c){(c||a.parentNode).insertBefore(b,a)};j.kc=function(b,a){a=a||b.parentNode;a&&a.removeChild(b)};j.ng=function(a,b){n(a,function(a){j.kc(a,b)})};j.vc=function(a){j.ng(j.Ob(a,e),a)};j.qg=function(a,b){var c=j.Md(a);b&1&&j.V(a,(j.v(c)-j.v(a))/2);b&2&&j.W(a,(j.B(c)-j.B(a))/2)};j.Wb=function(b,a){return parseInt(b,a||10)};j.gg=p;j.uf=function(b,a){var c=g.body;while(a&&b!==a&&c!==a)try{a=a.parentNode}catch(d){return k}return b===a};function U(d,c,b){var a=d.cloneNode(!c);!b&&j.mg(a,"id");return a}j.sb=U;j.Lb=function(d,f){var a=new Image;function b(e,d){j.ab(a,"load",b);j.ab(a,"abort",c);j.ab(a,"error",c);f&&f(a,d)}function c(a){b(a,e)}if(eb()&&l<11.6||!d)b(!d);else{j.j(a,"load",b);j.j(a,"abort",c);j.j(a,"error",c);a.src=d}};j.ug=function(d,a,e){var c=d.length+1;function b(b){c--;if(a&&b&&b.src==a.src)a=b;!c&&e&&e(a)}n(d,function(a){j.Lb(a.src,b)});b()};j.rg=function(a,g,i,h){if(h)a=U(a);var c=Q(a,g);if(!c.length)c=b.tg(a,g);for(var f=c.length-1;f>-1;f--){var d=c[f],e=U(i);y(e,y(d));b.pc(e,d.style.cssText);b.nc(e,d);b.kc(d)}return a};function Db(a){var l=this,p="",r=["av","pv","ds","dn"],e=[],q,k=0,f=0,d=0;function i(){E(a,q,e[d||k||f&2||f]);b.cb(a,"pointer-events",d?"none":"")}function c(){k=0;i();j.ab(g,"mouseup",c);j.ab(g,"touchend",c);j.ab(g,"touchcancel",c)}function o(a){if(d)j.qc(a);else{k=4;i();j.j(g,"mouseup",c);j.j(g,"touchend",c);j.j(g,"touchcancel",c)}}l.kg=function(a){if(a===h)return f;f=a&2||a&1;i()};l.Vb=function(a){if(a===h)return!d;d=a?0:3;i()};l.rb=a=j.Kb(a);var m=b.hg(y(a));if(m)p=m.shift();n(r,function(a){e.push(p+a)});q=Z(" ",e);e.unshift("");j.j(a,"mousedown",o);j.j(a,"touchstart",o)}j.Dc=function(a){return new Db(a)};j.cb=w;j.Tb=m("overflow");j.W=m("top",2);j.V=m("left",2);j.v=m("width",2);j.B=m("height",2);j.Ec=m("marginLeft",2);j.Fc=m("marginTop",2);j.O=m("position");j.pb=m("display");j.N=m("zIndex",1);j.Qb=function(b,a,c){if(a!=h)Cb(b,a,c);else return Ab(b)};j.pc=function(a,b){if(b!=h)a.style.cssText=b;else return a.style.cssText};j.se=function(b,a){if(a===h){a=w(b,"backgroundImage")||"";var c=/\burl\s*\(\s*["']?([^"'\r\n,]+)["']?\s*\)/gi.exec(a)||[];return c[1]}w(b,"backgroundImage",a?"url('"+a+"')":"")};var R={m:j.Qb,f:j.W,i:j.V,bb:j.v,Y:j.B,Jb:j.O,Bg:j.pb,Z:j.N};function x(f,l){var e=tb(),b=J(),d=rb(),g=K(f);function k(b,d,a){var e=b.yb(u(-d/2,-a/2)),f=b.yb(u(d/2,-a/2)),g=b.yb(u(d/2,a/2)),h=b.yb(u(-d/2,a/2));b.yb(u(300,300));return u(c.min(e.x,f.x,g.x,h.x)+d/2,c.min(e.y,f.y,g.y,h.y)+a/2)}function a(d,a){a=a||{};var n=a.fb||0,p=(a.nb||0)%360,q=(a.jb||0)%360,u=(a.k||0)%360,l=a.M,m=a.L,f=a.Cg;if(l==h)l=1;if(m==h)m=1;if(f==h)f=1;if(e){n=0;p=0;q=0;f=0}var c=new zb(a.Db,a.Ab,n);c.nb(p);c.jb(q);c.te(u);c.re(a.ic,a.jc);c.uc(l,m,f);if(b){c.Fb(a.J,a.I);d.style[g]=c.he()}else if(!Y||Y<9){var o="",i={x:0,y:0};if(a.tb)i=k(c,a.tb,a.Eb);j.Fc(d,i.y);j.Ec(d,i.x);o=c.fe();var s=d.style.filter,t=new RegExp(/[\s]*progid:DXImageTransform\.Microsoft\.Matrix\([^\)]*\)/g),r=H(s,[t],o);pb(d,r)}}x=function(e,c){c=c||{};var g=c.J,k=c.I,f;n(R,function(a,b){f=c[b];f!==h&&a(e,f)});j.jg(e,c.a);if(!b){g!=h&&j.V(e,(c.Cd||0)+g);k!=h&&j.W(e,(c.Bd||0)+k)}if(c.cf)if(d)nb(j.gb(i,M,e,c));else a(e,c)};j.zb=M;if(d)j.zb=x;if(e)j.zb=a;else if(!b)a=M;j.X=x;x(f,l)}j.zb=x;j.X=x;function zb(j,k,o){var d=this,b=[1,0,0,0,0,1,0,0,0,0,1,0,j||0,k||0,o||0,1],h=c.sin,g=c.cos,l=c.tan;function f(a){return a*c.PI/180}function n(a,b){return{x:a,y:b}}function m(c,e,l,m,o,r,t,u,w,z,A,C,E,b,f,k,a,g,i,n,p,q,s,v,x,y,B,D,F,d,h,j){return[c*a+e*p+l*x+m*F,c*g+e*q+l*y+m*d,c*i+e*s+l*B+m*h,c*n+e*v+l*D+m*j,o*a+r*p+t*x+u*F,o*g+r*q+t*y+u*d,o*i+r*s+t*B+u*h,o*n+r*v+t*D+u*j,w*a+z*p+A*x+C*F,w*g+z*q+A*y+C*d,w*i+z*s+A*B+C*h,w*n+z*v+A*D+C*j,E*a+b*p+f*x+k*F,E*g+b*q+f*y+k*d,E*i+b*s+f*B+k*h,E*n+b*v+f*D+k*j]}function e(c,a){return m.apply(i,(a||b).concat(c))}d.uc=function(a,c,d){if(a!=1||c!=1||d!=1)b=e([a,0,0,0,0,c,0,0,0,0,d,0,0,0,0,1])};d.Fb=function(a,c,d){b[12]+=a||0;b[13]+=c||0;b[14]+=d||0};d.nb=function(c){if(c){a=f(c);var d=g(a),i=h(a);b=e([1,0,0,0,0,d,i,0,0,-i,d,0,0,0,0,1])}};d.jb=function(c){if(c){a=f(c);var d=g(a),i=h(a);b=e([d,0,-i,0,0,1,0,0,i,0,d,0,0,0,0,1])}};d.te=function(c){if(c){a=f(c);var d=g(a),i=h(a);b=e([d,i,0,0,-i,d,0,0,0,0,1,0,0,0,0,1])}};d.re=function(a,c){if(a||c){j=f(a);k=f(c);b=e([1,l(k),0,0,l(j),1,0,0,0,0,1,0,0,0,0,1])}};d.yb=function(c){var a=e(b,[1,0,0,0,0,1,0,0,0,0,1,0,c.x,c.y,0,1]);return n(a[12],a[13])};d.he=function(){return"matrix3d("+b.join(",")+")"};d.fe=function(){return"progid:DXImageTransform.Microsoft.Matrix(M11="+b[0]+", M12="+b[4]+", M21="+b[1]+", M22="+b[5]+", SizingMethod='auto expand')"}}new function(){var a=this;function b(d,g){for(var j=d[0].length,i=d.length,h=g[0].length,f=[],c=0;c<i;c++)for(var k=f[c]=[],b=0;b<h;b++){for(var e=0,a=0;a<j;a++)e+=d[c][a]*g[a][b];k[b]=e}return f}a.M=function(b,c){return a.md(b,c,0)};a.L=function(b,c){return a.md(b,0,c)};a.md=function(a,c,d){return b(a,[[c,0],[0,d]])};a.yb=function(d,c){var a=b(d,[[c.x],[c.y]]);return u(a[0][0],a[1][0])}};var N={Cd:0,Bd:0,J:0,I:0,l:1,M:1,L:1,k:0,nb:0,jb:0,Db:0,Ab:0,fb:0,ic:0,jc:0};j.sc=function(c,d){var a=c||{};if(c)if(b.ud(c))a={lb:a};else if(b.ud(c.a))a.a={lb:c.a};a.lb=a.lb||d;if(a.a)a.a.lb=a.a.lb||d;return a};function lb(c,a){var b={};n(c,function(c,d){var e=c;if(a[d]!=h)if(j.ec(c))e=c+a[d];else e=lb(c,a[d]);b[d]=e});return b}j.We=lb;j.td=function(l,m,x,q,z,A,n){var a=m;if(l){a={};for(var g in m){var B=A[g]||1,w=z[g]||[0,1],f=(x-w[0])/w[1];f=c.min(c.max(f,0),1);f=f*B;var u=c.floor(f);if(f!=u)f-=u;var j=q.lb||d.E,k,C=l[g],o=m[g];if(b.ec(o)){j=q[g]||j;var y=j(f);k=C+o*y}else{k=b.G({cc:{}},l[g]);var v=q[g]||{};b.g(o.cc||o,function(d,a){j=v[a]||v.lb||j;var c=j(f),b=d*c;k.cc[a]=b;k[a]+=b})}a[g]=k}var t=b.g(m,function(b,a){return N[a]!=h});t&&b.g(N,function(c,b){if(a[b]==h&&l[b]!==h)a[b]=l[b]});if(t){if(a.l)a.M=a.L=a.l;a.tb=n.tb;a.Eb=n.Eb;a.cf=e}}if(m.a&&n.Fb){var p=a.a.cc,s=(p.f||0)+(p.D||0),r=(p.i||0)+(p.C||0);a.i=(a.i||0)+r;a.f=(a.f||0)+s;a.a.i-=r;a.a.C-=r;a.a.f-=s;a.a.D-=s}if(a.a&&b.ig()&&!a.a.f&&!a.a.i&&!a.a.I&&!a.a.J&&a.a.C==n.tb&&a.a.D==n.Eb)a.a=i;return a}};function m(){var a=this,d=[];function i(a,b){d.push({Bc:a,zc:b})}function h(a,c){b.g(d,function(b,e){b.Bc==a&&b.zc===c&&d.splice(e,1)})}a.Mb=a.addEventListener=i;a.removeEventListener=h;a.s=function(a){var c=[].slice.call(arguments,1);b.g(d,function(b){b.Bc==a&&b.zc.apply(f,c)})}}var l=function(B,F,h,K,N,M){B=B||0;var a=this,q,n,o,u,D=0,H,I,G,E,A=0,j=0,m=0,z,l,d,g,p,y,w=[],x;function P(a){d+=a;g+=a;l+=a;j+=a;m+=a;A+=a}function t(o){var f=o;if(p)if(!y&&(f>=g||f<d)||y&&f>=d)f=((f-d)%p+p)%p+d;if(!z||u||j!=f){var i=c.min(f,g);i=c.max(i,d);if(!z||u||i!=m){if(M){var k=(i-l)/(F||1);if(h.jd)k=1-k;var n=b.td(N,M,k,H,G,I,h);if(x)b.g(n,function(b,a){x[a]&&x[a](K,b)});else b.X(K,n)}a.tc(m-l,i-l);var r=m,q=m=i;b.g(w,function(b,c){var a=!z&&y||f<=j?w[w.length-c-1]:b;a.R(m-A)});j=f;z=e;a.fc(r,q)}}}function C(a,b,e){b&&a.Sb(g);if(!e){d=c.min(d,a.lc()+A);g=c.max(g,a.Cb()+A)}w.push(a)}var r=f.requestAnimationFrame||f.webkitRequestAnimationFrame||f.mozRequestAnimationFrame||f.msRequestAnimationFrame;if(b.Wf()&&b.Dd()<7)r=i;r=r||function(a){b.S(a,h.hb)};function J(){if(q){var d=b.ub(),e=c.min(d-D,h.id),a=j+e*o;D=d;if(a*o>=n*o)a=n;t(a);if(!u&&a*o>=n*o)L(E);else r(J)}}function s(f,h,i){if(!q){q=e;u=i;E=h;f=c.max(f,d);f=c.min(f,g);n=f;o=n<j?-1:1;a.Yc();D=b.ub();r(J)}}function L(b){if(q){u=q=E=k;a.ed();b&&b()}}a.Zc=function(a,b,c){s(a?j+a:g,b,c)};a.kd=s;a.Bb=L;a.nf=function(a){s(a)};a.kb=function(){return j};a.ce=function(){return n};a.Hb=function(){return m};a.R=t;a.Ae=function(){t(g,e)};a.Fb=function(a){t(j+a)};a.Od=function(){return q};a.Be=function(a){p=a};a.Sb=P;a.T=function(a,b){C(a,0,b)};a.Ac=function(a){C(a,1)};a.Ed=function(a){g+=a};a.lc=function(){return d};a.Cb=function(){return g};a.fc=a.Yc=a.ed=a.tc=b.pd;a.yc=b.ub();h=b.G({hb:16,id:50},h);p=h.xc;y=h.Ie;x=h.Je;d=l=B;g=B+F;I=h.P||{};G=h.vb||{};H=b.sc(h.p)};var n=new function(){var h=this,t=1,q=2,r=4,s=8,w=256,x=512,v=1024,u=2048,j=u+t,i=u+q,o=x+t,m=x+q,n=w+r,k=w+s,l=v+r,p=v+s;function y(a){return(a&q)==q}function z(a){return(a&r)==r}function g(b,a,c){c.push(a);b[a]=b[a]||[];b[a].push(c)}h.pf=function(f){for(var d=f.n,e=f.u,s=f.ob,t=f.de,r=[],a=0,b=0,p=d-1,q=e-1,h=t-1,c,b=0;b<e;b++)for(a=0;a<d;a++){switch(s){case j:c=h-(a*e+(q-b));break;case l:c=h-(b*d+(p-a));break;case o:c=h-(a*e+b);case n:c=h-(b*d+a);break;case i:c=a*e+b;break;case k:c=b*d+(p-a);break;case m:c=a*e+(q-b);break;default:c=b*d+a}g(r,c,[b,a])}return r};h.ue=function(q){var u=q.n,v=q.u,e=q.ob,t=q.de,r=[],s=0,c=0,d=0,f=u-1,h=v-1,w=t-1;switch(e){case j:case m:case o:case i:var a=0,b=0;break;case k:case l:case n:case p:var a=f,b=0;break;default:e=p;var a=f,b=0}c=a;d=b;while(s<t){if(z(e)||y(e))g(r,w-s++,[d,c]);else g(r,s++,[d,c]);switch(e){case j:case m:c--;d++;break;case o:case i:c++;d--;break;case k:case l:c--;d--;break;case p:case n:default:c++;d++}if(c<0||d<0||c>f||d>h){switch(e){case j:case m:a++;break;case k:case l:case o:case i:b++;break;case p:case n:default:a--}if(a<0||b<0||a>f||b>h){switch(e){case j:case m:a=f;b++;break;case o:case i:b=h;a++;break;case k:case l:b=h;a--;break;case p:case n:default:a=0;b++}if(b>h)b=h;else if(b<0)b=0;else if(a>f)a=f;else if(a<0)a=0}d=b;c=a}}return r};h.df=function(d){for(var e=[],a,b=0;b<d.u;b++)for(a=0;a<d.n;a++)g(e,c.ceil(1e5*c.random())%13,[b,a]);return e};h.Oe=function(d){for(var e=d.n||1,f=d.u||1,h=[],a,i=e/2-.5,j=f/2-.5,b=0;b<e;b++)for(a=0;a<f;a++)g(h,c.round(c.sqrt(c.pow(b-i,2)+c.pow(a-j,2))),[a,b]);return h}},r=function(o,s,q,u,z){var f=this,v,g,a,y=0,x=u.Ne,r,h=8;function t(a){if(a.f)a.I=a.f;if(a.i)a.J=a.i;b.g(a,function(a){b.Qd(a)&&t(a)})}function j(g,f){var a={hb:f,A:1,S:0,n:1,u:1,m:0,l:0,a:0,Fb:k,F:k,jd:k,dc:n.df,ob:1032,mb:{bc:0,Xc:0},p:d.Ib,P:{},Zb:[],vb:{}};b.G(a,g);t(a);a.de=a.n*a.u;a.p=b.sc(a.p,d.Ib);a.Me=c.ceil(a.A/a.hb);a.Ke=function(c,b){c/=a.n;b/=a.u;var f=c+"x"+b;if(!a.Zb[f]){a.Zb[f]={bb:c,Y:b};for(var d=0;d<a.n;d++)for(var e=0;e<a.u;e++)a.Zb[f][e+","+d]={f:e*b,C:d*c+c,D:e*b+b,i:d*c}}return a.Zb[f]};if(a.Wc){a.Wc=j(a.Wc,f);a.F=e}return a}function p(B,h,a,w,o,m){var z=this,u,v={},j={},n=[],f,d,s,q=a.mb.bc||0,r=a.mb.Xc||0,g=a.Ke(o,m),p=C(a),D=p.length-1,t=a.A+a.S*D,x=w+t,l=a.F,y;x+=50;function C(a){var b=a.dc(a);return a.jd?b.reverse():b}z.Ld=x;z.Yb=function(d){d-=w;var e=d<t;if(e||y){y=e;if(!l)d=t-d;var f=c.ceil(d/a.hb);b.g(j,function(a,e){var d=c.max(f,a.He);d=c.min(d,a.length-1);if(a.ee!=d){if(!a.ee&&!l)b.H(n[e]);else d==a.Ge&&l&&b.eb(n[e]);a.ee=d;b.X(n[e],a[d])}})}};h=b.sb(h);b.zb(h,i);if(b.ac()){var E=!h["no-image"],A=b.dg(h);b.g(A,function(a){(E||a["jssor-slider"])&&b.Qb(a,b.Qb(a),e)})}b.g(p,function(h,i){b.g(h,function(G){var K=G[0],J=G[1],t=K+","+J,n=k,p=k,x=k;if(q&&J%2){if(q&3)n=!n;if(q&12)p=!p;if(q&16)x=!x}if(r&&K%2){if(r&3)n=!n;if(r&12)p=!p;if(r&16)x=!x}a.f=a.f||a.a&4;a.D=a.D||a.a&8;a.i=a.i||a.a&1;a.C=a.C||a.a&2;var E=p?a.D:a.f,B=p?a.f:a.D,D=n?a.C:a.i,C=n?a.i:a.C;a.a=E||B||D||C;s={};d={I:0,J:0,m:1,bb:o,Y:m};f=b.G({},d);u=b.G({},g[t]);if(a.m)d.m=2-a.m;if(a.Z){d.Z=a.Z;f.Z=0}var I=a.n*a.u>1||a.a;if(a.l||a.k){var H=e;if(b.ac())if(a.n*a.u>1)H=k;else I=k;if(H){d.l=a.l?a.l-1:1;f.l=1;if(b.ac()||b.Id())d.l=c.min(d.l,2);var N=a.k||0;d.k=N*360*(x?-1:1);f.k=0}}if(I){var h=u.cc={};if(a.a){var w=a.Fe||1;if(E&&B){h.f=g.Y/2*w;h.D=-h.f}else if(E)h.D=-g.Y*w;else if(B)h.f=g.Y*w;if(D&&C){h.i=g.bb/2*w;h.C=-h.i}else if(D)h.C=-g.bb*w;else if(C)h.i=g.bb*w}s.a=u;f.a=g[t]}var L=n?1:-1,M=p?1:-1;if(a.x)d.J+=o*a.x*L;if(a.y)d.I+=m*a.y*M;b.g(d,function(a,c){if(b.ec(a))if(a!=f[c])s[c]=a-f[c]});v[t]=l?f:d;var F=a.Me,A=c.round(i*a.S/a.hb);j[t]=new Array(A);j[t].He=A;j[t].Ge=A+F-1;for(var z=0;z<=F;z++){var y=b.td(f,s,z/F,a.p,a.vb,a.P,{Fb:a.Fb,tb:o,Eb:m});y.Z=y.Z||1;j[t].push(y)}})});p.reverse();b.g(p,function(a){b.g(a,function(c){var f=c[0],e=c[1],d=f+","+e,a=h;if(e||f)a=b.sb(h);b.X(a,v[d]);b.Tb(a,"hidden");b.O(a,"absolute");B.Ee(a);n[d]=a;b.H(a,!l)})})}function w(){var b=this,c=0;l.call(b,0,v);b.fc=function(d,b){if(b-c>h){c=b;a&&a.Yb(b);g&&g.Yb(b)}};b.Gc=r}f.De=function(){var a=0,b=u.ib,d=b.length;if(x)a=y++%d;else a=c.floor(c.random()*d);b[a]&&(b[a].wb=a);return b[a]};f.Ce=function(w,x,k,l,b){r=b;b=j(b,h);var i=l.Rd,e=k.Rd;i["no-image"]=!l.Lc;e["no-image"]=!k.Lc;var m=i,n=e,u=b,d=b.Wc||j({},h);if(!b.F){m=e;n=i}var t=d.Sb||0;g=new p(o,n,d,c.max(t-d.hb,0),s,q);a=new p(o,m,u,c.max(d.hb-t,0),s,q);g.Yb(0);a.Yb(0);v=c.max(g.Ld,a.Ld);f.wb=w};f.Gb=function(){o.Gb();g=i;a=i};f.ze=function(){var b=i;if(a)b=new w;return b};if(b.ac()||b.Id()||z&&b.Yf()<537)h=16;m.call(f);l.call(f,-1e7,1e7)},j=function(q,jc){var n=this;function Ec(){var a=this;l.call(a,-1e8,2e8);a.ye=function(){var b=a.Hb(),d=c.floor(b),f=v(d),e=b-c.floor(b);return{wb:f,xe:d,Jb:e}};a.fc=function(b,a){var d=c.floor(a);if(d!=a&&a>b)d++;Wb(d,e);n.s(j.we,v(a),v(b),a,b)}}function Dc(){var a=this;l.call(a,0,0,{xc:r});b.g(C,function(b){F&1&&b.Be(r);a.Ac(b);b.Sb(kb/fc)})}function Cc(){var a=this,b=Vb.rb;l.call(a,-1,2,{p:d.E,Je:{Jb:ec},xc:r},b,{Jb:1},{Jb:-2});a.Qc=b}function qc(o,m){var b=this,d,f,g,h,c;l.call(b,-1e8,2e8,{id:100});b.Yc=function(){P=e;S=i;n.s(j.Pe,v(y.kb()),y.kb())};b.ed=function(){P=k;h=k;var a=y.ye();n.s(j.Qe,v(y.kb()),y.kb());!a.Jb&&Gc(a.xe,s)};b.fc=function(j,i){var b;if(h)b=c;else{b=f;if(g){var e=i/g;b=a.Zd(e)*(f-d)+d}}y.R(b)};b.mc=function(a,e,c,h){d=a;f=e;g=c;y.R(a);b.R(0);b.kd(c,h)};b.Re=function(a){h=e;c=a;b.Zc(a,i,e)};b.Se=function(a){c=a};y=new Ec;y.T(o);y.T(m)}function sc(){var c=this,a=bc();b.N(a,0);b.cb(a,"pointerEvents","none");c.rb=a;c.Ee=function(c){b.db(a,c);b.H(a)};c.Gb=function(){b.eb(a);b.vc(a)}}function Ac(o,f){var d=this,q,P,x,h,A=[],z,G,Y,J,U,E,N,g,y,p;l.call(d,-w,w+1,{});function H(a){q&&q.Ad();X(o,a,0);E=e;q=new L.U(o,L,b.gg(b.q(o,"idle"))||oc,!t);q.R(0)}function bb(){q.yc<L.yc&&H()}function R(p,r,o){if(!J){J=e;if(h&&o){var g=o.width,c=o.height,m=g,l=c;if(g&&c&&a.Nb){if(a.Nb&3&&(!(a.Nb&4)||g>K||c>M)){var i=k,q=K/M*c/g;if(a.Nb&1)i=q>1;else if(a.Nb&2)i=q<1;m=i?g*M/c:K;l=i?M:c*K/g}b.v(h,m);b.B(h,l);b.W(h,(M-l)/2);b.V(h,(K-m)/2)}b.O(h,"absolute");n.s(j.mf,f)}}b.eb(r);p&&p(d)}function ab(b,c,e,g){if(g==S&&s==f&&t)if(!Fc){var a=v(b);D.Ce(a,f,c,d,e);c.lf();V.Sb(a-V.lc()-1);V.R(a);B.mc(b,b,0)}}function eb(b){if(b==S&&s==f){if(!g){var a=i;if(D)if(D.wb==f)a=D.ze();else D.Gb();bb();g=new yc(o,f,a,q);g.hd(p)}!g.Od()&&g.Sc()}}function I(e,h,l){if(e==f){if(e!=h)C[h]&&C[h].gd();else!l&&g&&g.kf();p&&p.Vb();var m=S=b.ub();d.Lb(b.gb(i,eb,m))}else{var k=c.min(f,e),j=c.max(f,e),o=c.min(j-k,k+r-j),n=w+a.jf-1;(!U||o<=n)&&d.Lb()}}function fb(){if(s==f&&g){g.Bb();p&&p.hf();p&&p.gf();g.bd()}}function hb(){s==f&&g&&g.Bb()}function db(a){!Q&&n.s(j.ff,f,a)}function T(){p=y.pInstance;g&&g.hd(p)}d.Lb=function(c,a){a=a||x;if(A.length&&!J){b.H(a);if(!Y){Y=e;n.s(j.ef,f);b.g(A,function(a){if(!b.K(a,"src")){a.src=b.q(a,"src2")||"";b.pb(a,a["display-origin"])}})}b.ug(A,h,b.gb(i,R,c,a))}else R(c,a)};d.of=function(){var j=f;if(a.Oc<0)j-=r;var e=j+a.Oc*wc;if(F&2)e=v(e);if(!(F&1)&&!ib)e=c.max(0,c.min(e,r-w));if(e!=f){if(D){var g=D.De(r);if(g){var k=S=b.ub(),h=C[v(e)];return h.Lb(b.gb(i,ab,e,h,g,k),x)}}cb(e)}else if(t){d.gd();I(f,f)}};d.Hc=function(){I(f,f,e)};d.gd=function(){p&&p.hf();p&&p.gf();d.rd();g&&g.bf();g=i;H()};d.lf=function(){b.eb(o)};d.rd=function(){b.H(o)};d.af=function(){p&&p.Vb()};function X(a,d,c,i){if(b.K(a,"jssor-slider"))return;if(!E){if(a.tagName=="IMG"){A.push(a);if(!b.K(a,"src")){U=e;a["display-origin"]=b.pb(a);b.eb(a)}}var f=b.se(a);if(f){var g=new Image;b.q(g,"src2",f);A.push(g)}if(c){b.N(a,(b.N(a)||0)+1);b.Fc(a,b.Fc(a)||0);b.Ec(a,b.Ec(a)||0);b.zb(a,{fb:0})}}var j=b.Ob(a);b.g(j,function(f){var j=f.tagName,l=b.q(f,"u");if(l=="player"&&!y){y=f;if(y.pInstance)T();else b.j(y,"dataavailable",T)}if(l=="caption"){if(d){b.be(f,b.q(f,"to"));b.cg(f,b.q(f,"bf"));N&&b.q(f,"3d")&&b.Lf(f,"preserve-3d")}else if(!b.Vd()){var g=b.sb(f,k,e);b.nc(g,f,a);b.kc(f,a);f=g;d=e}}else if(!E&&!c&&!h){if(j=="A"){if(b.q(f,"u")=="image")h=b.Gf(f,"IMG");else h=b.Q(f,"image",e);if(h){z=f;b.pb(z,"block");b.X(z,W);G=b.sb(z,e);b.O(z,"relative");b.Qb(G,0);b.cb(G,"backgroundColor","#000")}}else if(j=="IMG"&&b.q(f,"u")=="image")h=f;if(h){h.border=0;b.X(h,W)}}X(f,d,c+1,i)});!E&&c&&u.og(function(){for(var e=1;e<c;e++);b.cb(a,"pointerEvents")})}d.tc=function(c,b){var a=w-b;ec(P,a)};d.wb=f;m.call(d);N=b.q(o,"p");b.Kf(o,N);b.Jf(o,b.q(o,"po"));var O=b.Q(o,"thumb",e);if(O){b.sb(O);b.eb(O)}b.H(o);x=b.sb(gb);b.N(x,1e3);b.j(o,"click",db);H(e);d.Lc=h;d.xd=G;d.Rd=o;d.Qc=P=o;b.db(P,x);n.Mb(203,I);n.Mb(28,hb);n.Mb(24,fb)}function yc(z,f,p,q){var a=this,m=0,v=0,g,h,d,c,i,u,r,o=C[f];l.call(a,0,0);function w(){b.vc(O);hc&&i&&o.xd&&b.db(O,o.xd);b.H(O,!i&&o.Lc)}function x(){a.Sc()}function y(b){r=b;a.Bb();a.Sc()}a.Sc=function(){var b=a.Hb();if(!E&&!P&&!r&&s==f){if(!b){if(g&&!i){i=e;a.bd(e);n.s(j.Ze,f,m,v,g,c)}w()}var k,p=j.wd;if(b!=c)if(b==d)k=c;else if(b==h)k=d;else if(!b)k=h;else k=a.ce();n.s(p,f,b,m,h,d,c);var l=t&&(!G||H);if(b==c)(d!=c&&!(G&12)||l)&&o.of();else(l||b!=d)&&a.kd(k,x)}};a.kf=function(){d==c&&d==a.Hb()&&a.R(h)};a.bf=function(){D&&D.wb==f&&D.Gb();var b=a.Hb();b<c&&n.s(j.wd,f,-b-1,m,h,d,c)};a.bd=function(a){p&&b.Tb(lb,a&&p.Gc.vg?"":"hidden")};a.tc=function(b,a){if(i&&a>=g){i=k;w();o.rd();D.Gb();n.s(j.Ye,f,m,v,g,c)}n.s(j.Xe,f,a,m,h,d,c)};a.hd=function(a){if(a&&!u){u=a;a.Mb($JssorPlayer$.Le,y)}};p&&a.Ac(p);g=a.Cb();a.Ac(q);h=g+q.zd;c=a.Cb();d=t?g+q.sd:c}function Mb(a,c,d){b.V(a,c);b.W(a,d)}function ec(c,b){var a=z>0?z:fb,d=Ab*b*(a&1),e=Bb*b*(a>>1&1);Mb(c,d,e)}function Rb(){rb=P;Kb=B.ce();I=y.kb()}function Jb(){Rb();if(E||!H&&G&12){B.Bb();n.s(j.Ve)}}function ic(f){if(!E&&(H||!(G&12))&&!B.Od()){var d=y.kb(),b=c.ceil(I);if(f&&c.abs(J)>=a.qd){b=c.ceil(d);b+=jb}if(!(F&1))b=c.min(r-w,c.max(b,0));var e=c.abs(b-d);e=1-c.pow(1-e,5);if(!Q&&rb)B.nf(Kb);else if(d==b){ub.af();ub.Hc()}else B.mc(d,b,e*Yb)}}function Ib(a){!b.q(b.Cc(a),"nodrag")&&b.qc(a)}function uc(a){cc(a,1)}function cc(a,c){a=b.Kd(a);var h=b.Cc(a);if(!N&&!b.q(h,"nodrag")&&vc()&&(!c||a.touches.length==1)){E=e;zb=k;S=i;b.j(g,c?"touchmove":"mousemove",Cb);b.ub();Q=0;Jb();if(!rb)z=0;if(c){var f=a.touches[0];vb=f.clientX;wb=f.clientY}else{var d=b.Pd(a);vb=d.x;wb=d.y}J=0;hb=0;jb=0;n.s(j.Ue,v(I),I,a)}}function Cb(d){if(E){d=b.Kd(d);var f;if(d.type!="mousemove"){var l=d.touches[0];f={x:l.clientX,y:l.clientY}}else f=b.Pd(d);if(f){var j=f.x-vb,k=f.y-wb;if(c.floor(I)!=I)z=z||fb&N;if((j||k)&&!z){if(N==3)if(c.abs(k)>c.abs(j))z=2;else z=1;else z=N;if(ob&&z==1&&c.abs(k)-c.abs(j)>3)zb=e}if(z){var a=k,i=Bb;if(z==1){a=j;i=Ab}if(!(F&1)){if(a>0){var g=i*s,h=a-g;if(h>0)a=g+c.sqrt(h)*5}if(a<0){var g=i*(r-w-s),h=-a-g;if(h>0)a=-g-c.sqrt(h)*5}}if(J-hb<-2)jb=0;else if(J-hb>2)jb=-1;hb=J;J=a;tb=I-J/i/(Z||1);if(J&&z&&!zb){b.qc(d);if(!P)B.Re(tb);else B.Se(tb)}}}}}function bb(){tc();if(E){E=k;b.ub();b.ab(g,"mousemove",Cb);b.ab(g,"touchmove",Cb);Q=J;Q&&t&8&&(t=0);B.Bb();var a=y.kb();n.s(j.Te,v(a),a,v(I),I);G&12&&Rb();ic(e)}}function nc(c){if(Q){b.wf(c);var a=b.Cc(c);while(a&&x!==a){a.tagName=="A"&&b.qc(c);try{a=a.parentNode}catch(d){break}}}else t&4&&(t=0)}function Lb(a){C[s];s=v(a);ub=C[s];Wb(a);return s}function Gc(b,c){z=0;Lb(b);var a=v(b);if(t&2&&Xb>0&&a==r-1||Xb<0&&!a)t=0;n.s(j.ve,a,c)}function Wb(a,c){xb=a;b.g(T,function(b){b.Tc(v(a),a,c)})}function vc(){var b=j.od||0,a=Y;if(ob)a&1&&(a&=1);j.od|=a;return N=a&~b}function tc(){if(N){j.od&=~Y;N=0}}function bc(){var a=b.hc();b.X(a,W);b.O(a,"absolute");return a}function v(a){return(a%r+r)%r}function qb(b,d){t&8&&(t=0);if(d)if(!F){b=c.min(c.max(b+xb,0),r-w);d=k}else if(F&2){b=v(b+xb);d=k}cb(b,a.Xb,d)}function yb(){b.g(T,function(a){a.Pc(a.gc.wg<=H)})}function lc(){if(!H){H=1;yb();if(!E){G&12&&ic();G&3&&C[s]&&C[s].Hc()}}}function kc(){if(H){H=0;yb();E||!(G&12)||Jb()}}function mc(){W={bb:K,Y:M,f:0,i:0};b.g(U,function(a){b.X(a,W);b.O(a,"absolute");b.Tb(a,"hidden");b.eb(a)});b.X(gb,W)}function cb(g,f,l){if(Tb&&(!E&&(H||!(G&12))||a.yd)){P=e;E=k;B.Bb();if(f==h)f=Yb;var d=Db.Hb(),b=g;if(l){b=d+g;if(g>0)b=c.ceil(b);else b=c.floor(b)}if(F&2)b=v(b);if(!(F&1))b=c.max(0,c.min(b,r-w));var j=(b-d)%r;b=d+j;var i=d==b?0:f*c.abs(j);i=c.min(i,f*w*1.5);B.mc(d,b,i||1)}}n.Zc=function(){n.Ub(t||1)};n.Ub=function(a){if(a==h)return a;if(a!=t){t=a;t&&C[s]&&C[s].Hc()}};function X(){return b.v(A||q)}function mb(){return b.B(A||q)}n.tb=X;n.Eb=mb;function Fb(c,d){if(c==h)return b.v(q);if(!A){var a=b.hc(g);b.nd(a,b.nd(q));b.pc(a,b.pc(q));b.pb(a,"block");b.O(a,"relative");b.W(a,0);b.V(a,0);b.Tb(a,"visible");A=b.hc(g);b.O(A,"absolute");b.W(A,0);b.V(A,0);b.v(A,b.v(q));b.B(A,b.B(q));b.be(A,"0 0");b.db(A,a);var i=b.Ob(q);b.db(q,A);b.cb(q,"backgroundImage","");b.g(i,function(c){b.db(b.q(c,"noscale")?q:a,c);b.q(c,"autocenter")&&Nb.push(c)})}Z=c/(d?b.B:b.v)(A);b.tf(A,Z);var f=d?Z*X():c,e=d?c:Z*mb();b.v(q,f);b.B(q,e);b.g(Nb,function(a){var c=b.Wb(b.q(a,"autocenter"));b.qg(a,c)})}n.ge=Fb;m.call(n);n.rb=q=b.Kb(q);var a=b.G({Nb:0,jf:1,Rc:1,Ic:0,Ub:0,rc:1,Pb:e,yd:e,Oc:1,ad:3e3,cd:1,Xb:500,Zd:d.oc,qd:20,dd:0,n:1,fd:0,me:1,Vc:1,Jd:1},jc);a.Pb=a.Pb&&b.Xf();if(a.qe!=h)a.ad=a.qe;if(a.pe!=h)a.fd=a.pe;var fb=a.Vc&3,wc=(a.Vc&4)/-4||1,nb=a.ie,L=b.G({U:p,Pb:a.Pb},a.oe);L.ib=L.ib||L.xg;var Gb=a.ne,ab=a.le,eb=a.zg,R=!a.me,A,x=b.Q(q,"slides",R),gb=b.Q(q,"loading",R)||b.hc(g),Pb=b.Q(q,"navigator",R),gc=b.Q(q,"arrowleft",R),dc=b.Q(q,"arrowright",R),Ob=b.Q(q,"thumbnavigator",R),rc=b.v(x),pc=b.B(x),W,U=[],xc=b.Ob(x);b.g(xc,function(a){a.tagName=="DIV"&&!b.q(a,"u")&&U.push(a);b.N(a,(b.N(a)||0)+1)});var s=-1,xb,ub,r=U.length,K=a.ke||rc,M=a.je||pc,Zb=a.dd,Ab=K+Zb,Bb=M+Zb,fc=fb&1?Ab:Bb,w=c.min(a.n,r),lb,z,N,zb,T=[],Sb,Ub,Qb,hc,Fc,t,Xb=a.Oc,G=a.cd,oc=a.ad,Yb=a.Xb,sb,ib,kb,Tb=w<r,F=Tb?a.rc:0,Y,Q,H=1,P,E,S,vb=0,wb=0,J,hb,jb,Db,y,V,B,Vb=new sc,Z,Nb=[];if(r){if(a.Pb)Mb=function(a,c,d){b.zb(a,{Db:c,Ab:d})};t=a.Ub&63;n.gc=jc;mc();b.K(q,"jssor-slider",e);b.N(x,b.N(x)||0);b.O(x,"absolute");lb=b.sb(x,e);b.nc(lb,x);if(nb){hc=nb.yg;sb=nb.U;ib=w==1&&r>1&&sb&&(!b.Vd()||b.Dd()>=8)}kb=ib||w>=r||!(F&1)?0:a.fd;Y=(w>1||kb?fb:-1)&a.Jd;var Hb=x,C=[],D,O,Eb=b.Tf(),ob=Eb.Sf,I,rb,Kb,tb;Eb.Xd&&b.cb(Hb,Eb.Xd,([i,"pan-y","pan-x","none"])[Y]||"");V=new Cc;if(ib)D=new sb(Vb,K,M,nb,ob);b.db(lb,V.Qc);b.Tb(x,"hidden");O=bc();b.cb(O,"backgroundColor","#000");b.Qb(O,0);b.nc(O,Hb.firstChild,Hb);for(var db=0;db<U.length;db++){var zc=U[db],Bc=new Ac(zc,db);C.push(Bc)}b.eb(gb);Db=new Dc;B=new qc(Db,V);b.j(x,"click",nc,e);b.j(q,"mouseout",b.wc(lc,q));b.j(q,"mouseover",b.wc(kc,q));if(Y){b.j(x,"mousedown",cc);b.j(x,"touchstart",uc);b.j(x,"dragstart",Ib);b.j(x,"selectstart",Ib);b.j(g,"mouseup",bb);b.j(g,"touchend",bb);b.j(g,"touchcancel",bb);b.j(f,"blur",bb)}G&=ob?10:5;if(Pb&&Gb){Sb=new Gb.U(Pb,Gb,X(),mb());T.push(Sb)}if(ab&&gc&&dc){ab.rc=F;ab.n=w;Ub=new ab.U(gc,dc,ab,X(),mb());T.push(Ub)}if(Ob&&eb){eb.Ic=a.Ic;Qb=new eb.U(Ob,eb);T.push(Qb)}b.g(T,function(a){a.Jc(r,C,gb);a.Mb(o.Kc,qb)});b.cb(q,"visibility","visible");Fb(X());yb();a.Rc&&b.j(g,"keydown",function(b){if(b.keyCode==37)qb(-a.Rc,e);else b.keyCode==39&&qb(a.Rc,e)});var pb=a.Ic;if(!(F&1))pb=c.max(0,c.min(pb,r-w));B.mc(pb,pb,0)}};j.ff=21;j.Ue=22;j.Te=23;j.Pe=24;j.Qe=25;j.ef=26;j.mf=27;j.Ve=28;j.we=202;j.ve=203;j.Ze=206;j.Ye=207;j.Xe=208;j.wd=209;var o={Kc:1},q=function(d,C){var f=this;m.call(f);d=b.Kb(d);var s,A,z,r,l=0,a,n,j,w,x,h,g,q,p,B=[],y=[];function v(a){a!=-1&&y[a].kg(a==l)}function t(a){f.s(o.Kc,a*n)}f.rb=d;f.Tc=function(a){if(a!=r){var d=l,b=c.floor(a/n);l=b;r=a;v(d);v(b)}};f.Pc=function(a){b.H(d,a)};var u;f.Jc=function(D){if(!u){s=c.ceil(D/n);l=0;var o=q+w,r=p+x,m=c.ceil(s/j)-1;A=q+o*(!h?m:j-1);z=p+r*(h?m:j-1);b.v(d,A);b.B(d,z);for(var f=0;f<s;f++){var C=b.lg();b.xf(C,f+1);var k=b.rg(g,"numbertemplate",C,e);b.O(k,"absolute");var v=f%(m+1);b.V(k,!h?o*v:f%j*o);b.W(k,h?r*v:c.floor(f/(m+1))*r);b.db(d,k);B[f]=k;a.Mc&1&&b.j(k,"click",b.gb(i,t,f));a.Mc&2&&b.j(k,"mouseover",b.wc(b.gb(i,t,f),k));y[f]=b.Dc(k)}u=e}};f.gc=a=b.G({Fd:10,Td:10,Ud:1,Mc:1},C);g=b.Q(d,"prototype");q=b.v(g);p=b.B(g);b.kc(g,d);n=a.Wd||1;j=a.u||1;w=a.Fd;x=a.Td;h=a.Ud-1;a.uc==k&&b.K(d,"noscale",e);a.Rb&&b.K(d,"autocenter",a.Rb)},s=function(a,g,h){var c=this;m.call(c);var r,d,f,j;b.v(a);b.B(a);var p,n;function l(a){c.s(o.Kc,a,e)}function t(c){b.H(a,c);b.H(g,c)}function s(){p.Vb(h.rc||d>0);n.Vb(h.rc||d<r-h.n)}c.Tc=function(b,a,c){if(c)d=a;else{d=b;s()}};c.Pc=t;var q;c.Jc=function(c){r=c;d=0;if(!q){b.j(a,"click",b.gb(i,l,-j));b.j(g,"click",b.gb(i,l,j));p=b.Dc(a);n=b.Dc(g);q=e}};c.gc=f=b.G({Wd:1},h);j=f.Wd;if(f.uc==k){b.K(a,"noscale",e);b.K(g,"noscale",e)}if(f.Rb){b.K(a,"autocenter",f.Rb);b.K(g,"autocenter",f.Rb)}};function p(e,d,c){var a=this;l.call(a,0,c);a.Ad=b.pd;a.zd=0;a.sd=c}var t=function(v,h,u,E){var a=this,w,o={},p=h.ib,s=h.Ag,j=new l(0,0),q=[],g=[],D=E,f=D?1e8:0;l.call(a,0,0);function r(d,c){var a={};b.g(d,function(d,f){var e=o[f];if(e){if(b.Qd(d))d=r(d,c||f=="e");else if(c)if(b.ec(d))d=w[d];a[e]=d}});return a}function t(d,e){var a=[],c=b.Ob(d);b.g(c,function(c){var h=b.q(c,"u")=="caption";if(h){var d=b.q(c,"t"),g=p[b.Wb(d)]||p[d],f={rb:c,Gc:g};a.push(f)}a=a.concat(t(c,e+1))});return a}function n(c,e){var a=q[c];if(a==i){a=q[c]={qb:c,Uc:[],Yd:[]};var d=0;!b.g(g,function(a,b){d=b;return a.qb>c})&&d++;g.splice(d,0,a)}return a}function z(t,u,g){var a,d;if(s){var o=b.q(t,"c");if(o){var m=s[b.Wb(o)];if(m){a=n(m.r,0);a.Mf=m.e||0}}}b.g(u,function(i){var h=b.G(e,{},r(i)),j=b.sc(h.p);delete h.p;if(h.i){h.J=h.i;j.J=j.i;delete h.i}if(h.f){h.I=h.f;j.I=j.f;delete h.f}var o={p:j,tb:g.bb,Eb:g.Y},k=new l(i.b,i.d,o,t,g,h);f=c.max(f,i.b+i.d);if(a){if(!d)d=new l(i.b,0);d.T(k)}else{var m=n(i.b,i.b+i.d);m.Uc.push(k)}g=b.We(g,h)});if(a&&d){d.Ae();var h=d,j,k=d.lc(),p=d.Cb(),q=c.max(p,a.Mf);if(a.qb<p){if(a.qb>k){h=new l(k,a.qb-k);h.T(d,e)}else h=i;j=new l(a.qb,q-k,{xc:q-a.qb,Ie:e});j.T(d,e)}h&&a.Uc.push(h);j&&a.Yd.push(j)}return g}function y(a){b.g(a,function(d){var a=d.rb,f=b.v(a),e=b.B(a),c={i:b.V(a),f:b.W(a),J:0,I:0,m:1,Z:b.N(a)||0,k:0,nb:0,jb:0,M:1,L:1,Db:0,Ab:0,fb:0,ic:0,jc:0,bb:f,Y:e,a:{f:0,C:f,D:e,i:0}};c.Cd=c.i;c.Bd=c.f;z(a,d.Gc,c)})}function B(f,d,g){var c=f.b-d;if(c){var b=new l(d,c);b.T(j,e);b.Sb(g);a.T(b)}a.Ed(f.d);return c}function A(e){var c=j.lc(),d=0;b.g(e,function(e,f){e=b.G({d:u},e);B(e,c,d);c=e.b;d+=e.d;if(!f||e.t==2){a.zd=c;a.sd=c+e.d}})}function k(h,e,d){var g=e.length;if(g>4)for(var m=c.ceil(g/4),a=0;a<m;a++){var i=e.slice(a*4,c.min(a*4+4,g)),j=new l(i[0].qb,0);k(j,i,d);h.T(j)}else b.g(e,function(a){b.g(d?a.Yd:a.Uc,function(a){d&&a.Ed(f-a.Cb());h.T(a)})})}a.Ad=function(){a.R(-1,e)};w=[d.E,d.Ib,d.Nd,d.oc,d.sg,d.xb,d.Sd,d.pg,d.eg,d.Hf,d.Ff,d.Ef,d.ae,d.Df,d.Cf,d.Bf,d.If,d.z,d.Af,d.yf,d.vf,d.sf,d.zf,d.bg,d.ag,d.fg,d.Vf,d.Uf,d.Rf,d.vd,d.Nc,d.Qf,d.Of,d.Nf];var C={f:"y",i:"x",D:"m",C:"t",k:"r",nb:"rX",jb:"rY",M:"sX",L:"sY",Db:"tX",Ab:"tY",fb:"tZ",ic:"kX",jc:"kY",m:"o",p:"e",Z:"i",a:"c"};b.g(C,function(b,a){o[b]=a});y(t(v,1));k(j,g);var x=h.rf||[],m=[].concat(x[b.Wb(b.q(v,"b"))]||[]);m.push({b:f,d:m.length?0:u});A(m);f=c.max(f,a.Cb());k(a,g,e);a.R(-1)};jssor_1_slider_init=function(){var h=[{A:1e3,S:80,n:8,u:4,a:15,F:e,p:d.oc},{A:1200,y:.3,n:2,vb:{f:[.3,.7]},mb:{bc:12},p:{f:d.xb,m:d.E},m:2},{A:1e3,x:-1,y:2,u:2,l:11,k:1,F:e,ob:2049,mb:{Xc:15},p:{i:d.z,f:d.z,l:d.z,m:d.E,k:d.z},m:2,P:{k:.85}},{A:1200,x:4,n:2,l:11,F:e,ob:2049,mb:{bc:15},p:{i:d.z,l:d.z,m:d.E},m:2},{A:1e3,x:4,y:-4,l:11,k:1,F:e,p:{i:d.z,f:d.z,l:d.z,m:d.E,k:d.z},m:2,P:{k:.8}},{A:1500,x:.3,y:-.3,S:80,n:8,u:4,a:15,vb:{i:[.3,.7],f:[.3,.7]},p:{i:d.ld,f:d.ld,a:d.oc},P:{i:.8,f:2.5}},{A:1e3,x:-3,y:1,u:2,l:11,k:1,F:e,ob:2049,mb:{Xc:28},p:{i:d.z,f:d.z,l:d.z,m:d.E,k:d.z},m:2,P:{k:.7}},{A:1200,y:-1,n:8,u:4,a:15,vb:{f:[.5,.5],a:[0,.5]},dc:n.pf,mb:{bc:12},Fe:.5},{A:1e3,x:.5,y:.5,l:1,k:1,F:e,p:{i:d.xb,f:d.xb,l:d.xb,m:d.E,k:d.xb},m:2,P:{k:.5}},{A:1200,x:-.6,y:-.6,l:1,k:1,vb:{i:[.2,.8],f:[.2,.8],l:[.2,.8],k:[.2,.8]},p:{l:d.Ib,m:d.E,k:d.Ib},m:2,P:{k:.5}},{A:1500,y:-.5,S:60,n:15,F:e,dc:n.Oe,p:d.Pf,P:{f:1.5}},{A:1e3,S:30,n:8,u:4,a:15,dc:n.ue,ob:2050,p:d.Nd},{A:1200,S:20,a:3,F:e,ob:260,p:{a:d.Sd,m:d.E},m:2}],i=[[{b:-1,d:1,o:-1},{b:0,d:1200,y:300,o:1,e:{y:24,o:6}},{b:5600,d:800,y:-200,o:-1,e:{y:5}}],[{b:-1,d:1,o:-1},{b:400,d:800,x:200,o:1,e:{x:27,o:6}},{b:5600,d:800,x:-200,o:-1,e:{x:5}}],[{b:-1,d:1,o:-1},{b:400,d:800,x:-200,o:1,e:{x:27,o:6}},{b:5600,d:800,x:200,o:-1,e:{x:5}}],[{b:-1,d:1,o:-1},{b:1600,d:600,x:200,y:-200,o:1,e:{x:3,y:3}},{b:5600,d:800,o:-1}],[{b:4600,d:960,x:-204,e:{x:1}}],[{b:-1,d:1,sX:-1,sY:-1},{b:3400,d:400,sX:1,sY:1},{b:3800,d:300,o:-1,sX:.1,sY:.1}],[{b:-1,d:1,sX:-1,sY:-1},{b:3520,d:400,sX:1,sY:1},{b:3920,d:300,o:-1,sX:.1,sY:.1}],[{b:-1,d:1,o:-1},{b:2200,d:1200,x:-135,y:-24,o:1,e:{x:7,y:7}},{b:4600,d:640,x:-130,e:{x:1}}],[{b:-1,d:1,o:-1},{b:4600,d:240,x:-75,o:1},{b:4840,d:480,x:-150},{b:5320,d:240,x:-75,o:-1}],[{b:2800,d:600,y:70,sX:-.5,sY:-.5,e:{y:5}},{b:6e3,d:600,y:50,r:-10},{b:7e3,d:400,o:-1,rX:10,rY:-10}],[{b:0,d:600,x:-742,sX:4,sY:4,e:{x:6}},{b:900,d:600,sX:-4,sY:-4}],[{b:-1,d:1,o:-1},{b:400,d:500,o:1,e:{o:5}}],[{b:-1,d:1,o:-1,r:-180},{b:1500,d:500,o:1,r:180,e:{r:27}}],[{b:-1,d:1,o:-1,r:180},{b:2e3,d:500,o:1,r:-180,e:{r:27}}],[{b:2800,d:600,y:-270,e:{y:6}}],[{b:6e3,d:600,y:-100,r:-10,e:{y:6}},{b:7e3,d:400,o:-1,rX:-10,rY:10}],[{b:-1,d:1,sX:-1,sY:-1},{b:3400,d:400,sX:1.33,sY:1.33,e:{sX:7,sY:7}},{b:3800,d:200,sX:-.33,sY:-.33,e:{sX:16,sY:16}}],[{b:-1,d:1,o:-1},{b:3400,d:600,o:1},{b:4e3,d:1e3,r:360,e:{r:1}}],[{b:-1,d:1,o:-1},{b:3400,d:600,y:-70,o:1,e:{y:27}}],[{b:-1,d:1,sX:-1,sY:-1},{b:3700,d:400,sX:1.33,sY:1.33,e:{sX:7,sY:7}},{b:4100,d:200,sX:-.33,sY:-.33,e:{sX:16,sY:16}}],[{b:-1,d:1,o:-1},{b:3700,d:600,o:1},{b:4300,d:1e3,r:360}],[{b:-1,d:1,o:-1},{b:3700,d:600,x:-150,o:1,e:{x:27}}],[{b:-1,d:1,sX:-1,sY:-1},{b:4e3,d:400,sX:1.33,sY:1.33,e:{sX:7,sY:7}},{b:4400,d:200,sX:-.33,sY:-.33,e:{sX:16,sY:16}}],[{b:-1,d:1,o:-1},{b:4e3,d:600,o:1},{b:4600,d:1e3,r:360}],[{b:-1,d:1,o:-1},{b:4e3,d:600,x:150,o:1,e:{x:27}}],[{b:9300,d:600,o:-1,r:540,sX:-.5,sY:-.5,e:{r:5}}],[{b:-1,d:1,o:-1,sX:2,sY:2},{b:6880,d:20,o:1},{b:6900,d:300,sX:-2.08,sY:-2.08,e:{sX:27,sY:27}},{b:7200,d:240,sX:.08,sY:.08}],[{b:-1,d:1,o:-1,sX:5,sY:5},{b:6300,d:600,o:1,sX:-5,sY:-5}],[{b:-1,d:1,o:-1},{b:7200,d:440,o:1}],[{b:-1,d:1,o:-1,sX:-.9,sY:-.9},{b:7420,d:20,o:1},{b:7440,d:200,r:180,sX:.4,sY:.4},{b:7640,d:200,r:180,sX:.5,sY:.5}],[{b:-1,d:1,o:-1,r:-60,sX:-.9,sY:-.9},{b:7620,d:20,o:1},{b:7640,d:300,r:60,sX:1.1,sY:1.1},{b:7940,d:160,sX:-.2,sY:-.2}],[{b:-1,d:1,o:-1,sX:-.9,sY:-.9},{b:7920,d:20,o:1},{b:7940,d:300,sX:1.4,sY:1.4},{b:8240,d:160,sX:-.5,sY:-.5}],[{b:-1,d:1,o:-1,sX:-.9,sY:-.9},{b:7620,d:20,o:1},{b:7640,d:200,r:180,sX:.4,sY:.4},{b:7840,d:200,r:180,sX:.5,sY:.5}],[{b:-1,d:1,o:-1,r:-60,sX:-.9,sY:-.9},{b:7820,d:20,o:1},{b:7840,d:300,r:60,sX:1.1,sY:1.1},{b:8140,d:160,sX:-.2,sY:-.2}],[{b:-1,d:1,o:-1,sX:-.9,sY:-.9},{b:8120,d:20,o:1},{b:8140,d:300,sX:1.4,sY:1.4},{b:8440,d:160,sX:-.5,sY:-.5}],[{b:-1,d:1,o:-1,sX:-.9,sY:-.9},{b:7820,d:20,o:1},{b:7840,d:200,r:180,sX:.4,sY:.4},{b:8040,d:200,r:180,sX:.5,sY:.5}],[{b:-1,d:1,o:-1,r:-60,sX:-.9,sY:-.9},{b:8020,d:20,o:1},{b:8040,d:300,r:60,sX:1.1,sY:1.1},{b:8340,d:160,sX:-.2,sY:-.2}],[{b:-1,d:1,o:-1,sX:-.9,sY:-.9},{b:8320,d:20,o:1},{b:8340,d:300,sX:1.4,sY:1.4},{b:8640,d:160,sX:-.5,sY:-.5}],[{b:-1,d:1,o:-1,sX:-.9,sY:-.9},{b:8020,d:20,o:1},{b:8040,d:200,r:180,sX:.4,sY:.4},{b:8240,d:200,r:180,sX:.5,sY:.5}],[{b:-1,d:1,o:-1,r:-60,sX:-.9,sY:-.9},{b:8220,d:20,o:1},{b:8240,d:300,r:60,sX:1.1,sY:1.1},{b:8540,d:160,sX:-.2,sY:-.2}],[{b:-1,d:1,o:-1,sX:-.9,sY:-.9},{b:8520,d:20,o:1},{b:8540,d:300,sX:1.4,sY:1.4},{b:8840,d:160,sX:-.5,sY:-.5}],[{b:-1,d:1,o:-1,sX:-.9,sY:-.9},{b:8220,d:20,o:1},{b:8240,d:200,r:180,sX:.4,sY:.4},{b:8440,d:200,r:180,sX:.5,sY:.5}],[{b:-1,d:1,o:-1,r:-60,sX:-.9,sY:-.9},{b:8420,d:20,o:1},{b:8440,d:300,r:60,sX:1.1,sY:1.1},{b:8740,d:160,sX:-.2,sY:-.2}],[{b:-1,d:1,o:-1,sX:-.9,sY:-.9},{b:8720,d:20,o:1},{b:8740,d:300,sX:1.4,sY:1.4},{b:9040,d:160,sX:-.5,sY:-.5}],[{b:-1,d:1,o:-1,sX:-.9,sY:-.9},{b:8220,d:20,o:1},{b:8240,d:200,r:180,sX:.4,sY:.4},{b:8440,d:200,r:180,sX:.5,sY:.5}],[{b:-1,d:1,o:-1,r:-60,sX:-.9,sY:-.9},{b:8420,d:20,o:1},{b:8440,d:300,r:60,sX:1.1,sY:1.1},{b:8740,d:160,sX:-.2,sY:-.2}],[{b:-1,d:1,o:-1,sX:-.9,sY:-.9},{b:8720,d:20,o:1},{b:8740,d:300,sX:1.4,sY:1.4},{b:9040,d:160,sX:-.5,sY:-.5}],[{b:-1,d:1,sX:-.2,sY:-.2},{b:0,d:400,y:330,e:{y:1}},{b:900,d:400,y:50,rX:80,e:{y:1,rX:1}},{b:20700,d:1e3,y:-95,rX:-80,sX:.2,sY:.2,e:{y:16,rX:16,sX:16,sY:16}},{b:22700,d:900,y:25,o:-1,rX:60}],[{b:-1,d:1,o:-.5},{b:900,d:400,o:-.5}],[{b:-1,d:1,sX:-.2,sY:-.2},{b:1700,d:400,y:310,e:{y:1}},{b:2600,d:400,y:50,rX:80,e:{y:1,rX:1}},{b:19700,d:1e3,y:20,e:{y:1}},{b:20700,d:1e3,y:-95,rX:-80,sX:.2,sY:.2,e:{y:16,rX:16,sX:16,sY:16}},{b:22700,d:900,y:25,o:-1,rX:60}],[{b:19700,d:1e3,o:-1}],[{b:-1,d:1,o:-.5},{b:2600,d:400,o:-.5}],[{b:-1,d:1,sX:-.2,sY:-.2},{b:3400,d:400,y:290,e:{y:1}},{b:4800,d:400,y:50,rX:80,e:{y:1,rX:1}},{b:19700,d:1e3,y:40,e:{y:1}},{b:20700,d:1e3,y:-95,rX:-80,sX:.2,sY:.2,e:{y:16,rX:16,sX:16,sY:16}},{b:22700,d:900,y:25,o:-1,rX:60}],[{b:19700,d:1e3,o:-1}],[{b:-1,d:1,c:{t:-280}},{b:3800,d:100,c:{t:50.4},e:{c:{t:32}}},{b:3900,d:100,c:{t:33.6},e:{c:{t:32}}},{b:4e3,d:100,c:{t:30.8},e:{c:{t:32}}},{b:4100,d:100,c:{t:30.8},e:{c:{t:32}}},{b:4200,d:100,c:{t:33.6},e:{c:{t:32}}},{b:4300,d:100,c:{t:22.4},e:{c:{t:32}}},{b:4400,d:100,c:{t:28},e:{c:{t:32}}},{b:4500,d:100,c:{t:50.4},e:{c:{t:32}}}],[{b:-1,d:1,o:-.5},{b:4800,d:400,o:-.5}],[{b:-1,d:1,sX:-.2,sY:-.2},{b:5700,d:400,y:270,e:{y:1}},{b:6600,d:400,y:50,rX:40,e:{y:1,rX:1}},{b:14700,d:500,rX:40,e:{rX:1}},{b:19700,d:1e3,y:60,e:{y:1}},{b:20700,d:1e3,y:-95,rX:-80,sX:.2,sY:.2,e:{y:16,rX:16,sX:16,sY:16}},{b:22700,d:900,y:25,o:-1,rX:60}],[{b:19700,d:1e3,o:-1}],[{b:6600,d:400,o:-.2},{b:14700,d:500,o:-.8}],[{b:-1,d:1,o:-.5},{b:14700,d:500,o:-.5}],[{b:-1,d:1,sX:-.2,sY:-.2},{b:7500,d:400,y:270,e:{y:1}},{b:8400,d:400,y:50,rX:40,e:{y:1,rX:1}},{b:14700,d:500,rX:40,e:{rX:1}},{b:19700,d:1e3,y:60,e:{y:1}},{b:20700,d:1e3,y:-95,rX:-80,sX:.2,sY:.2,e:{y:16,rX:16,sX:16,sY:16}},{b:22700,d:900,y:25,o:-1,rX:60}],[{b:8400,d:400,o:-1}],[{b:-1,d:1,o:-.5},{b:8400,d:400,o:-.5}],[{b:-1,d:1,sX:-.2,sY:-.2},{b:9300,d:400,y:270,e:{y:1}},{b:10200,d:400,y:50,rX:40,e:{y:1}},{b:14700,d:500,rX:40,e:{rX:1}},{b:19700,d:1e3,y:60,e:{y:1}},{b:20700,d:1e3,y:-95,rX:-80,sX:.2,sY:.2,e:{y:16,rX:16,sX:16,sY:16}},{b:22700,d:900,y:25,o:-1,rX:60}],[{b:10200,d:400,o:-1}],[{b:-1,d:1,o:-.5},{b:10200,d:400,o:-.5}],[{b:-1,d:1,sX:-.2,sY:-.2},{b:11100,d:400,y:270,e:{y:1}},{b:12e3,d:400,y:50,rX:40,e:{y:1,rX:1}},{b:14700,d:500,rX:40,e:{rX:1}},{b:19700,d:1e3,y:60,e:{y:1}},{b:20700,d:1e3,y:-95,rX:-80,sX:.2,sY:.2,e:{y:16,rX:16,sX:16,sY:16}},{b:22700,d:900,y:25,o:-1,rX:60}],[{b:12e3,d:400,o:-1}],[{b:-1,d:1,o:-.5},{b:12e3,d:400,o:-.5}],[{b:-1,d:1,sX:-.2,sY:-.2},{b:12900,d:400,y:270,e:{y:1}},{b:13800,d:400,y:50,rX:40,e:{y:1,rX:1}},{b:14700,d:500,rX:40,e:{rX:1}},{b:19700,d:1e3,y:60,e:{y:1}},{b:20700,d:1e3,y:-95,rX:-80,sX:.2,sY:.2,e:{y:16,rX:16,sX:16,sY:16}},{b:22700,d:900,y:25,o:-1,rX:60}],[{b:13800,d:400,o:-1}],[{b:-1,d:1,o:-.5},{b:13800,d:400,o:-.5}],[{b:-1,d:1,sX:-.2,sY:-.2},{b:15700,d:400,y:270,e:{y:1}},{b:18800,d:400,y:30,rX:80,e:{y:1,rX:1}},{b:19700,d:1e3,y:80,e:{y:1}},{b:20700,d:1e3,y:-95,rX:-80,sX:.2,sY:.2,e:{y:16,rX:16,sX:16,sY:16}},{b:22700,d:900,y:25,o:-1,rX:60}],[{b:19700,d:1e3,o:-1}],[{b:-1,d:1,o:-.5},{b:18800,d:400,o:-.5}],[{b:-1,d:1,o:-1},{b:16100,d:300,o:1},{b:16400,d:500,x:-238,e:{x:6}}],[{b:-1,d:1,o:-1},{b:16100,d:300,o:1},{b:16400,d:500,x:238,e:{x:6}}],[{b:-1,d:1,o:-1},{b:16700,d:400,y:200,o:1,e:{y:2,o:6}},{b:17100,d:300,y:-28,e:{y:3}},{b:17400,d:300,y:28,e:{y:2}}],[{b:-1,d:1,o:-1},{b:16900,d:400,y:200,o:1,e:{y:2,o:6}},{b:17300,d:300,y:-28,e:{y:3}},{b:17600,d:300,y:28,e:{y:2}}],[{b:-1,d:1,o:-1},{b:17100,d:400,y:200,o:1,e:{y:2,o:6}},{b:17500,d:300,y:-28,e:{y:3}},{b:17800,d:300,y:28,e:{y:2}}],[{b:-1,d:1,o:-1},{b:17300,d:400,y:200,o:1,e:{y:2,o:6}},{b:17700,d:300,y:-28,e:{y:3}},{b:18e3,d:300,y:28,e:{y:2}}]],k={Ub:1,Xb:800,Zd:d.ae,ie:{U:r,ib:h,Ne:1},oe:{U:t,ib:i,rf:[[{d:2e3,b:5600,t:2}],[{d:2e3,b:9300,t:2}],[{d:2e3,b:22700}]]},le:{U:s},ne:{U:q}},g=new j("jssor_1",k);function a(){var b=g.rb.parentNode.clientWidth;if(b){b=c.min(b,980);g.ge(b)}else f.setTimeout(a,30)}a();b.j(f,"load",a);b.j(f,"resize",a);b.j(f,"orientationchange",a)}})(window,document,Math,null,true,false)
</script>



	<section id="page"> <!-- Defining the #page section with the section tag -->

	<header> <!-- Defining the header section of the page with the appropriate tag -->

	<hgroup>
	<h1>Bikers World!</h1>
	<h3>Track on Life!!</h3>
	</hgroup> <nav class="clear"> <!-- The nav link semantically marks your main site navigation -->
	<ul>
		<li><a href="moves around here only">moves around here only</a></li>
		<li><a href="#article1">photoshoot</a></li>
		<li><a href="#article2">login</a></li>
		<li><a href="#article2">carousel</a></li>
		<li><a href="#article3">Navigation menu</a></li>
		<!-- <li><a href="#article3">Ajax tabs</a></li> -->

	</ul>


	</nav> </header>
	
	
	<p><a href="LoginPage"><img border="0" alt="login" src="resources/images/login.jpg" width="100" height="100"></a></p>
	<p><a href="RegistrationPage"><img border="0" alt="register" src="resources/images/register.jpg" width="100" height="100"></a></p>
	<p><a href="productPage"><img border="0" alt="product" src="resources/images/product.jpg" width="100" height="100"></a></p>
	<p><a href="CategoryPage"><img border="0" alt="category" src="resources/images/category.png" width="100" height="100"></a></p>
	<p><a href="SupplierPage"><img border="0" alt="supplier" src="resources/images/supplier.jpg" width="100" height="100"></a></p>
	<p><a href="Logout"><img border="0" alt="logout" src="resources/images/logout.jpg" width="100" height="100"></a></p>
<div class="dropdown">
  <img src="resources/images/product.jpg" alt="Trolltunga Norway" width="100" height="50">
  <div class="dropdown-content">
     <a href="ViewCategory">View</a>
      <a href="categoryPage">Add</a>
   
    <div class="desc">Beautiful Trolltunga, Norway</div>
  </div>
</div>	



	<section id="articles"> <!-- A new section with the articles -->

	<!-- Article 1 start -->

	<div class="line"></div>
	<!-- Dividing line --> <article id="article1"> <!-- The new article tag. The id is supplied so it can be scrolled into view. -->
	<article id="article2">

	<h2>Super Bikes!! Roaring Around</h2>

	<header>
	<hgroup>
	<h3>
		<a href="https://www.youtube.com/watch?v=_nPxWHFUwZw/" class="stuts">Back
			to form on <span>Test Rides</span>
		</a>
	</h3>
	</hgroup></header>


	<div class="line"></div>
	<div id="jssor_1"
		style="position: relative; margin: 0 auto; top: 0px; left: 5px; width: 620px; height: 340px; overflow: hidden; visibility: hidden;">
		<!-- Loading Screen -->
		<div data-u="loading" class="jssorl-oval"
			style="position: absolute; top: 0px; left: 0px; text-align: center; background-color: rgba(0, 0, 0, 0.7);">
			<img
				style="margin-top: -19.0px; position: relative; top: 50%; width: 38px; height: 38px;"
				src="resources/images/oval.svg" />
		</div>
		<div data-u="slides"
			style="cursor: default; position: relative; top: 0px; left: 5px; width: 580px; height: 340px; overflow: hidden;">
			<div data-b="0">
				<img data-u="image" src="resources/images/dc5.jpg" />
				<!-- <div style="position:absolute;top:107px;left:460px;width:460px;height:210px;z-index:0;">
<img data-u="caption" data-t="0" style="position:absolute;top:-300px;left:89px;width:210px;height:178px;z-index:0;" src="resources/images/5.jpg" />
<img data-u="caption" data-t="1" style="position:absolute;top:55px;left:-200px;width:114px;height:144px;z-index:0;" src="resources/images/2.jpg" />
<img data-u="caption" data-t="2" style="position:absolute;top:88px;left:420px;width:219px;height:120px;z-index:0;" src="resources/images/1.jpg" />
</div>
-->
				<div data-u="caption" data-t="3" data-to="0% 100%"
					style="position: absolute; top: 240px; left: 120px; width: 257px; height: 127px; z-index: 0;">
					<div
						style="position: absolute; top: 4px; left: 34px; width: 198px; height: 150px; z-index: 0; overflow: hidden;">
						<img data-u="caption" data-t="4"
							style="position: absolute; top: -2px; left: -2px; width: 408px; height: 116px; z-index: 0;"
							src="resources/images/mir1.jpg" />
					</div>
					<img
						style="position: absolute; top: 0px; left: 0px; width: 257px; height: 127px; z-index: 0;"
						src="resources/images/mock-phone.png" /> <img data-u="caption"
						data-t="5"
						style="position: absolute; top: 22px; left: 139px; width: 108px; height: 108px; z-index: 0;"
						src="resources/images/circle-hollow.png" /> <img data-u="caption"
						data-t="6"
						style="position: absolute; top: 31px; left: 148px; width: 90px; height: 90px; z-index: 0;"
						src="resources/images/circle-solid.png" /> <img data-u="caption"
						data-t="7"
						style="position: absolute; top: 100px; left: 300px; width: 63px; height: 77px; z-index: 0;"
						src="resources/images/hand.png" /> <img data-u="caption"
						data-t="8"
						style="position: absolute; top: -35px; left: 255px; width: 75px; height: 27px; z-index: 0;"
						src="resources/images/swipe-arrow.png" />
				</div>
				<!-- <a href="http://www.jssor.com/help/slideshow-transitions.html"
				target="_blank"
				style="display: block; position: absolute; top: 22px; left: 300px; width: 250px; height: 36px; z-index: 0; font-size: 22px; color: #ffffff; line-height: 36px;">300+
				top bikes</a> -->
			</div>

			<div data-b="1" data-p="170.00">
				<img data-u="image" src="resources/images/bc2.jpg" />
				<!-- <a
				href="http://www.jssor.com/demos/introduction-slider.slider/=edit"
				target="_blank"
				style="display: block; position: absolute; top: 22px; left: 650px; width: 220px; height: 36px; z-index: 0; font-size: 22px; color: #ffffff; line-height: 36px; text-align: center;">About
				R15</a> -->

				<div data-u="caption" data-t="9" data-3d="1"
					style="position: absolute; top: 150px; left: -36px; width: 853 px; height: 150px; z-index: 0;">
					<div data-u="caption" data-t="10" data-to="100% 50%"
						style="position: absolute; top: 0px; left: 900px; width: 72px; height: 72px; z-index: 0; background-color: #eb9434;">

						<div data-u="caption" data-t="11"
							style="position: absolute; top: 0px; left: 0px; width: 72px; height: 72px; z-index: 0; font-size: 46px; color: #ffffff; line-height: 72px; text-align: center;">All

						</div>
					</div>
					<div data-u="caption" data-t="12" data-to="0% 50%"
						style="position: absolute; top: 0px; left: 220px; width: 175px; height: 72px; z-index: 0; background-color: #eb9434; font-size: 45px; color: #ffffff; line-height: 72px; text-align: center;">vehicles

					</div>
					<div data-u="caption" data-t="13" data-to="0% 50%"
						style="position: absolute; top: 0px; left: 395px; width: 230px; height: 72px; z-index: 0; background-color: #eb9434; font-size: 45px; color: #ffffff; line-height: 72px; text-align: center;">guaranteed

					</div>
					<div data-u="caption" data-t="14"
						style="position: absolute; top: 360px; left: 238px; width: 577px; height: 30px; z-index: 0; font-size: 24px; color: #ffffff; line-height: 30px; text-align: center;">bikers
						world is one of the most reliable one!</div>
				</div>

				<div
					style="position: absolute; top: 20px; left: 327px; width: 336px; height: 312px; z-index: 0;">
					<div data-u="caption" data-t="25"
						style="position: absolute; top: 82px; left: 104px; width: 128px; height: 147px; z-index: 0;">
					</div>
				</div>
			</div>
			<div data-b="2" data-p="816.0">
				<img data-u="image" src="resources/images/dc10.jpg" />
				<div
					style="position: absolute; top: 157px; left: 200px; width: 460px; height: 210px; z-index: 0;">
					<img data-u="caption" data-t="0"
						style="position: absolute; top: -420px; left: 150px; width: 160px; height: 128px; z-index: 0;"
						src="resources/images/5" /> <img data-u="caption" data-t="1"
						style="position: absolute; top: 8px; left: -65px; width: 94px; height: 114px; z-index: 0;"
						src="resources/images/2.jpg" /> <img data-u="caption" data-t="2"
						style="position: absolute; top: 8px; left: 427px; width: 149px; height: 140px; z-index: 0;"
						src="resources/images/1.jpg" />
				</div>

				<!-- <a
				href="http://www.jssor.com/demos/introduction-slider.slider/=edit"
				target="_blank"
				style="display: block; position: absolute; top: 22px; left: 500px; width: 220px; height: 36px; z-index: 0; font-size: 22px; color: #ffffff; line-height: 36px; text-align: center;">view
				about KTM</a> <a href="https://www.jssor.com/action/sign_up.aspx"
				target="_blank"
				style="display: block; position: absolute; top: 22px; left: 720px; width: 220px; height: 36px; z-index: 0; font-size: 22px; color: #ffffff; line-height: 36px; text-align: center;">Sign
				up Now!</a> -->
			</div>
			<a data-u="any" href="http://www.jssor.com" style="display: none">Introduction
				Slider</a>
		</div>
		<!-- Bullet Navigator -->
		<div data-u="navigator" class="jssorb05"
			style="bottom: 16px; right: 16px;" data-autocenter="1">
			<!-- bullet navigator item prototype -->
			<div data-u="prototype" style="width: 16px; height: 16px;"></div>
		</div>
		<!-- Arrow Navigator -->
		<span data-u="arrowleft" class="jssora22l"
			style="top: 0px; left: 10px; width: 40px; height: 58px;"
			data-autocenter="2"></span> <span data-u="arrowright"
			class="jssora22r"
			style="top: 0px; right: 10px; width: 40px; height: 58px;"
			data-autocenter="2"></span>
	</div>
	</article>  <!-- Article 1 end --> <!-- Article 2 start -->

	<div class="line"></div>
	
	<article id="article2">
	

<h2>Rockers Roaring</h2>

	<div class="line"></div>

	<div class="articleBody clear">
	<c:if test="${not empty registerButtonClicked}">
	<%@include file="RegistrationForm.jsp" %>
	</c:if>
	
	
	
	<c:if test="${not empty loginButtonClicked}">
	<%@include file="LoginForm.jsp" %>
	
	</c:if>
	</div>
	
	<div class="line">
	


</article>






	<article id="article3">
	<h2>Halftone Navigation Menu</h2>

	<div class="line"></div>

	<div class="articleBody clear">
		<figure> <a
			href="http://tutorialzine.com/2010/01/halftone-navigation-menu-jquery-css/"><img
			src="http://tutorialzine.com/img/featured/610.jpg" width="620"
			height="340" /></a> </figure>

		<p>Today we are making a CSS3 & jQuery halftone-style navigation
			menu, which will allow you to display animated halftone-style shapes
			in accordance with the navigation links, and will provide a simple
			editor for creating additional shapes as well.</p>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
			Integer luctus quam quis nibh fringilla sit amet consectetur lectus
			malesuada. Sed nec libero erat. Lorem ipsum dolor sit amet,
			consectetur adipiscing elit. Nunc mi nisi, rhoncus ut vestibulum ac,
			sollicitudin quis lorem. Duis felis dui, vulputate nec adipiscing
			nec, interdum vel tortor. Sed gravida, erat nec rutrum tincidunt,
			metus mauris imperdiet nunc, et elementum tortor nunc at eros. Donec
			malesuada congue molestie. Suspendisse potenti. Vestibulum cursus
			congue sem et feugiat. Morbi quis elit odio.</p>
	</div>
	</article> <!-- Article 3 end --> <br>


	<div class="line"></div>

	<!-- <article id="article4">
	<h2>Sweet AJAX Tabs</h2>

	<div class="line"></div>

	<div class="articleBody clear">
		<figure> <a
			href="http://tutorialzine.com/2010/01/sweet-tabs-jquery-ajax-css/"><img
			src="http://tutorialzine.com/img/featured/633.jpg" width="620"
			height="340" /></a> </figure>

		<p>Here we are making sweet AJAX-powered tabs with CSS3 and the
			newly released version 1.4 of jQuery.</p>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
			Integer luctus quam quis nibh fringilla sit amet consectetur lectus
			malesuada. Sed nec libero erat. Lorem ipsum dolor sit amet,
			consectetur adipiscing elit. Nunc mi nisi, rhoncus ut vestibulum ac,
			sollicitudin quis lorem. Duis felis dui, vulputate nec adipiscing
			nec, interdum vel tortor. Sed gravida, erat nec rutrum tincidunt,
			metus mauris imperdiet nunc, et elementum tortor nunc at eros. Donec
			malesuada congue molestie. Suspendisse potenti. Vestibulum cursus
			congue sem et feugiat. Morbi quis elit odio.</p>
	</div>
	</article> Article 2 end Article 3 start

	<div class="line"></div>
	 --> </section> <script type="text/javascript">jssor_1_slider_init();</script> <script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
	<script src="resources/js/jquery.scrollTo-min.js"></script> <script
		src="resources/js/script.js"></script>
		 <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>
		
</body>
</html>