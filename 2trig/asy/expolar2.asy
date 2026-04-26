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

size(140,0);

real thmax=2pi;

draw(scale(pi/2)*unitcircle,lGreen+dashed);
draw(scale(pi)*unitcircle,lGreen+dashed);
draw(scale(3*pi/2)*unitcircle,lGreen+dashed);
draw(scale(2pi)*unitcircle,lGreen+dashed);

draw(-thmax*dir(30)--thmax*dir(30),lGreen+dashed);
label("$\frac\pi 6$",1.15*thmax*dir(30),lGreen);
label("$\frac{7\pi}6$",-1.15*thmax*dir(30),lGreen);
draw(-thmax*dir(60)--thmax*dir(60),lGreen+dashed);
label("$\frac\pi 3$",1.15*thmax*dir(60),lGreen);
label("$\frac{4\pi}3$",-1.15*thmax*dir(60),lGreen);
draw(-thmax*dir(120)--thmax*dir(120),lGreen+dashed);
label("$\frac{2\pi}3$",1.15*thmax*dir(120),lGreen);
label("$\frac{5\pi}3$",-1.15*thmax*dir(120),lGreen);
draw(-thmax*dir(150)--thmax*dir(150),lGreen+dashed);
label("$\frac{5\pi}6$",1.15*thmax*dir(150),lGreen);
label("$\frac{11\pi}6$",-1.15*thmax*dir(150),lGreen);



xaxis(-7,7,red,RightTicks(new real[]{-6,-3,3,6}));
yaxis(-7,7,red,LeftTicks(new real[]{-6,-3,3,6}));

labelx("$x$",7,S,red);
labely("$y$",7,W,red);

dotfactor=8;

real r(real th){return th;}

draw(polargraph(r,0,2pi),blue,Arrow(Relative(0.8)));

for(int i=0; i<=12; ++i){
	dot((i*pi/6*dir(i*30)),blue);
}
