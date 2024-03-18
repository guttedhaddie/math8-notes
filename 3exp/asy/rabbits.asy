settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(170,120,IgnoreAspect);

real f(real t){return 10*2^(t/6);}

real b=10;
draw((0,10)..graph(f,0.01,b),blue);

xaxis("$t$",0,b,red,RightTicks);
yaxis("$P$",0,30,red,LeftTicks(Step=10,step=5));


dot((0,10),heavygreen);
dot((6,20),heavygreen);

real x=9;
real ht=f(x);
draw((x,0)--(x,ht)--(0,ht),heavygreen+dashed);
//dot((x,f(x)),heavygreen);
//xtick(Label("$e$",align=S),exp(1),S,heavygreen);
//labelx("$e$",exp(1),0.3S,heavygreen);

