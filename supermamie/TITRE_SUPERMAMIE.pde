import ddf.minim.*;
Minim minim;
AudioPlayer player;
float txt;
float xspeed = 70;
PFont font;

void setup()
{
size(500,500);
String[] fontList = PFont.list();
printArray(fontList);
font = createFont("LLPIXEL3.ttf", 100);
txt = 0;

minim = new Minim(this);
player = minim.loadFile("boing3.wav");
player.play();
}

void draw()
{
background(0); 
ellipse(txt, width/1.5,12,12);
fill(13,255,0);
textFont(font,40);
textSize(60);
textAlign(CENTER,CENTER);
text("SUPERMAMIE",250,250);

fill(251,19,27);
txt = txt + xspeed; 

for(int i = 0; i < width; i = i + 15){
  ellipse(i,10,10,10);
  ellipse(i,490,10,10);

  }

if(txt > width) {
  xspeed = -10;
  }
if(txt < 0) {
  xspeed = 10;
  
  noLoop();

  }
  
}
