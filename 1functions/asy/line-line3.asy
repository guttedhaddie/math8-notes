settings.tex="lualatex";
defaultpen(fontsize(12pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{unicode-math}
\setmainfont{TeX Gyre Pagella}
\setmathfont{TeX Gyre Pagella Math}
\usepackage[svgnames]{xcolor}
");

import graph;


size(160,0);

pair A=(1,3);
pair B=(4,1);
real m=(A.y-B.y)/(A.x-B.x);
real c=(B.x/(B.x-A.x))*(A.y-B.y)+B.y;

pair pt(real t){return t*A+(1-t)*B;}

draw(pt(-0.6)--pt(1.4),blue);

xaxis(0,5.7,red,RightTicks);
yaxis("$y$",0,4,red,LeftTicks());

//ytick(Label("$c$",align=NE),c,heavygreen);

labelx("$x$",5.5,S,red);

pair P=pt(0.4);
pair Pl=(A.x,P.y);
pair Ab=(A.x,B.y);


//draw("$m$",A--(A.x,A.y+m),brown,Arrow(Relative(0.65),arrowhead=TeXHead));
//draw("$1$",(A.x,A.y+m)--(A.x+1,A.y+m),brown,Arrow(Relative(0.6),arrowhead=TeXHead));
//draw((A.x,A.y+m)--(A.x,0),brown+dashed);
//draw((A.x+1,A.y+m)--(A.x+1,0),brown+dashed);

draw(P--Pl);
draw(A--Ab--B);
draw(shift(Pl)*box((0,0),(0.2,0.2)));
draw(shift(Ab)*box((0,0),(0.2,0.2)));

dot("$A$",A,NE,heavygreen);
dot("$B$",B,NE,heavygreen);
dot("$P=(x,y)$",P,NE,heavygreen);
