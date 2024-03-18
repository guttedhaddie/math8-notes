settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(160,120,IgnoreAspect);

pair F(real x){return (x^2-1,x);}

draw(graph(F,0,3.2),blue+linewidth(1));

xaxis("$x$",-1.5,red,RightTicks(Ticks=new real[]{0,3,6,9},ticks=new real[]{-2,-1,1,2,4,5,7,8}));
yaxis(0,3.3,red,LeftTicks(Ticks=new real[]{2,4},ticks=new real[]{-3,-1,1,3}));


//labelx("$-3$",-3,heavygreen);
labely("$y$",3.2,2W,red);

label("$f^{-1}(x)=\sqrt{x+1}$",(4,-1.5),blue);

