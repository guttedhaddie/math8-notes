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


real f(real x){return exp(x)-7x^2;}
real ff(real x){return exp(x)-14x;}

real f(real x){return x^4+4x-6;}
real ff(real x){return 4x^3+4;}



draw(graph(f,0.75,2.1),Blue);
real[] x={2};

xaxis("$x$",red,RightTicks(new real[]{-3,-2,-1,1,2,3}));
//yaxis("$y$",red,LeftTicks(new real[]{-1,1,2}));


int n=7;
for(int k=0; k<=n; ++k){
	x.push(x[k]-f(x[k])/ff(x[k]));
}

for(int k=0; k<=n; ++k){
	draw((x[k],0)--(x[k],f(x[k]))--(x[k+1],0),lGreen);
}



xtick(Label("$x_1$",align=S),x[1],S,lGreen);
xtick(Label("$x_2$",align=S),x[2],S,lGreen);

write(x[n-1]);
write(f(x[n-1]));