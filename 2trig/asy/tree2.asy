settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(0,110);

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

real al=30;
real be=45;

real h=1.07;
real x=h/Tan(be);
real y=h/Tan(al);

pair A=(-y,0);
pair B=(-x,0);
draw("$20$",A--B);
draw(B--(0,h)--A--cycle,blue);
draw("$x$",B--(0,0),dashed);
draw(box((-0.03,0),(0,0.03)));
draw("45\textdegree",arc(B,0.1,0,be));
draw("30\textdegree",arc(A,0.15,0,al));
