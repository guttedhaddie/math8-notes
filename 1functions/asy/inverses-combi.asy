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

size(240);

real f(real x){return x^2-1;}

draw(graph(f,0,3.2),blue+linewidth(1));
draw(graph(f,-3.2,0),Brown+linewidth(1));

xaxis("$x$",-3.3,3.5,red,RightTicks(new real[]{-2,2},new real[]{-3,-1,1,3}));
yaxis("$y$",-1.5,red,LeftTicks(new real[]{2,4,6,8},ticks=new real[]{1,3,5,7,9}));


label("$f(x)=x^2-1$",(0,-2.3));

draw(Label("$\operatorname{dom}f=[0,\infty)$",align=SE,Relative(0.3),blue),(4,5){dir(40)}..(12,8),Arrow);

draw(Label("$\operatorname{dom}f=(-\infty,0]$",align=NE,Relative(0.3),Brown),(4,2){dir(-40)}..(12,-1),Arrow);
