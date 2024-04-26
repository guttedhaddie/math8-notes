settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(420);

real a=asin(0.9);
real aa=aSin(0.9);

real f(real x){return sin(x);}
pair F(real x){return (x,f(x));}

path p=graph(F,-pi/2,pi/2,operator..);
path q=graph(F,-2pi,-pi/2,operator..);
path r=graph(F,pi/2,1.6pi,operator..);

draw(p,blue);
draw(q,blue+dashed);
draw(r,blue+dashed);
xtick(Label("$\sin^{-1}\!\frac 9{10}$",align=S),a,S,heavygreen);
xtick(a-2pi,S,heavygreen);
xtick(-a-pi,S,magenta);
xtick(pi-a,S,magenta);

draw((-2pi,0.9)--(2.5pi,0.9),dashed+cyan);

dotfactor=8;

dot((pi/2,1),blue);
dot((-pi/2,-1),blue);
dot((a,0.9),heavygreen);
dot((pi-a,0.9),magenta);
dot((-a-pi,0.9),magenta);
dot((a-2pi,0.9),heavygreen);

xaxis("$\theta$",-2.1pi,1.7pi,red);
yaxis("$y$",-1.1,1.2,red,LeftTicks(new real[]{-1,1}));
xtick(Label("$\frac\pi 2$",align=N),pi/2,N,red);
xtick(Label("$-\frac\pi 2$",align=S),-pi/2,S,red);
xtick(Label("$\pi$",align=S),pi,S,red);
xtick(Label("$-\pi$",align=S),-pi,S,red);
xtick(Label("$\frac{3\pi}2$",align=S),3pi/2,S,red);
xtick(Label("$-\frac{3\pi}2$",align=S),-3pi/2,S,red);
//xtick(Label("$2\pi$",align=S),2pi,S,red);
xtick(Label("$-2\pi$",align=S),-2pi,S,red);
label("$\pi-\sin^{-1}\!\frac 9{10}$",(pi-asin(0.9),-1.1),magenta);
//draw("$\pi-\sin^{-1}\!\frac 9{10}$",(pi-asin(0.9),-0.7)--(pi,-0.7),purple,Arrows);


transform T=shift((2.2pi,0));
fill(T*(0,0)--arc(T*(0,0),T*(0.2,0),T*(0.2*dir(aa)))--cycle,heavygreen);
draw(arc(T*(0,0),T*(0.25,0),T*(0.25*dir(180-aa))),magenta+linewidth(1));
draw(T*unitcircle);
draw(T*dir(0)--T*(0,0)--T*dir(aa));
draw(T*(0,0)--T*dir(180-aa));
dot(T*dir(aa),heavygreen);
dot(T*dir(180-aa),magenta);

