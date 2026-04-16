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

path p=graph(f,2+del,4.5);
path q=graph(f,-1.5,2-del);

draw(p,Blue+linewidth(1));
draw(q,Brown+linewidth(1));

xaxis(-1.5,4.5,red,RightTicks(new real[]{0,2,4},new real[]{-1,1,3,5}));
yaxis("$y$",0,BlueViolet,LeftTicks(new real[]{2,4,6},new real[]{1,3,5}));

labelx("$x$",4.6,2S,red);

dot((2,0),red,UnFill);

real x=2.8;
real ht=f(2+del);
draw((x,0)--(x,ht),lGreen+dashed);
dot((x,f(x)),lGreen);

real y=3.2;
real x=2-1/(sqrt(y));
real X=2+1/(sqrt(y));
draw((0,y)--(4.5,y),Magenta+dashed);
dot((x,y),Magenta);
dot((X,y),Magenta);
