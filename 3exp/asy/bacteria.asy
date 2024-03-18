settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");

import graph;


size(160,120,IgnoreAspect);

real f(real t){return 100*exp(t/2);}
real M=2*log(10);

draw(graph(f,0,M),blue);

xaxis("$t$",0,5,red,RightTicks);
yaxis("$P$",0,1000,red,LeftTicks(Step=200,step=100));


dot((4+3/7,f(4+3/7)),heavygreen);

