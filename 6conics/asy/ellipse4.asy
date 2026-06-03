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
import markers;

size(160,0);

real a=1.5;
real b=1;
real c=sqrt(a^2-b^2);

pair F=(c,0);
pair G=(-c,0);

pair P(real t){return (a*cos(t),b*sin(t));}


int n=15;
for(int k=0; k<n; ++k){
	real t=k*2pi/n;
	draw(F--P(t)--G,0.5(1-sin(2t))*yellow+0.5*(1+sin(2t))*orange);
}

dot(Label("$G$",black),G,SW,red);
dot(Label("$F$",black),F,SE,red);

draw(graph(P,0,2pi),Blue+linewidth(1));

real tt=0.45pi;
pair PP=P(tt);
pair TT=(-a*sin(tt),b*cos(tt));
pair R=PP-0.8*TT;

draw(R--PP-TT,white);