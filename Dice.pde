void setup()
{
	noLoop();
	size(400,400);
	textAlign(100,430);
	textSize(15);
}
void draw()
{
	background((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	int numDots = 0;
	for(int y = 25; y < 350; y+=50)
	{
		for(int x = 25; x < 350; x+=50)
		{
			Die bob = new Die(x,y);
			bob.show();
			if(bob.face == 1)
			{
				numDots = numDots + 1;
			} else if(bob.face ==2)
			{
				numDots = numDots + 2;
			} else if(bob.face ==3)
			{
				numDots = numDots + 3;
			} else if (bob.face == 3)
			{
				numDots = numDots + 4;
			} else if (bob.face == 5)
			{
				numDots = numDots + 5;
			} else if(bob.face == 6)
			{
				numDots = numDots + 6;
			}

		}
	}
	fill(5,4,4);
	text("Total: " + numDots, 170, 390);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, face;
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		roll();
	}
	void roll()
	{
		face = (int)(Math.random() * 6)+1;
	}
	void show()
	{
		fill((int)(Math.random()*256)+1, (int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
		strokeWeight(2);
		rect(myX,myY, 50,50,6);
		if(face == 1)
		{
			fill((int)(Math.random()*256)+1, (int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
			strokeWeight(0);
			ellipse(myX + 25, myY + 25, 10,10);
		}else if(face ==2)
		{
			fill((int)(Math.random()*256)+1, (int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
			strokeWeight(0);
			ellipse(myX + 25, myY + 25, 10,10);
			ellipse(myX +13,myY +13,10,10);
			ellipse(myX +37,myY +37,10,10);
		} else if(face ==3){
			strokeWeight(0);
			fill((int)(Math.random()*256)+1, (int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
			ellipse(myX + 25, myY + 25, 10,10);
			ellipse(myX +12,myY +12,10,10);
			ellipse(myX +38,myY +38,10,10);
			ellipse(myX +25,myY +25,10,10);
		} else if(face == 4){
			strokeWeight(0);
			fill((int)(Math.random()*256)+1, (int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
			ellipse(myX + 25, myY + 25, 10,10);
			ellipse(myX +12,myY +12,10,10);
			ellipse(myX +12,myY +38,10,10);
			ellipse(myX +38,myY +12,10,10);
			ellipse(myX +38,myY +38,10,10);
		} else if(face == 5){
			strokeWeight(0);
			fill((int)(Math.random()*256)+1, (int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
			ellipse(myX + 25, myY + 25, 10,10);
			ellipse(myX + 25, myY + 25, 10,10);
			ellipse(myX + 25, myY + 25, 10,10);
			ellipse(myX +12,myY +12,10,10);
			ellipse(myX +12,myY +38,10,10);
			ellipse(myX +38,myY +12,10,10);
			ellipse(myX +38,myY +38,10,10);
			ellipse(myX +25,myY +25,10,10);
		} else if(face == 6){
			strokeWeight(0);
			fill((int)(Math.random()*256)+1, (int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
			ellipse(myX + 25, myY + 25, 10,10);
			ellipse(myX +12,myY +12,10,10);
			ellipse(myX +12,myY +25,10,10);
			ellipse(myX +12,myY +38,10,10);
			ellipse(myX +38,myY +25,10,10);
			ellipse(myX +38,myY +12,10,10);
			ellipse(myX +38,myY +38,10,10);
		}
	}
}
