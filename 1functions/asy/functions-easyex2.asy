settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(140,130,IgnoreAspect);

real f(real x){return 1/((2-x)^2);}

real del=0.4;

path p=reflect((0,0),(1,1))*graph(f,2+del,4.5);
path q=reflect((0,0),(1,1))*graph(f,-1.5,2-del);

draw(p,blue+linewidth(1));
draw(q,purple+linewidth(1));

xaxis("$x$",0,brown,RightTicks(beginlabel=false));
yaxis(-1.5,4.5,red,LeftTicks(Ticks=new real[]{-1,0,1,2,3,4},ticks=new real[]{-0.5,0.5,1.5,2.5,3.5}));

labely("$y$",4.5,3W,red);

dot((0,2),red,UnFill);


real y=3.2;
real x=2-1/(sqrt(y));
real X=2+1/(sqrt(y));
draw((y,0)--(y,4.5),orange+dashed);
dot((y,x),orange);
dot((y,X),orange);

label("$y=g(x)$",(4.7,3.2),blue);
label("$y=h(x)$",(4.7,0.8),purple);
