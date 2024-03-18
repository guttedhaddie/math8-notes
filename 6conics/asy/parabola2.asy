settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(180,0);

real M=0.8;
real a=0.25;
real b=0.6;

pair F=(0,a);
path d=(-0.5M,-a)--(M,-a);
real f(real x){return x^2;}
path p=graph(f,-0.5M,M);

pair P=(b,f(b));
pair Q=(b,-a);
real t=-0.25;
pair R=P+t*(1,2*b);
pair SS=(R.x,-a);


for(int i=1; i<=5; ++i){
	real t=(i-2.5)*6/25;
	draw((t,0.9)--(t,t^2),dashed+orange,Arrow(Relative(0.5)));
	}


draw(p,heavygreen);
draw(d);
label("$F$",F,NW);
label("$d$",(-0.5M,-a),W);

label("$P$",P,SE);
label("$Q$",Q,S);
draw(Q+(0.03,0)--Q+(0.03,0.03)--Q+(0,0.03));
draw(SS+(0.03,0)--SS+(0.03,0.03)--SS+(0,0.03));

draw(R--SS);

real k=0.8;
draw((1+k)*R-k*P--(1+k)*P-k*R);
draw(arc(P,P+0.08*unit(F-P),P+0.08*unit(Q-P)),StickIntervalMarker(2,1,blue));
draw(arc(P,P+0.08*unit(P-R),P+0.08*unit(P-Q)),StickIntervalMarker(1,1,blue));

draw(F--R--Q,StickIntervalMarker(2,2,blue));

dot(Label("$R$",black),R,E,red);
dot(Label("$S$",black),SS,S,red);
draw(F--P--Q,StickIntervalMarker(2,1,blue,dotframe(red)));

label("$\ell$",(1+k)*R-k*P,W);