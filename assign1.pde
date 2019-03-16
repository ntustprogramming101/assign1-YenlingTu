
float soldierX=0;
float soldierY=80*int(random(2,6));
float soldierSpeedX=4;
float robotX=random(160,560);
float robotY=80*int(random(2,6));
float raserX=robotX;
float raserY=robotY+37;
float raserSpeedX=2;
PImage bg,soil,life1,life2,life3,groundhog,soldier,robot;

void setup() {
  size(640, 480, P2D);
  
//background
bg=loadImage("img/bg.jpg");
soil=loadImage("img/soil.png");
life1=loadImage("img/life.png");
life2=loadImage("img/life.png");
life3=loadImage("img/life.png");
groundhog=loadImage("img/groundhog.png");
soldier=loadImage("img/soldier.png");
robot=loadImage("img/robot.png");

}

void draw() {

//Background
  background(bg);
  image(bg,0,0);
  image(soil,0,160,640,320);
  image(life1,10,10);
  image(life2,80,10);
  image(life3,150,10); 
   //DrawGrass
noStroke();
fill(124, 204, 25);
rect(0,145,640,15);
  //GroundHog
image(groundhog,280,80);
  //DrawSun
stroke(255,255,0);
strokeWeight(5);
fill(253, 184, 19);
ellipse(590,50,120,120);

  //Soldier
  image(soldier,soldierX,soldierY);
  soldierX+=soldierSpeedX;//Soldier Movement
  soldierX%=640;//Soldier Movement 
  //Raser
  stroke(255,0,0);
  strokeWeight(10);
  line(raserX+25- raserSpeedX,raserY,raserX+25- raserSpeedX+min(raserSpeedX,40),raserY);
 raserSpeedX+=2;//Raser Movement
raserSpeedX%=160;//Raser Movement
  //Robot
  image(robot,robotX,robotY);
  }
