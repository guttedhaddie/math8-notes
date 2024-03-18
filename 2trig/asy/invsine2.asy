settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(280,65,IgnoreAspect);

real f(real x){return sin(x);}
pair F(real x){return (x,f(x));}

path p=graph(F,-pi/2,pi/2,operator..);
path q=graph(F,-pi,-pi/2,operator..);
path r=graph(F,pi/2,5pi/2,operator..);

draw(p,blue);
draw(q,blue+dashed);
draw(r,blue+dashed);
//label("$y=\sin x$",(-1,1),blue);

dot((pi/2,1),blue);
dot((-pi/2,-1),blue);

xaxis("$x$",-1.1pi,2.8pi,red);
yaxis("$y$",-1,1,red,LeftTicks(new real[]{-1,1}));
xtick(Label("$\frac\pi 2$",align=S),pi/2,S,red);
xtick(Label("$-\frac\pi 2$",align=S),-pi/2,S,red);
xtick(Label("$\pi$",align=S),pi,S,red);
xtick(Label("$-\pi$",align=S),-pi,S,red);
xtick(Label("$\frac{3\pi}2$",align=S),3pi/2,S,red);
xtick(Label("$\frac{5\pi}2$",align=S),5pi/2,S,red);
xtick(Label("$2\pi$",align=S),2pi,S,red);

label("$y=\sin x$",(1.5pi,0.7),blue);
