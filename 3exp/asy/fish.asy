settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(170,120,IgnoreAspect);

real M=10;
real k=1/16;
real y=2.5;

real f(real t){return y*M/(y+(M-y)*exp(-k*M*t));}
draw(graph(f,0,12),blue);


draw((0,M)--(12,M),green+dashed);

xaxis("$t$",0,12,red,RightTicks);
yaxis("$P$",0,10,red,LeftTicks(Step=2,step=1));


