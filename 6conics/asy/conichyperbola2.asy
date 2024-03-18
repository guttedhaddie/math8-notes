if(settings.render < 0) settings.render=4;
settings.outformat="html";
//settings.prc=false;
settings.inlineimage=true;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
include graph;

import solids;
size(0,120);
currentprojection=orthographic(3,-1.5,0.8);
pen color=lightgreen+opacity(0.4);
triple F3(real r) {return (r,0,r);}
path3 p3=graph(F3,0,2,n=10,operator ..);
render render=render(compression=0,merge=true);
draw(surface(revolution(p3,Z,0,360)),color,render);
triple F3(real r) {return (r,0,-r);}
path3 p3=graph(F3,0,3,n=10,operator ..);
render render=render(compression=0,merge=true);
draw(surface(revolution(p3,Z,0,360)),color,render);

real h(real y){return 2*y+sqrt(3);}

path3 sq=(-2,-2.5,h(-2.5))--(-2,0.5,h(0.5))--(2,0.5,h(0.5))--(2,-2.5,h(-2.5))--cycle;
draw(surface(sq),lightblue+opacity(0.3));

real xx(real t){return sqrt(-1+3(t+2/(sqrt(3)))^2);}

triple z(real t){return (xx(t),t,h(t));}
draw(graph(z,-1/(sqrt(3)),0.2),blue);
triple z(real t){return (-xx(t),t,h(t));}
draw(graph(z,-1/(sqrt(3)),0.2),blue);
triple z(real t){return (xx(t),t,h(t));}
draw(graph(z,-2.5,-3/(sqrt(3))),blue);
triple z(real t){return (-xx(t),t,h(t));}
draw(graph(z,-2.5,-3/(sqrt(3))),blue);

//xaxis3("$x$",-1.1,1.2,red,OutTicks(new real[]{1}));
//yaxis3("$y$",-1.1,1.2,red,OutTicks(new real[]{1}));
//zaxis3("$z$",0,1.2,red,OutTicks(new real[]{1}));
