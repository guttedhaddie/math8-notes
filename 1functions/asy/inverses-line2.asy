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


size(0,110);

real f(real x){return 2x;}
real g(real x){return x/2;}

draw((f(-0.2),-0.2)--(f(2.1),2.1),blue+linewidth(1));


xaxis(0,4.4,red,RightTicks(new real[]{0,2,4},new real[]{1,3}));
yaxis(0,2.4,red,LeftTicks(new real[]{0,1,2},new real[]{0.5,1.5}));

real y=0.7;
//draw((0,y)--(f(y),0),dashed+lGreen,Arrow(Relative(0.5)));
//draw("$f$",(f(y),y)--(f(y),0),dashed+lGreen,Arrow(Relative(0.5)));

real x=3.3;
draw((x,0)--(x,g(x)),dashed+Magenta,Arrow(Relative(0.5)));
draw((x,g(x))--(0,g(x)),dashed+Magenta,Arrow(Relative(0.5)));


//ytick(Label("$x$",align=S),y,W,lGreen);
//xtick(Label("$y$",align=S),x,S,Magenta);
//ytick(Label("$y/2$",align=W),x/2,W,Magenta);
//ytick(Label("$2x$",align=W),2y,W,lGreen);

labelx("$y$",4.5,2S,red);
labely("$x$",2.5,2W,red);


