settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;

size(170,120,IgnoreAspect);

real h=1;

real P0=5-sqrt(25-16*h);
real P1=5+sqrt(25-16*h);

real M=P1-P0;
real k=1/16;
real y=1.5-h;

real f(real t){return y*M/(y+(M-y)*exp(-k*M*t))+P0;}
draw(graph(f,0,12),blue);

draw((0,P0)--(12,P0),green+dashed);
draw((0,P1)--(12,P1),green+dashed);

xaxis("$t$",0,12,red,RightTicks);
yaxis("$P$",0,10,red,LeftTicks(Step=2,step=1));


