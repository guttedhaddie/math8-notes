settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;

size(180,140,IgnoreAspect);

real f(real x){return x^2-2;}
real ff(real x){return 2x;}

//real f(real x){return x^3*sin(x)-2x+7;}
//real ff(real x){return 3x^2*sin(x)+x^3*cos(x)-2;}


draw(Label("$y=x^2-a$",Relative(0.8),align=NW),graph(f,0,2.3),blue);
real[] x={2};

//xaxis(0,red,RightTicks(new real[]{1,2,3}));
//yaxis(-2,red,LeftTicks(new real[]{-2,0,2},new real[]{-1,1,3}));
xaxis(0,red);
yaxis(-2,red,LeftTicks(new real[]{0}));

ytick(Label("$-a$",align=W),-2,W,red);



int n=3;
for(int k=0; k<=n; ++k){
	x.push(x[k]-f(x[k])/ff(x[k]));
}

for(int k=0; k<=n; ++k){
	draw((x[k],0)--(x[k],f(x[k]))--(x[k+1],0),(n-k)/n*heavygreen+(k/n)*orange+linewidth(0.5));
}


xtick(Label("$x_n$",align=S),x[0],S);
xtick(Label("$x_{n+1}$",align=S),x[1],S);

write(x[n]);
write(f(x[n]));
