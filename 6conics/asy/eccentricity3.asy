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

real a=1;
real b=1.5;
real c=sqrt(a^2+b^2);

real e=c/a;

pair F=(c,0);
pair G=(-c,0);
draw((a+(a-c)/e,-2.2)--(a+(a-c)/e,3));
draw((-a-(a-c)/e,3)--(-a-(a-c)/e,-2.2));

label("$d_1$",(a+(a-c)/e,-2.2),S);
label("$d_2$",(-a-(a-c)/e,-2.2),S);

pair P(real t){return (a*cosh(t),b*sinh(t));}

draw(graph(P,-1.5,1.5),heavygreen);

pair PP=P(1.2);
pair Q=(a+(a-c)/e,PP.y);
draw(F--PP--Q);



pair P(real t){return (-a*cosh(t),b*sinh(t));}

draw(graph(P,-1.5,1.5),heavygreen);
pair PPP=P(1);
pair QQ=(-a-(a-c)/e,PPP.y);
draw(G--PPP--QQ);

dot(Label("$P$",black),PP,E,red);
dot(Label("$Q$",black),Q,NE,red);

dot(PPP,red);
dot(QQ,red);

dot(Label("$F$",black),F,SE,red);
dot(Label("$G$",black),G,SW,red);
