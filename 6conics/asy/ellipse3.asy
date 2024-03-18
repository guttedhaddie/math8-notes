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

real a=1.5;
real b=1;
real c=sqrt(a^2-b^2);

pair F=(c,0);
pair G=(-c,0);

pair P(real t){return (a*cos(t),b*sin(t));}

draw(graph(P,0,2pi),heavygreen);

real tt=0.4pi;
pair PP=P(tt);
real s=length(F-PP);
pair Q=PP+s*unit(PP-G);
pair TT=(-a*sin(tt),b*cos(tt));
pair R=PP-0.8*TT;
draw(PP-TT--PP+TT);

draw(G--R,dashed);

draw(F--PP--Q,StickIntervalMarker(2,1,blue,dotframe(red)));
draw(G--PP,StickIntervalMarker(1,2,blue,dotframe(red)));
draw(Q--R--F,StickIntervalMarker(2,3,blue,dotframe(red)));

draw(arc(PP,PP+0.2*(F-PP),PP+0.2*(Q-PP)),StickIntervalMarker(2,1,blue));

label("$P$",PP,N);
label("$Q$",Q,E);
label("$R$",R,NE);
label("$F$",F,SW);
label("$G$",G,SE);
label("$\ell$",PP+1.1TT);

