settings.tex="lualatex";
defaultpen(fontsize(12pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{unicode-math}
\setmainfont{TeX Gyre Pagella}
\setmathfont{TeX Gyre Pagella Math}
\usepackage[svgnames,x11names]{xcolor}
");

import x11colors;
pen lGreen=rgb("00a000");

import graph;

size(150,130,IgnoreAspect);

real f(real x){return x^4+4x-6;}
real ff(real x){return 4x^3+4;}



draw(Label("$y=f(x)$",Relative(0.7),align=NW),graph(f,0.75,2.1),Blue);
real[] x={2};

xaxis("$x$",red);
//yaxis("$y$",red,LeftTicks(new real[]{-1,1,2}));


int n=0;
for(int k=0; k<=n; ++k){
	x.push(x[k]-f(x[k])/ff(x[k]));
}

for(int k=0; k<=n; ++k){
	draw((x[k],0)--(x[k],f(x[k])),lGreen+linewidth(0.5)+dashed);
	draw((x[k],f(x[k]))--(x[k+1],0),lGreen+linewidth(0.5),Arrow(Relative(0.6)));
}


xtick(Label("$x_n$",align=S),x[0],S,lGreen);
xtick(Label("$x_{n+1}$",align=S),x[1],S,lGreen);
xtick(Label("$L$",align=S),1.1144,S,lGreen);

dot("$\bigl(x_n,f(x_n)\bigr)$",(x[0],f(x[0])));
