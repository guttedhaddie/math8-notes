settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(180,120,IgnoreAspect);

real k=4;
real M=1;

int n=5;
for(int i=1; i<=2n; ++i){
	real C=n/i-1;
	real f(real t){return M/(1+C*exp(-k*M*t));}
	draw(graph(f,0,1),blue);
}


real C=n/0.2-1;
real f(real t){return M/(1+C*exp(-k*M*t));}
draw(graph(f,0,1),blue);

xaxis("$t$",0,1,red,RightTicks(new real[]{0}));
yaxis("$y$",0,2,red,LeftTicks(new real[]{0}));

ytick(Label("$M$",align=W),M,W,red);

labely("$\frac{\mathrm dy}{\mathrm dt}<0$",1.5,W);
labely("$\frac{\mathrm dy}{\mathrm dt}>0$",0.5,W);