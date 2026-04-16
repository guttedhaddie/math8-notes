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


size(0,160);

real f(real x){return 1/((2-x)^2);}

real del=0.4;

path p=reflect((0,0),(1,1))*graph(f,2+del,4.5);
path q=reflect((0,0),(1,1))*graph(f,-1.5,2-del);

draw(p,Blue+linewidth(1));
draw(q,Brown+linewidth(1));

xaxis("$x$",0,BlueViolet,RightTicks(new real[]{2,4,6},new real[]{1,3,5}));
yaxis(-1.5,4.5,red,LeftTicks(new real[]{0,2,4},new real[]{-1,1,3,5}));

labely("$y$",4.5,3W,red);

dot((0,2),red,UnFill);


real y=3.2;
real x=2-1/(sqrt(y));
real X=2+1/(sqrt(y));
draw((y,0)--(y,4.5),Magenta+dashed);
dot((y,x),Magenta);
dot((y,X),Magenta);

label("$y=g(x)$",(4.7,3.2),Blue);
label("$y=h(x)$",(4.7,0.8),Brown);
