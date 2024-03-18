settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(260,160,IgnoreAspect);

real a=1.7;
real b=3.5;

real f(real x){return (x-a)^3-3(x-a)+b;}

draw(graph(f,a-1.5,a),heavygreen);
draw(graph(f,a,a+2.4),blue);

xaxis("$x$",0,a+3,red);
yaxis("$y$",0,red);

real x0=a+0.25;
real x1=a+2.25;
real t=0.6;
real xt=(1-t)*x0+t*x1;
real yt=(1-t)*f(x0)+t*f(x1);

xtick(Label("$x_0$",align=S),x0,S,blue);
xtick(Label("$x_1$",align=S),x1,S,blue);
xtick(Label("$x_t$",align=S),xt,S,blue);

draw((x0,f(x0))--(x1,f(x1)),blue+dashed);
dot((xt,f(xt)),blue);
dot((xt,yt),blue);

ytick(Label("$(1-t)f(x_0)+tf(x_1)$",align=W),(1-t)*f(x0)+t*f(x1),W,blue);
ytick(Label("$f(x_t)$",align=W),f(xt),W,blue);
labely(Label("$\vee$",align=W),0.5*f(xt)+0.5*yt,5W,blue);
