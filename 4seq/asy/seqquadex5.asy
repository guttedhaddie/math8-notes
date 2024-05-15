settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(180,150,IgnoreAspect);

real f(real x){return 3*x-3;}
real g(real x){return 3^(x/2);}
real b=(log(3))/(log(2));
real h(real x){return x^b;}

dotfactor=10;


draw(graph(f,0,8),blue+linewidth(1));
draw(graph(g,0,8),magenta+linewidth(1));
draw(graph(h,0,8),heavygreen+linewidth(1));

dot((2,3));
dot((4,9));
dot((8,21),blue);
dot((8,81),magenta);
dot((8,27),heavygreen);

xaxis("$x$",0,8,red,RightTicks(new real[]{0,2,4,6,8}));
yaxis("$y$",0,85,red,LeftTicks(new real[]{0,20,40,60,80}));


