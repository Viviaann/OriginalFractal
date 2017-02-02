int t=400;
int e=400;
public void setup ()
{
	size(800,800);
	frameRate(30);
// 	if(t<=200)
// {
// 	t++;
// }
// else
// {
// t=0;	
// }
// if(e<=200)
// {
// 	e++;
// }
// else
// {
// e=0;	
// }
}
public void draw()
{

background(255);

fracTal(e,t,30,20);
}
public void fracTal ( double r, double dRadians, double w,double h)
{
if(r<=50){

double x= r*Math.cos(dRadians);
double y=r* Math.sin(dRadians);
stroke(205,49,(int)(Math.random()*255));
strokeWeight(2);
ellipse(400+(int)x,350+(int)y,(int)w,(int)h);
}
else
{
double x=r* Math.cos(dRadians);
double y=r*Math.sin(dRadians);
stroke(205,49,(int)(Math.random()*255));
strokeWeight(2);
ellipse(400+(int)x,350+(int)y,(int)w,(int)h);
// stroke(49,232,55);
// strokeWeight(2);
// ellipse(400+(int)x/2,350+(int)y/2,(int)w,(int)h);	
fracTal(r-20,dRadians-5,w+1,h+1);
//fracTal(r-10,dRadians-10,w+2,h+2);
}
}