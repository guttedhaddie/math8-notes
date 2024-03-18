settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(170,120,IgnoreAspect);

real Ts=50;
real k=log(4/3);

real T(real t){return 50+160exp(-k*t);}
draw(graph(T,0,12),blue);


xaxis("$t$",0,12,red,RightTicks);
yaxis("$T$",0,210,red,LeftTicks(Step=50,step=25));

draw((3,0)--(3,T(3))--(0,T(3)),dashed+heavygreen);

draw((0,50)--(12,50),dashed+blue);


