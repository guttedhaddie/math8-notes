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


size(160,220,IgnoreAspect);

real P(real t){return 4.998*(1.186)^t;}

draw(graph(P,0,10),blue);

real[] dat={5,7,10,14,19,28};
int n=dat.length;

xaxis(0,10,red,RightTicks(N=5,n=2));
yaxis("$P$",0,30,red,LeftTicks(N=3,n=2));

labelx("$t$",10.9,S,red);


for(int i=0; i<n; ++i){
	dot((2i,dat[i]));
}


picture logpic;


xaxis(logpic,0,10,red,RightTicks(N=5,n=2));
yaxis(logpic,"$\ln P$",0,10*log(28),red,LeftTicks(new real[]{0}));

ytick(logpic,Label("1",align=W),10,W,red);
ytick(logpic,Label("2",align=W),20,W,red);
ytick(logpic,Label("3",align=W),30,W,red);

labelx(logpic,"$t$",10.9,S,red);

real PP(real t){return 1.71*t+16.09;}

draw(logpic,graph(PP,0,10),blue);

for(int i=0; i<n; ++i){
	dot(logpic,(2i,10*log(dat[i])));
}

add(shift((0,50))*logpic);

