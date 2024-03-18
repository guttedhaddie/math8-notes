settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(132,110,IgnoreAspect);

real[] tdat={1,2,3,4,5,6,7,8,9,10};
real[] ydat={7,5,3,2,3,5,6,9,8,12};
int n=tdat.length;

real f(real t){return (2/3)*t+7/3;}

draw(graph(f,0,10));


xaxis("$t$",0,10,RightTicks(Step=2,step=1));
yaxis("$y$",0,12,LeftTicks(Step=4,step=2));


for(int i=0; i<n; ++i){
	dot((tdat[i],ydat[i]));
}

label("linear",(5,-5));