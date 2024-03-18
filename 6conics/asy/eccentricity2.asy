settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(0,100);

real a=5;
real b=3;
real c=sqrt(a^2-b^2);

real e=c/a;

pair F=(c,0);
pair G=(-c,0);
draw((a+(a-c)/e,-b)--(a+(a-c)/e,b));
draw((-a-(a-c)/e,b)--(-a-(a-c)/e,-b));

label("$d_1$",(a+(a-c)/e,-b),S);
label("$d_2$",(-a-(a-c)/e,-b),S);

pair P(real t){return (a*cos(t),b*sin(t));}

draw(graph(P,0,2pi),heavygreen);

pair PP=P(0.9pi/3);
pair Q=(a+(a-c)/e,PP.y);
draw(F--PP--Q);

pair PPP=P(0.8pi);
pair QQ=(-a-(a-c)/e,PPP.y);
draw(G--PPP--QQ);

dot(Label("$P$",black),PP,NE,red);
dot(Label("$Q$",black),Q,E,red);

dot(PPP,red);
dot(QQ,red);

dot(Label("$F$",black),F,SW,red);
dot(Label("$G$",black),G,SE,red);
