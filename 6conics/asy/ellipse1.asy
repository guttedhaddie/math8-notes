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

real a=1.5;
real b=1;
real c=sqrt(a^2-b^2);

pair F=(c,0);
pair G=(-c,0);

pair P(real t){return (a*cos(t),b*sin(t));}

draw(graph(P,0,2pi),heavygreen);

draw(F--P(0.9pi/3)--G);

dot(Label("$P$",black),P(0.9pi/3),NE,red);

dot(Label("$F$",black),F,SW,red);
dot(Label("$G$",black),G,SE,red);

