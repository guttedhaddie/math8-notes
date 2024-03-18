settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(170,120,IgnoreAspect);

real f(real t){return 100*1.1^t;}
draw(graph(f,0.1,12),blue);


real x=7.27;
real ht=f(x);
draw((x,0)--(x,ht),heavygreen+dashed);

real f(real t){return 500/(2+3*(28/33)^t);}
draw(graph(f,0.1,11.5),orange);

real x=10.91;
real ht=f(x);
draw((x,0)--(x,ht)--(0,ht),heavygreen+dashed);

dot((0,100),heavygreen);
dot((1,110),heavygreen);

xaxis("$t$",0,12,red,RightTicks);
yaxis("$P$",0,300,red,LeftTicks(Step=100,step=50));


