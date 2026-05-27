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


size(200,170,IgnoreAspect);

pair[] dat={(1,4),(2,1),(3,2),(4,0)};
int n=dat.length;

real m=-11/10;
real c=9/2;

real f(real t){return m*t+c;}

draw(graph(f,0,4.3),blue);


xaxis("$t$",0,4.5,red,RightTicks);
yaxis("$y$",0,red,LeftTicks());


for(int i=0; i<n; ++i){
	draw(dat[i]--(dat[i].x,f(dat[i].x)),lGreen);
	dot(dat[i]);
}


label(Label("$\hat y=-1.1t+4.5$",align=W),(4,4),blue);
label(Label("$R^2=\frac{121}{175}=0.69$",align=W),(4,3.3));
label(Label("$\sum e_i^2=2.7$",align=W),(4,2.6),lGreen);