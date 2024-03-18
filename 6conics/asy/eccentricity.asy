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

real M=0.7;
real c=0.15;

pair F=(c,0);
path d=(-c,-M)--(-c,M);
pair PP(real y){return ((1/4c)*y^2,y);}
path p=graph(PP,-M,M);

draw(p,heavygreen);
draw(d);
dot("$F$",F,SE);
label("$d$",(-c,-M),W);

real t=0.6;
pair P=PP(t);
pair Q=(-c,t);

label("$P$",P,SE);
label("$Q$",Q,W);

draw(F--P--Q,StickIntervalMarker(2,1,blue,dotframe(red)));

//draw((b+0.05,-a)--(b+0.05,-a+0.05)--(b,-a+0.05));
//draw((-b/2+0.05,-a)--(-b/2+0.05,-a+0.05)--(-b/2,-a+0.05));
