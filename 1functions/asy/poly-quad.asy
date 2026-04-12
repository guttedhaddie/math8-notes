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
pen lgreen=rgb("00a000");

import graph;


size(140,140,IgnoreAspect);

real m=-2.5;
real M=1.5;

real a=0.5;
real b=1;
real c=-1;

real f(real x){return x^2;}
real g(real x){return a*x^2;}
real h(real x){return a*(x+b/(2*a))^2;}
real j(real x){return a*x^2+b*x+c;}

path cl=box((m,(4*a*c-b^2)/(4*a)-1),(M,f(M)));

draw(Label("$y=x^2$",Relative(0.5),NE),graph(f,m,M),Blue);
draw(Label("$1$",Relative(0.3)),graph(g,m,M),0.6Blue+0.4lgreen);
draw(Label("$2$",Relative(0.16)),graph(h,m,M),0.3Blue+0.7lgreen);
draw(Label("$3$",Relative(0.16)),graph(j,m,M),lgreen);

label("$y=ax^2+bx+c$",(-b/2a,j(-b/2a)),S,lgreen);
dot((-b/2a,j(-b/2a)));

clip(cl);

xaxis(m,M,Red);
yaxis((4*a*c-b^2)/(4*a)-0.2,f(M),Red);

xtick(Label("$-\frac b{2a}$",align=S),-b/(2*a),S,lgreen);
ytick(Label("$\frac{4ac-b^2}{4a}$",align=E),(4*a*c-b^2)/(4*a),E,lgreen);