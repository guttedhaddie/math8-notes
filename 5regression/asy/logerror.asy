settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(180,220);


real L(real y){return log(y);}

real w=0.6;

real y1=1.2;
real y2=y1+w;
fill((y1,0)--(y2,0)--(y2,L(y2))--(0,L(y2))--(0,L(y1))--(y1,L(y1))--cycle,0.5*lightgreen+0.5*white);
draw((y1,0)--(y2,0),heavygreen+linewidth(2));
draw((0,L(y1))--(0,L(y2)),heavygreen+linewidth(2));


real y3=2.5;
real y4=y3+w;
fill((y3,0)--(y4,0)--(y4,L(y4))--(0,L(y4))--(0,L(y3))--(y3,L(y3))--cycle,0.2*magenta+0.8*white);
draw((y3,0)--(y4,0),magenta+linewidth(2));
draw((0,L(y3))--(0,L(y4)),magenta+linewidth(2));



draw(graph(L,0.5,3.5),blue);


xaxis("$y$",0,red);
yaxis("$\ln y$",red);

label("\small Same $\Delta y$",((y2+y3)/2,-0.27));
label("\small Different $\Delta \ln y$",((y2+y3)/2,-0.6));