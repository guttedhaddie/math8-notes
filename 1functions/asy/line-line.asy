settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
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

ytick(Label("$c$",align=NE),c,heavygreen);

labelx("$x$",5.5,S,red);


draw("$m$",A--(A.x,A.y+m),brown,Arrow(Relative(0.65),arrowhead=TeXHead));
draw("$1$",(A.x,A.y+m)--(A.x+1,A.y+m),brown,Arrow(Relative(0.6),arrowhead=TeXHead));
draw((A.x,A.y+m)--(A.x,0),brown+dashed);
draw((A.x+1,A.y+m)--(A.x+1,0),brown+dashed);
dot("$A$",A,NE,blue);
dot("$B$",B,NE,blue);
