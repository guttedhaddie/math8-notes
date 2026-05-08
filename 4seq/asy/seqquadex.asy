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


size(160,135,IgnoreAspect);

real f(real x){return 3*x^2-2;}

for(int n=1; n<=5; ++n){
	dot((n,f(n)),blue);
}

xaxis("$x$",0,5,red,RightTicks);
yaxis("$y$",0,80,red,LeftTicks(Step=20,step=10));


