float soldierx=0;
float soldiery=80*int(random(2,6));
float soldierSpeedx=4;
float robotx=random(160,560);
float roboty=80*int(random(2,6));
float raserx=robotx;
float rasery=roboty+37;
float raserSpeedx=2;
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
  image(soldier,soldierx,soldiery);
  soldierx+=soldierSpeedx;//Soldier Movement
  soldierx%=640;//Soldier Movement
  //Robot
  image(robot,robotx,roboty);
  //Raser
  fill(255,0,0);
 ellipse(robotx-10-raserSpeedx,rasery,10,10);
ellipse(robotx+20-raserSpeedx,rasery,10,10);
 rect(robotx-10-raserSpeedx,rasery-5,30,10) ;
 raserSpeedx+=2;//Raser Movement
raserSpeedx%=160;//Raser Movement

}
