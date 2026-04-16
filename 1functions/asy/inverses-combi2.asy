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

draw(graph(F,0,3.2),blue+linewidth(1));

dot((-1.65,1),white);

xaxis(-1.5,red,RightTicks(new real[]{0,2,4,6,8},new real[]{1,3,5,7,9}));
yaxis(0,3.3,red,LeftTicks(new real[]{2,4},new real[]{-3,-1,1,3}));


labelx("$x$",9,2S,red);
labely("$y$",3.2,2W,red);

label("$f^{-1}(x)=\sqrt{x+1}$",(5.8,1.5),blue);

