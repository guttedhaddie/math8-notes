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


dot((0,3),blue);
dot((2,23),blue);
dot((4,41),blue);
dot((6,59),blue);
dot((8,77),blue);
dot((10,93),blue);

xaxis("$x$",0,10,red,RightTicks);
yaxis("$y$",0,93,red,LeftTicks(Step=20,step=10));


