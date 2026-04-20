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

size(180);

dotfactor=8;

real h(real t){
	return 7+3*cos((5/31)*(t-2)*pi);
}

draw(graph(h,0,24),blue);

dot((2,h(2)),Magenta);
dot((8.2,h(8.2)),lGreen);

xaxis(0,26,red,RightTicks(new real[]{0,4,8,12,16,20,24}));
yaxis("$h(t)$",0,12,red,LeftTicks(new real[]{0,5,10}));
labelx("$t$",26,red);
