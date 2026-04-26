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

size(180,0);

real thmax=2;

path c=arc((0,0),(1,0),(-1,0),CCW);

draw(scale(1)*c,lGreen+dashed);
draw(scale(0.5)*c,lGreen+dashed);
draw(scale(1.5)*c,lGreen+dashed);
draw(scale(2)*c,lGreen+dashed);

draw((0,0)--thmax*dir(30),lGreen+dashed);
label("$\frac\pi 6$",1.1*thmax*dir(30),lGreen);
draw((0,0)--thmax*dir(60),lGreen+dashed);
label("$\frac\pi 3$",1.1*thmax*dir(60),lGreen);
draw((0,0)--thmax*dir(120),lGreen+dashed);
draw((0,0)--thmax*dir(150),lGreen+dashed);
label("$\frac{2\pi}3$",1.1*thmax*dir(120),lGreen);
label("$\frac{5\pi}6$",1.1*thmax*dir(150),lGreen);



xaxis(-2.2,2.4,red,RightTicks(new real[]{-2,-1,0,1,2}));
yaxis(0,2.4,red,LeftTicks(new real[]{1,2}));

labelx("$x$",2.3,S,red);
labely("$y$",2.3,W,red);

dotfactor=8;

real r(real th){return 2*sin(th);}

draw(polargraph(r,0,pi),blue,Arrow(Relative(0.25)));

for(int i=0; i<12; ++i){
	dot((2*sin(i*pi/6)*dir(i*30)),blue);
}
