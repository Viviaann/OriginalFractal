int t=30;
int e=400;

public void setup ()
{
	size(800,800);
	frameRate(40);
	
}
public void draw()
{

background(0);
// if(t<=100)
// {
// 	t++;
// }
// else
// {
// t=0;	
// }
// if(e<=100)
// {
// 	e++;
// }
// else
// {
// e=0;	
// }
fracTal(50,e,30,20,100);
for (int i=0; i<9;i++)
{
Ring(30,30*i);
}
}
public void fracTal ( double r, double dRadians, double w,double h, int m)
{
if(m<=20){

double x= r*Math.cos(dRadians);
double y=r* Math.sin(dRadians);
// noFill();
//stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
if(t<=70)
{
	t++;
}
else
	{t--;}
fill(86,209,172,70);
strokeWeight(2);
ellipse(400+(int)x,350+(int)y,(int)w,(int)h);
}
else
{
	noFill();
double x=r* Math.cos(dRadians);
double y=r*Math.sin(dRadians);
if(t<=70)
{
	t++;
}
else
	{t--;}
fill(86,208,172,t);
strokeWeight(4);
ellipse(400+(int)x,350+(int)y,(int)w,(int)h);
// ellipse(400+(int)x -(int)w,350+(int)y,(int)w/2,(int)h);
// ellipse(400+(int)x+(int)w,350+(int)y,(int)w/2,(int)h);
fracTal(r+5,dRadians-9,w+2,h+2, m-1);
}
}
public void Ring (double r, double dRad)
{
double x= r*Math.cos(dRad);
double y=r* Math.sin(dRad);
fill(255,255,255,170);

ellipse(400+(int)x,350+(int)y,20,20);

}