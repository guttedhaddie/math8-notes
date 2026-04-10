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

import graph;


size(160,0);

pair A=(1,3);
pair B=(4,1);
real m=(A.y-B.y)/(A.x-B.x);
real c=(B.x/(B.x-A.x))*(A.y-B.y)+B.y;

pair pt(real t){return t*A+(1-t)*B;}

draw(pt(-0.6)--pt(1.4),Blue);

xaxis(0,5.7,RightTicks);
yaxis("$y$",0,4,LeftTicks());

labelx("$x$",5.5,S);

pair P=pt(0.4);
pair Pl=(A.x,P.y);
pair Ab=(A.x,B.y);


draw(P--Pl);
draw(A--Ab--B);
draw(shift(Pl)*box((0,0),(0.2,0.2)));
draw(shift(Ab)*box((0,0),(0.2,0.2)));

dot("$A$",A,NE,Blue);
dot("$B$",B,NE,Blue);
dot("$P=(x,y)$",P,NE,Blue);
