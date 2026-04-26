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

pair P=(-sqrt(3),1);
pair Q=-P;

draw(unitcircle,lGreen+dashed);
draw(scale(2)*unitcircle,lGreen+dashed);
draw(-2.2*dir(30)--2.2*dir(30),lGreen+dashed);
label("$\frac\pi 6$",2.5dir(30),lGreen);
label("$-\frac{5\pi}6$",-2.7dir(30),lGreen);
draw(-2.2*dir(60)--2.2*dir(60),lGreen+dashed);
label("$\frac\pi 3$",2.5dir(60),lGreen);
label("$-\frac{2\pi}3$",-2.5dir(60),lGreen);
draw(-2.2*dir(120)--2.2*dir(120),lGreen+dashed);
label("$\frac{2\pi}3$",2.5dir(120),lGreen);
label("$-\frac{\pi}3$",-2.4dir(120),lGreen);
draw(-2.2*dir(150)--2.2*dir(150),lGreen+dashed);
label("$\frac{5\pi}6$",2.5dir(150),lGreen);
label("$-\frac{\pi}6$",-2.5dir(150),lGreen);


xaxis(-2.2,2.2,red,RightTicks(new real[]{}));
yaxis(-2.2,2.2,red,LeftTicks(new real[]{}));

dotfactor=10;

dot(P,Blue);
dot(Q,Brown);

xtick(Label("$\sqrt 3$",align=S),sqrt(3),S,Brown);
xtick(Label("$-\sqrt 3$",align=S),-sqrt(3),S,Blue);
ytick(Label("$1$",align=W),1,W,Blue);
ytick(Label("$-1$",align=W),-1,W,Brown);

