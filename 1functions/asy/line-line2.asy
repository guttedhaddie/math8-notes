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


size(150,0);

pair A=(1,2);
pair B=(4,3);


pair pt(real t){return (1-t)*A+t*B;}
pair ptsh(real t){return (-t)*A+t*B;}

void ttick(real t, string s, pen p){pair dd=rotate(90,(0,0))*0.2*unit(B-A);
	draw(pt(t)-dd--pt(t)+dd,p);
	label(s,pt(t)+3*dd,p);
}

ttick(0.5,"$\frac 12$",Crimson);
ttick(1,"$1$",Crimson);
ttick(0,"$0$",Crimson);
ttick(1.5,"$\frac 32$",Crimson);
ttick(-0.5,"$-\frac 12$",Crimson);

draw(pt(-0.75)--pt(1.75),Blue);

draw((0,0)--2*(B-A),Blue);
draw((0,0)--A,Brown+dashed);
draw(B-A--B,Brown+dashed);


xaxis();
yaxis();


dot("$A$",A,SE,Blue);
dot("$B$",B,SE,blue);
dot("$P=B-A$",B-A,SE,Blue);
dot("$O$",(0,0),SW,Blue);
