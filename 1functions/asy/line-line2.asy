settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
%\usepackage{textcomp}
");
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

ttick(0.5,"$\frac 12$",heavygreen);
ttick(1,"$1$",heavygreen);
ttick(0,"$0$",heavygreen);
ttick(1.5,"$\frac 32$",heavygreen);
ttick(-0.5,"$-\frac 12$",heavygreen);

draw(pt(-0.75)--pt(1.75),blue);

draw((0,0)--2*(B-A),blue);
draw((0,0)--A,brown+dashed);
draw(B-A--B,brown+dashed);


xaxis(red);
yaxis(red);


dot("$A$",A,SE,blue);
dot("$B$",B,SE,blue);
dot("$C=B-A$",B-A,SE,blue);
dot("$O$",(0,0),SW,blue);
