// Get a random element from an array
//String[] words = { "apple", "bear", "cat", "dog" };
//int index = int(random(words.length));  // Same as int(random(4))
//println(words[index]);  // Prints one of the four words
PImage [] picGroup1 = new PImage [6];
float x, y;
void setup() {
  size (500, 500);
  picGroup1[0] = loadImage ("shiba 1.png");
  picGroup1[1] = loadImage ("shiba 2.png");
  picGroup1[2] = loadImage ("shiba 3.png");
  picGroup1[3] = loadImage ("shiba 4.png");
  picGroup1[4] = loadImage ("shiba 5.png");
  picGroup1[5] = loadImage ("shiba 6.png");
}
void draw() {
  background(0);
  int index = int(random(picGroup1.length));
  image (picGroup1[index], mouseX, mouseY);
  
}
/*
void mousePressed() {
  if (mousePressed == true) {
    x = mouseX;
    y = mouseY;
    
   // image (, x, y);
  }
}
*/