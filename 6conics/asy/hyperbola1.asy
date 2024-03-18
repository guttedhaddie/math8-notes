settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(120);

real a=1.1;
real b=1;
real c=sqrt(a^2+b^2);

pair F=(c,0);
pair G=(-c,0);

pair P(real t){return (a*cosh(t),b*sinh(t));}
pair PP(real t){return (-a*cosh(t),b*sinh(t));}

draw(graph(P,-1.2,1.2),heavygreen);
draw(graph(PP,-1.2,1.2),heavygreen);

draw(F--P(0.9pi/3)--G);

dot(Label("$P$",black),P(0.9pi/3),NW,red);


dot(Label("$G$",black),G,SW,red);
dot(Label("$F$",black),F,SE,red);

