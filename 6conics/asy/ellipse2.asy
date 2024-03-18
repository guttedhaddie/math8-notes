settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(160);

real a=1.3;
real b=1;
real c=sqrt(a^2-b^2);

pair F=(c,0);
pair G=(-c,0);

pair P(real t){return (a*cos(t),b*sin(t));}

xaxis("$x$",-1.2a,1.4a,red);
yaxis("$y$",-1.2b,1.4b,red);

xtick(Label("$a$",align=S),a,S,red);
xtick(Label("$-a$",align=S),-a,S,red);
xtick(Label("$c$",align=S),c,S,red);
xtick(Label("$-c$",align=S),-c,S,red);

draw(graph(P,0,2pi),heavygreen);

draw(F--P(0.9pi/3)--G);

dot(Label("$P(x,y)$",black),P(0.9pi/3),NE,red);

dot(Label("$F$",black),F,NE,red);
dot(Label("$G$",black),G,NW,red);
ytick(Label("$b$",align=W),b,W,red);
ytick(Label("$-b$",align=W),-b,W,red);

