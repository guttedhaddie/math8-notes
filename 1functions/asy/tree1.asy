settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(0,220);

real r=0.3;

path P=(0,0)--(0,1);

picture step(picture p)
{	
	picture a=shift((0,0.75))*scale(r)*p;
	add(a,shift((0,0.7))*rotate(-70)*scale(r)*p);
	add(a,shift((0,0.6))*rotate(70)*scale(r)*p);
	add(a,shift((0,0.5))*rotate(-70)*scale(r)*p);
	add(a,shift((0,0.4))*rotate(70)*scale(r)*p);
	add(a,shift((0,0.3))*rotate(-70)*scale(r)*p);
	add(a,shift((0,0.2))*rotate(70)*scale(r)*p);
	return a;
}

draw(P,linewidth(0.1));

picture[] pp={currentpicture};

int n=5;

for(int i=1; i<=n; ++i){
	pp[i]=step(pp[i-1]);
	draw(pp[i],P,linewidth(0.15)+(i/n)*brown+((n+1-i)/n)*green);
	//add(step(currentpicture));
}

add(pp[n]);

real sc=0.7/15;

pair A=(-10sc,0);
pair B=(0,0.7);
dot("$F$",B,SE,blue);
dot("start",A,E,blue);

real m=5;
real f(real x){return sc*((3-2m)/20*(x/sc+10)^2+m*(x/sc+10));}

draw(graph(f,-10*sc,0),blue,Arrow(Relative(0.5)));
