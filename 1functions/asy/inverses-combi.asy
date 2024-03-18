settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;

size(250);

real f(real x){return x^2-1;}

draw(graph(f,0,3.2),blue+linewidth(1));
draw(graph(f,-3.2,0),brown+linewidth(1));

xaxis("$x$",-3.3,3.5,red,RightTicks(Ticks=new real[]{-4,-2,2,4},ticks=new real[]{-3,-1,1,3}));
yaxis("$y$",-1.5,red,LeftTicks(Ticks=new real[]{4,8,12,16},ticks=new real[]{2,6,10,14}));


label("$f(x)=x^2-1$",(0,-2.3));

draw(Label("$\operatorname{dom}(f)=[0,\infty)$",align=SE,Relative(0.3),blue),(4,5){dir(40)}..(12,8),Arrow);

draw(Label("$\operatorname{dom}(f)=(-\infty,0]$",align=NE,Relative(0.3),brown),(4,2){dir(-40)}..(12,-1),Arrow);
