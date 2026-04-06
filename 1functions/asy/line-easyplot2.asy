settings.tex="lualatex";
defaultpen(fontsize(12pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{unicode-math}
\setmainfont{TeX Gyre Pagella}
\setmathfont{TeX Gyre Pagella Math}
\usepackage[svgnames]{xcolor}
");

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



xaxis(0,3.6,red,RightTicks(new real[]{0,1}));
yaxis(0,pt(3.6).y,red,LeftTicks(new real[]{0}));

//labelx("$x$",3.7,2S,red);
//labely("$y$",2.7,2W,red);

xtick(Label("$x$",align=S),X,S,red);
ytick(Label("$c$",align=W),c,W,red);
ytick(Label("$1+c$",align=W),B.y,W,red);
ytick(Label("$mx+c$",align=W),P.y,W,red);


draw(pt(-0.6)--pt(3.6),blue);
draw("$m$",Bb--B);
draw(A--Pb);
draw("$mx$",Pb--P);


draw("$x$",brace(shift((0.03,-0.1))*A,shift((-0.03,-0.1))*Pb,-0.2),S);

draw(shift(Bb)*box((-0.12,0),(0,0.12)));
draw(shift(Pb)*box((-0.12,0),(0,0.12)));


dot(A,heavygreen);
dot(B,heavygreen);
dot(P,heavygreen);




