settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(180);

real k=1;
real e=0.8;

pair F=(0,0);
pair K=(k,0);
real d=k+k/e;

dot("$K$",K,SE);
dot("$F$",F,SW);

real r(real th){return k*(1+e)/(1+e*cos(th));}

draw(polargraph(r,-1.8,1.8),blue);

real t=pi/3;
pair P=r(t)*expi(t);
dot("$P$",P,NE);

draw(Label("$d$",Relative(0.3)),(d,-1.5)--(d,1.5));
draw("$r$",P--F);
draw("$\frac re$",P--(d,P.y));

xaxis("$x$",red);
yaxis("$y$",red);

draw("$k$",(0.02,-1)--(k-0.02,-1),Arrows);
draw("$\frac ke$",(k+0.02,-1)--(d-0.02,-1),Arrows);

draw("$\theta$",arc((0,0),0.2,0,t*180/pi));
