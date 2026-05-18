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


size(180,180,IgnoreAspect);

real f(real x){return 3*x-3;}
real g(real x){return 3^(x/2);}
real b=(log(3))/(log(2));
real h(real x){return x^b;}

dotfactor=10;


draw(graph(f,0,8),Blue+linewidth(1));
draw(graph(g,0,8),Magenta+linewidth(1));
draw(graph(h,0,8),lGreen+linewidth(1));

dot((2,3));
dot((4,9));
dot((8,21),Blue);
dot((8,81),Magenta);
dot((8,27),lGreen);

xaxis("$x$",0,8,red,RightTicks(new real[]{0,2,4,6,8}));
yaxis("$y$",0,85,red,LeftTicks(new real[]{0,20,40,60,80}));


