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


size(170,0);

dotfactor=8;

pair A=(0,0.8);
pair B=(1,1.3);
real m=(A.y-B.y)/(A.x-B.x);
real c=(B.x/(B.x-A.x))*(A.y-B.y)+B.y;

pair pt(real t){return (1-t)*A+t*B;}

real X=3;
pair P=pt(X);
pair Pb=(P.x,A.y);
pair Bb=(B.x,A.y);



xaxis(0,3.6,Red,RightTicks(new real[]{0,1}));
yaxis(0,pt(3.6).y,Red,LeftTicks(new real[]{0}));

xtick(Label("$x$",align=S),X,S,Red);
ytick(Label("$c$",align=W),c,W,Red);
ytick(Label("$1+c$",align=W),B.y,W,Red);
ytick(Label("$mx+c$",align=W),P.y,W,Red);


draw(pt(-0.6)--pt(3.6),Blue);
draw("$m$",Bb--B);
draw(A--Pb);
draw("$mx$",Pb--P);


draw("$x$",brace(shift((0.03,-0.1))*A,shift((-0.03,-0.1))*Pb,-0.2),S);

draw(shift(Bb)*box((-0.12,0),(0,0.12)));
draw(shift(Pb)*box((-0.12,0),(0,0.12)));


dot(A,lgreen);
dot(B,lgreen);
dot(P,lgreen);




