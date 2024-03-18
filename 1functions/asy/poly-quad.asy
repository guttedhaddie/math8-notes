settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(160,0);

real m=-2.5;
real M=1.5;

real a=0.5;
real b=1;
real c=-1;

real f(real x){return x^2;}
real g(real x){return a*x^2;}
real h(real x){return a*(x+b/(2*a))^2;}
real j(real x){return a*x^2+b*x+c;}

path cl=box((m,(4*a*c-b^2)/(4*a)-0.5),(M,f(M)));

draw(Label("$y=x^2$",Relative(0.5),NE),graph(f,m,M),blue);
draw(Label("$1$",Relative(0.3)),graph(g,m,M),0.6blue+0.4heavygreen);
draw(Label("$2$",Relative(0.16)),graph(h,m,M),0.3blue+0.7heavygreen);
draw(Label("$3$",Relative(0.16)),graph(j,m,M),heavygreen);

label("$y=ax^2+bx+c$",(-b/2a,j(-b/2a)),S,heavygreen);
dot((-b/2a,j(-b/2a)),red);

clip(cl);

xaxis(m,M,red);
yaxis((4*a*c-b^2)/(4*a)-0.2,f(M),red);

xtick(Label("$-\frac b{2a}$",align=S),-b/(2*a),S,red);
ytick(Label("$\frac{4ac-b^2}{4a}$",align=E),(4*a*c-b^2)/(4*a),E,red);