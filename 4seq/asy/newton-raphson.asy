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

size(150,160,IgnoreAspect);

real f(real x){return x^2-2;}
real ff(real x){return 2x;}

//real f(real x){return x^3*sin(x)-2x+7;}
//real ff(real x){return 3x^2*sin(x)+x^3*cos(x)-2;}

real[] x={2};



int n=3;
for(int k=0; k<=n; ++k){
	x.push(x[k]-f(x[k])/ff(x[k]));
}

for(int k=0; k<=n; ++k){
	//draw((x[k],0)--(x[k],f(x[k]))--(x[k+1],0),(n-k)/n*lGreen+(k/n)*Brown+linewidth(1));
	draw((x[k],0)--(x[k],f(x[k]))--(x[k+1],0),lGreen+linewidth(1));
}


draw(Label("$y=x^2-2$",Relative(0.8),align=NW),graph(f,0,2.3),Blue+linewidth(1));

xaxis(0,red,RightTicks(new real[]{1,2,3}));
yaxis(-2,red,LeftTicks(new real[]{-2,0,2},new real[]{-1,1,3}));


//xtick(Label("$=x_0$",align=S),x[0]+0.33,S);
xtick(Label("$x_{1}$",align=S),x[1],S,lGreen);

write(x[n]);
write(f(x[n]));
