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
pen lgreen=rgb("00a000");
import graph;


size(160,0);

pair A=(1,3);
pair B=(4,1);
real m=(A.y-B.y)/(A.x-B.x);
real c=(B.x/(B.x-A.x))*(A.y-B.y)+B.y;

pair pt(real t){return t*A+(1-t)*B;}

draw(pt(-0.6)--pt(1.4),Blue+linewidth(1));

xaxis(0,5.7,Red,RightTicks);
yaxis("$y$",0,4,Red,LeftTicks());

ytick(Label("$c$",align=NE),c,Brown);

labelx("$x$",5.5,S,Red);


draw("$m$",A--(A.x,A.y+m),Brown,Arrow(Relative(0.65),arrowhead=TeXHead));
draw("$1$",(A.x,A.y+m)--(A.x+1,A.y+m),Brown,Arrow(Relative(0.6),arrowhead=TeXHead));
draw((A.x,A.y+m)--(A.x,0),Brown+dashed);
draw((A.x+1,A.y+m)--(A.x+1,0),Brown+dashed);
dot("$A$",A,NE,lgreen);
dot("$B$",B,NE,lgreen);
