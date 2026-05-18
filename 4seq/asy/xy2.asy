settings.tex="lualatex";
defaultpen(fontsize(12pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{unicode-math}
\setmainfont{TeX Gyre Pagella}
\setmathfont{TeX Gyre Pagella Math}
\usepackage[svgnames,x11names]{xcolor}
");

import x11colors;
pen lGreen=rgb("00a000");

import graph;


size(180);

real f(real x){return 3*x^2-2;}

real[] X={1,3,5,7};
real[] Y={15,135,1215,10935};
real[] D={120,1080,9720};
real[] DD={960,8640};
real[] M={9,9,9};

real h=0.8;

label("$x$",(0,h));
label("$y$",(0,0));

draw((0,2h/3)--(4.5,2h/3));
draw((0.5,-0.2)--(0.5,1));

for(int n=0; n<=3; ++n){
	label("$" + (string) X[n] +"$",(n+1,h));
	label("$" + (string) Y[n] +"$",(n+1,0));
	if(n<=2){
		draw(Label("$\scriptstyle +2$",align=N),subpath((n+1,h){NE}..(n+2,h){SE},0.2,h),Blue,Arrow(SimpleHead,6));
		draw(Label("$\scriptstyle +" + (string) D[n] +"$",align=S),subpath((n+1,0){SE}..(n+2,0){NE},0.25,0.75),Blue,Arrow(SimpleHead,6));
		draw(Label("$\scriptstyle \times" + (string) M[n] +"$",align=N),subpath((n+1,0){NE}..(n+2,0){SE},0.25,0.75),lGreen,Arrow(SimpleHead,6));
	}
	if(n<=1){
		draw(Label("$\scriptstyle +" + (string) DD[n] +"$",align=S),subpath((n+1.5,-0.5){SE}..(n+2.5,-0.5){NE},0.2,0.8),Red,Arrow(SimpleHead,6));
	}
}




