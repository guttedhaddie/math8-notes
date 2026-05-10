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


size(160,120,IgnoreAspect);

real f(real x){return -x^2+9*x+2;}

for(int n=0; n<=5; ++n){
	dot((2n,f(2n)),blue);
}

xaxis("$x$",0,10,red,RightTicks(beginlabel=false));
yaxis("$y$",-8,22,red,LeftTicks(Step=10,step=5));


