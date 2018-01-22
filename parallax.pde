// BACKGROUND /////////

//background speed
float bgSpeed;

//night sky image
PImage nightSky;
float skyXPos;
float skyYPos;

// MIDDLE GROUND /////////

//middle ground speed
float mgSpeed;

//planet image
PImage planet;
float planetXPos;
float planetYPos;

// FOREGROUND /////////

//foreground speed
float fgSpeed;

//space station image
PImage spaceStation;
float stationXPos;
float stationYPos;

// ASTRONAUT /////////
PImage astronaut;
float astronautXPos;
float astronautYPos;

void setup() {
  size(1200, 800);
  
  //background
  bgSpeed = 1;
  nightSky = loadImage("nightSky.jpg");
  skyXPos = 0;
  skyYPos = -300;
  
  //middle ground
  mgSpeed = 2;
  planet = loadImage("planet.png");
  planetXPos = width-100;
  planetYPos = 250;
  
  //foreground
  fgSpeed = 4;
  spaceStation = loadImage("spaceStation.png");
  stationXPos = 2600;
  stationYPos = 140;

  //astronaut
  astronaut = loadImage("astronaut.png");
  astronautXPos = width/4;
  astronautYPos = mouseY;
}

void draw() {
  //place image of night sky backrground
  image(nightSky, skyXPos, skyYPos);
  //move the sky's x position by the background speed (very slow)
  skyXPos = skyXPos - bgSpeed;
  
  //place planet image
  image(planet, planetXPos, planetYPos);
  //move the planet's x position by the middle ground speed (medium)
  planetXPos = planetXPos - mgSpeed;
  
  //place space station image
  image(spaceStation, stationXPos, stationYPos);
  //move space station's x position by foreground speed (fastest)
  stationXPos = stationXPos - fgSpeed;

  //move the astronaut along the mouse's y position
  astronautYPos = mouseY;
  //draw the astronaut image
  image(astronaut, astronautXPos, astronautYPos);
}