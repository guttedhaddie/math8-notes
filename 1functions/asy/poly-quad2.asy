settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(140,130,IgnoreAspect);

real f(real x){return -3x^2+12x+4;}

draw(graph(f,-0.5,4.5),blue);

xaxis(-1,5,red,RightTicks(new real[]{-1,0,1,2,3,4}));
yaxis("$y$",0,17,red,LeftTicks(new real[]{4,8,12,16}));

dot((2,16),heavygreen);
xtick(2+4/(sqrt(3)),purple);
xtick(2-4/(sqrt(3)),purple);

labelx("$x$",4.8,S,red);