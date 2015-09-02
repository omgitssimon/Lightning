int startX=0; 
int startY=150;
int endX  =0;
int endY  =150;

void setup()
{
	frameRate(300);
	size(400,400);
	background(0);
	strokeWeight(5);
	startX=300;
	startY=0;
}

void draw()
{
	ellipse(200,10,400,50); // flashy cloud
	stroke( (int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255)); //rainbow color
	endX=startX+((int)(Math.random()*10)+(int)(Math.random()*-10));
	endY=startY+((int)(Math.random()*-10)+10);
	line(startX ,startY ,endX ,endY);
	startX=endX;
	startY=endY;
}

void mousePressed()
{
startX=(int)(Math.random()*1000); //for x to change places and not stay at the same position
startY=0;
endX  =0;
endY  =150;
background(0); //create new lightning every time
}
