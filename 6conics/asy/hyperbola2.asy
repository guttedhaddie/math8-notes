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

real a=1.1;
real b=1;
real c=sqrt(a^2+b^2);

pair F=(c,0);
pair G=(-c,0);

pair P(real t){return (a*cosh(t),b*sinh(t));}
pair PP(real t){return (-a*cosh(t),b*sinh(t));}

draw(graph(P,-1.5,1.5),heavygreen);
draw(graph(PP,-1.5,1.5),heavygreen);

draw(F--P(pi/3)--G);

xaxis("$x$",red);
yaxis("$y$",red);

xtick(Label("$a$",align=S),a,S,red);
xtick(Label("$-a$",align=S),-a,S,red);
xtick(Label("$c$",align=S),c,S,red);
xtick(Label("$-c$",align=S),-c,S,red);


dot(Label("$P(x,y)$",black),P(pi/3),NW,red);

dot(Label("$F$",black),F,NE,red);
dot(Label("$G$",black),G,NW,red);
ytick(Label("$b$",align=W),b,W,red);
ytick(Label("$-b$",align=W),-b,W,red);

draw(2.2(a,b)--2.2(-a,-b),dashed+heavygreen);
draw(2.2(-a,b)--2.2(a,-b),dashed+heavygreen);

