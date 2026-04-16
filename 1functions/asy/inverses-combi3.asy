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


size(160,100,IgnoreAspect);

pair F(real x){return (x^2-1,x);}

path p=graph(F,-3.2,3.2);
//draw(graph(F,0,3.2),blue);
draw(graph(F,-3.2,0),Brown+linewidth(1));

yaxis(-3.3,0.99,red,LeftTicks(new real[]{-4,-2,2,4},new real[]{-3,-1,1,3}));
xaxis(-1.5,red,RightTicks(new real[]{2,4,6,8},ticks=new real[]{1,3,5,7,9}));


labelx("$x$",9,2S,red);
labely("$y$",0.8,2W,red);

label("$f^{-1}(x)=-\sqrt{x+1}$",(5.8,-1.3),Brown);

