settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;

size(180,140,IgnoreAspect);

real f(real x){return x^4+4x-6;}
real ff(real x){return 4x^3+4;}



draw(graph(f,0.75,2.1),blue);
real[] x={2};

xaxis("$x$",red,RightTicks(new real[]{-3,-2,-1,1,2,3}));
//yaxis("$y$",red,LeftTicks(new real[]{-1,1,2}));


int n=7;
for(int k=0; k<=n; ++k){
	x.push(x[k]-f(x[k])/ff(x[k]));
}

for(int k=0; k<=n; ++k){
	draw((x[k],0)--(x[k],f(x[k]))--(x[k+1],0),(n-k)/n*heavygreen+(k/n)*orange+linewidth(0.5));
}


xtick(Label("$x_0$",align=N),x[0],N);
xtick(Label("$x_1$",align=S),x[1],S);
xtick(Label("$x_2$",align=S),x[2],S);

write(x[n-1]);
write(f(x[n-1]));