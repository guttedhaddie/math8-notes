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
pen Dpink=defaultpen+0.85*DeepPink+0.15*black;

import graph;


size(140,0);

dotfactor=8;

pair A=(0,1);
pair B=(1,1.5);
real m=(A.y-B.y)/(A.x-B.x);
real c=(B.x/(B.x-A.x))*(A.y-B.y)+B.y;

pair pt(real t){return (1-t)*A+t*B;}

draw(pt(-0.6)--pt(3.6),Blue);

for(int i=0; i<=3; ++i){
	dot(pt(i),Crimson);
}

xaxis(0,3.6,RightTicks(new real[]{0,1,2,3,4},new real[]{0.5,1.5,2.5,3.5}));
yaxis(0,LeftTicks(new real[]{0,1,2,3},new real[]{0.5,1.5,2.5}));

labelx("$x$",3.7,2S);
labely("$y$",2.7,2W);


