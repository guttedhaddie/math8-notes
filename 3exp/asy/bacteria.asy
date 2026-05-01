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

real f(real t){return 100*exp(t/2);}
real M=2*log(10);

draw(graph(f,0,M),blue);

xaxis("$t$",0,5,red,RightTicks);
yaxis("$P$",0,1000,red,LeftTicks(Step=200,step=100));


dot((4+3/7,f(4+3/7)),lGreen);

