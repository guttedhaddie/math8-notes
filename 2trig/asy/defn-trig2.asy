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
import markers;

size(0,90);

real th=35;

pair A=(1,0);
pair O=(0,0);
pair B=dir(th);
pair D=(B.x,0);

//draw(arc(O,1,-20,100));
draw("$\theta$",arc(O,0.15,0,th));
draw("$r$",B--O);

draw(box(D-(0.05,0),D+(0,0.05)));
draw("$x$",O--D,lGreen);
draw("\phantom{$\sin\theta$}",D--B,blue);
draw("$y$",D--B,blue);

