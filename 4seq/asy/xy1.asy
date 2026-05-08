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


size(140);

real f(real x){return 3*x^2-2;}

real[] X={1,2,3,4,5};
real[] Y={1,10,25,36,73};
real[] D={9,15,21,27};
real[] DD={6,6,6};

label("$x$",(0,1/2));
label("$y$",(0,0));

for(int n=0; n<=3; ++n){
	label("$" + (string) X[n] +"$",(n+1,1/2));
	label("$" + (string) Y[n] +"$",(n+1,0));
	if(n<=2){
		draw(Label("$\scriptstyle +1$",align=N),subpath((n+1,1/2){NE}..(n+2,1/2){SE},0.2,0.8),Blue,Arrow(SimpleHead,6));
		draw(Label("$\scriptstyle +" + (string) D[n] +"$",align=S),subpath((n+1,0){SE}..(n+2,0){NE},0.25,0.75),Blue,Arrow(SimpleHead,6));
	}
	if(n<=1){
		draw(Label("$\scriptstyle +" + (string) DD[n] +"$",align=S),subpath((n+1.5,-0.5){SE}..(n+2.5,-0.5){NE},0.2,0.8),Red,Arrow(SimpleHead,6));
	}
}




