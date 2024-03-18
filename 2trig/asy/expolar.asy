settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(160,0);

pair P=(-sqrt(3),1);
pair Q=-P;

draw(unitcircle,heavygreen+dashed);
draw(scale(2)*unitcircle,heavygreen+dashed);
draw(-2.2*dir(30)--2.2*dir(30),heavygreen+dashed);
label("$\frac\pi 6$",2.5dir(30),heavygreen);
label("$-\frac{5\pi}6$",-2.7dir(30),heavygreen);
draw(-2.2*dir(60)--2.2*dir(60),heavygreen+dashed);
label("$\frac\pi 3$",2.5dir(60),heavygreen);
label("$-\frac{2\pi}3$",-2.5dir(60),heavygreen);
draw(-2.2*dir(120)--2.2*dir(120),heavygreen+dashed);
label("$\frac{2\pi}3$",2.5dir(120),heavygreen);
label("$-\frac{\pi}3$",-2.4dir(120),heavygreen);
draw(-2.2*dir(150)--2.2*dir(150),heavygreen+dashed);
label("$\frac{5\pi}6$",2.5dir(150),heavygreen);
label("$-\frac{\pi}6$",-2.5dir(150),heavygreen);


xaxis(-2.2,2.2,red,RightTicks(new real[]{}));
yaxis(-2.2,2.2,red,LeftTicks(new real[]{}));

dotfactor=10;

dot(P,blue);
dot(Q,orange);

xtick(Label("$\sqrt 3$",align=S),sqrt(3),S,orange);
xtick(Label("$-\sqrt 3$",align=S),-sqrt(3),S,blue);
ytick(Label("$1$",align=W),1,W,blue);
ytick(Label("$-1$",align=W),-1,W,orange);

