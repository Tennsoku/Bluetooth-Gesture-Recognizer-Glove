import processing.net.*;
Client myClient;

int pitch;
int roll;
int yaw;
int finger;

float x,y,z;

int h = 240;
int w = 320;
int t = 40;

String inString; 
int bytecount;
byte [] byteBuffer = new byte[4];
byte newline = 10;

void setup() {
 size(1920, 1080, P3D);
 pitch = 0;
 roll = 0;
 yaw = 0;

 x = width/2;
 y = height/2 + h;
 z = 0;
 
 frameRate(30);

 // Connect to local machine on port 7214
 myClient = new Client(this, "127.0.0.1", 7214);
}

void build_hand() {
 pushMatrix();
 translate(-w/2, -w/2, 0);
 beginShape();
 vertex(0, 0, 0);
 vertex(w, 0, 0);
 vertex(w, h, 0);
 vertex(w/2, w, 0);
 vertex(0, h, 0);
 endShape(CLOSE);

 beginShape(QUADS);
 vertex(0,0,0);
 vertex(w,0,0);
 vertex(w,0,-t);
 vertex(0,0,-t);

 vertex(w,0,0);
 vertex(w,h,0);
 vertex(w,h,-t);
 vertex(w,0,-t);

 vertex(w,h,0);
 vertex(w/2,w,0);
 vertex(w/2,w,-t);
 vertex(w,h,-t);

 vertex(w/2,w,0);
 vertex(0,h,0);
 vertex(0,h,-t);
 vertex(w/2,w,-t);

 vertex(0,h,0);
 vertex(0,0,0);
 vertex(0,0,-t);
 vertex(0,h,-t);
 endShape();

 beginShape();
 vertex(0, 0, -t);
 vertex(w, 0, -t);
 vertex(w, h, -t);
 vertex(w/2, w, -t);
 vertex(0, h, -t);
 endShape(CLOSE);
 popMatrix();

 build_fingers();


}

void build_fingers() {
 pushMatrix();
 translate(-w/2, -w/2, 0);
 rotateX(radians((float)finger));
 //rotateX(radians(30));

 // Currently in center
 beginShape(QUADS);
 vertex(0, 0, 0);
 vertex(w, 0, 0);
 vertex(w, -w - t, 0);
 vertex(0, -w - t, 0);

 vertex(0, 0, 0);
 vertex(0, -w - t, 0);
 vertex(0, -w - t, -t);
 vertex(0, 0, -t);

 vertex(w, 0, 0);
 vertex(w, -w - t, 0);
 vertex(w, -w - t, -t);
 vertex(w, 0, -t);

 vertex(0, -w - t, 0);
 vertex(w, -w - t, 0);
 vertex(w, -w - t, -t);
 vertex(0, -w - t, -t);

 vertex(0, 0, -t);
 vertex(w, 0, -t);
 vertex(w, -w - t, -t);
 vertex(0, -w - t, -t);
 endShape();
 popMatrix();
}

void draw() {
 background(0);
 myClient.write("Hello");
 
 if (myClient.available() > 0) {
  //if(false) {
   inString = myClient.readStringUntil('*');
   pitch = Integer.valueOf(inString.substring(0, inString.length()-1));
   inString = myClient.readStringUntil('*');
   roll = Integer.valueOf(inString.substring(0, inString.length()-1));
   inString = myClient.readStringUntil('*');
   yaw = Integer.valueOf(inString.substring(0, inString.length()-1));
   inString = myClient.readStringUntil('*');
   finger = Integer.valueOf(inString.substring(0, inString.length()-1));
   
   //output.println(pitch + " " + roll + " " + yaw + " " + finger);
  }
  
 
 translate(x,y,z);
 rotateY(radians((float)roll));
 rotateX(radians((float)pitch));
 rotateZ(radians((float)yaw));
 build_hand();
}
