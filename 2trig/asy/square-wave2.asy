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

size(300,120,IgnoreAspect);

dotfactor=8;

draw((0,1)--(pi,1),blue);
draw((pi,-1)--(2pi,-1),blue);
draw((2pi,1)--(2pi+2.3,1),blue+dashed);
draw((-2.3,-1)--(0,-1),blue+dashed);

dot((0,1),blue);
dot((pi,1),blue,UnFill);
dot((pi,-1),blue);
dot((2pi,-1),blue,UnFill);
dot((2pi,1),blue);
dot((0,-1),blue,UnFill);

xaxis("$x$",-2.3,2pi+2.3,red);
yaxis("$f(x)$",-1.1,1.2,red,LeftTicks(new real[]{-1,1}));
xtick(pi/2,S,red);
xtick(Label("$\pi$",align=S),pi,S,red);
xtick(3pi/2,S,red);
xtick(Label("$2\pi$",align=S),2pi,S,red);
xtick(-pi/2,S,red);
xtick(5pi/2,S,red);

real f(real x){return 4/pi*(sin(x)+sin(3*x)/3+sin(5*x)/5+sin(7*x)/7);}

draw(graph(f,-2.3,2pi+2.3,operator..),lGreen);
