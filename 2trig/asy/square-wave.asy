settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180,70,IgnoreAspect);

dotfactor=8;

draw((0,1)--(pi,1),blue);
draw((pi,-1)--(2pi,-1),blue);
draw((2pi,1)--(2pi+2.3,1),blue+dashed);
draw((-2.3,-1)--(0,-1),blue+dashed);

dot((0,1),blue);
dot((pi,1),blue,Fill(white));
dot((pi,-1),blue);
dot((2pi,-1),blue,Fill(white));
dot((2pi,1),blue);
dot((0,-1),blue,Fill(white));

xaxis("$x$",-2,2pi+2.3,red);
yaxis("$f(x)$",-1.1,1.2,red,LeftTicks(new real[]{-1,1}));
xtick(pi/2,S,red);
xtick(Label("$\pi$",align=S),pi,S,red);
xtick(3pi/2,S,red);
xtick(Label("$2\pi$",align=S),2pi,S,red);
xtick(-pi/2,S,red);
xtick(5pi/2,S,red);