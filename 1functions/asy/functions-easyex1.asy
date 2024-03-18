settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(140,0);

real f(real x){return 1/((2-x)^2);}

real del=0.4;

path p=graph(f,2+del,4.5);
path q=graph(f,-1.5,2-del);

draw(p,blue+linewidth(1));
draw(q,purple+linewidth(1));

xaxis("$x$",-1.5,4.5,red,RightTicks(Ticks=new real[]{-1,0,1,2,3,4},ticks=new real[]{-0.5,0.5,1.5,2.5,3.5}));
yaxis("$y$",0,brown,LeftTicks(beginlabel=false));

dot((2,0),red,UnFill);

real x=2.8;
real ht=f(2+del);
draw((x,0)--(x,ht),heavygreen+dashed);
dot((x,f(x)),heavygreen);

real y=3.2;
real x=2-1/(sqrt(y));
real X=2+1/(sqrt(y));
draw((0,y)--(4.5,y),orange+dashed);
dot((x,y),orange);
dot((X,y),orange);
