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


size(140,110,IgnoreAspect);

pair[] dat={(1,4),(2,8),(3,10),(5,21)};
real[] errsq={};

real m=21/5;
real c=-4/5;

real m=5;
real c=-3;

int n=dat.length;
for(int i=0; i<n; ++i){
	dot(dat[i]);
	errsq.push((dat[i].y-m*dat[i].x-c)^2);
}


real f(real t){return m*t+c;}

real SS=sum(errsq);

draw(graph(f,0,5.5),blue+dashed);

dot((5,24),white);

xaxis(0,5.5,red,RightTicks(new real[]{0,2,4},new real[]{1,3,5}));
yaxis("$y$",0,red,LeftTicks());
labelx("$t$",5.5,2S,red);

write(SS);