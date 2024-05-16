settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;

size(160,120,IgnoreAspect);

real f(real x){return x^4+4x-6;}
real ff(real x){return 4x^3+4;}



draw(Label("$y=f(x)$",Relative(0.7),align=NW),graph(f,0.75,2.1),blue);
real[] x={2};

xaxis("$x$",red);
//yaxis("$y$",red,LeftTicks(new real[]{-1,1,2}));


int n=0;
for(int k=0; k<=n; ++k){
	x.push(x[k]-f(x[k])/ff(x[k]));
}

for(int k=0; k<=n; ++k){
	draw((x[k],0)--(x[k],f(x[k])),heavygreen+linewidth(0.5)+dashed);
	draw((x[k],f(x[k]))--(x[k+1],0),heavygreen+linewidth(0.5),Arrow(Relative(0.6)));
}


xtick(Label("$x_n$",align=S),x[0],S,red);
xtick(Label("$x_{n+1}$",align=S),x[1],S,red);
xtick(Label("$L$",align=S),1.1144,S,red);

dot("$\bigl(x_n,f(x_n)\bigr)$",(x[0],f(x[0])));
