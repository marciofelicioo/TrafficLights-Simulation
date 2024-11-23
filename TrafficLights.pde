Background bg = new Background(120);
int numLights = 2;
int numLights_ = 4;
int num_lights_1 = 2;
int num_lights_2 = 4;
Light[] lights = new Light[numLights];
Light_1[] lights_1 = new Light_1[numLights_];
Light_2[] lights_2 = new Light_2[num_lights_1];
Light_3[] lights_3 = new Light_3[num_lights_2];
int[][] durations = {{2000, 1900, 3000}, {2000, 1900, 3000}};
Car myCar = new Car(900, 180, 5, color(random(255), random(255), random(255)),durations[0]);
Car myCar1 = new Car(-100, 232, 5, color(random(255), random(255), random(255)),durations[0]);
Car myCar2 = new Car(-100, 20, 5, color(random(255), random(255), random(255)),durations[0]);
Car myCar3 = new Car(900, -32, 5, color(random(255), random(255), random(255)),durations[0]);
Car1 myCar4 = new Car1(180, -500, 5, color(random(255), random(255), random(255)),durations[1]);
Car1 myCar5 = new Car1(580, -500, 5, color(random(255), random(255), random(255)),durations[1]);
Car1 myCar6 = new Car1(231, 540, 5, color(random(255), random(255), random(255)),durations[1]);
Car1 myCar7 = new Car1(631, 540, 5, color(random(255), random(255), random(255)),durations[1]);

 
 
 
void setup() {
  size(800, 530);
  lights[0] = new Light(684,180,durations[0]); 
  lights[1] = new Light(285,180,durations[0]);
  lights_1[0] = new Light_1(420,330,durations[0]);
  lights_1[1] = new Light_1(420,120,durations[0]);
  lights_1[2] = new Light_1(20,330,durations[0]);
  lights_1[3] = new Light_1(20,115,durations[0]);
  lights_2[0] = new Light_2(118,120,durations[1]);
  lights_2[1] = new Light_2(518,120,durations[1]);
  lights_3[0] = new Light_3(251,322,durations[1]);
  lights_3[1] = new Light_3(651,322,durations[1]);
  lights_3[2] = new Light_3(651,110,durations[1]);
  lights_3[3] = new Light_3(251,110,durations[1]);
}

void draw() {
  background(255);
  int x = mouseX;
  int y = mouseY;
  println("x: " + x + ", y: " + y);
  ellipse(x, y, 50, 50);
  bg.draw();
  for (Light light : lights) 
  {
    light.update_();
    if (light.currentLight > 1 && ((myCar.x > 340 && myCar.x < 380) || (myCar.x < 790 && myCar.x > 649))) 
    {
        myCar.speed = 0; 
        myCar3.speed = 0;
    } 
    else if (light.currentLight == 1 && (myCar.x < 800 && myCar.x > 725) || (myCar.x > 350 && myCar.x < 450))  
    {
        myCar.speed = 1; 
        myCar3.speed = 1;
    } 
    else if (light.currentLight == 0) 
    {
        myCar.speed = 5;
        myCar3.speed = 5;
    }
  }
  for (Light_1 light : lights_1) 
  {
    light.update();
    if (light.currentLight > 1 && (myCar1.x > 420 && myCar1.x < 460 || myCar1.x < 151 && myCar1.x > 10)) 
    {
        myCar1.speed = 0;
        myCar2.speed = 0;
    } 
    else if (light.currentLight == 1 && (myCar1.x < 75 && myCar1.x > 0) || (myCar1.x < 450 && myCar1.x > 350)) 
    { 
        myCar1.speed = 1;
        myCar2.speed = 1;
    } 
    else if (light.currentLight == 0) 
    {
        myCar1.speed = 5;
        myCar2.speed = 5;
    }
  }
  for (Light_2 light : lights_2) 
  {
    light.update();
    if (light.currentLight == 0 && ((myCar4.y < 190 && myCar4.y > 115) || (myCar4.y == -90))) 
    {
  
        myCar4.speed = 0;
        myCar5.speed = 0;
    } 
    else if (light.currentLight == 1 && (myCar4.y < 115 && myCar4.y > 80)) 
    { 
        myCar4.speed = 1;
        myCar5.speed = 1;
    } 
    else if (light.currentLight > 1) 
    {
        myCar4.speed = 5;
        myCar5.speed = 5;
    }
  }
  for (Light_3 light : lights_3) 
  {
    light.update();
    if (light.currentLight == 0 && ((myCar7.y > 325 && myCar7.y < 400))) 
    {
        myCar6.speed = 0;
        myCar7.speed = 0;
    } 
    else if (light.currentLight == 1 && ((myCar7.y < 470 && myCar7.y > 375) || (myCar7.y < 223 && myCar7.y > 170))) 
    { 
        myCar6.speed = 1;
        myCar7.speed = 1;
    } 
    else if (light.currentLight > 1) 
    {
        myCar6.speed = 5;
        myCar7.speed = 5;
    }
  }
  myCar.x -= myCar.speed;
  myCar1.x += myCar1.speed; 
  myCar2.x += myCar2.speed;
  myCar3.x -= myCar3.speed;
  myCar4.y += myCar4.speed;
  myCar5.y += myCar5.speed;
  myCar6.y -= myCar6.speed;
  myCar7.y -= myCar7.speed;
  myCar.display();
  myCar1.display(); 
  myCar2.display();
  myCar3.display();
  myCar4.display();
  myCar5.display();
  myCar6.display();
  myCar7.display();
   if (myCar.x < -400) { 
     myCar.c = color(random(255), random(255), random(255));
    myCar.x = 950; 
  }   
    if (myCar1.x > 800) { 
       myCar1.c = color(random(255), random(255), random(255));
    myCar1.x = -100; 
  } 
     if (myCar2.x > 800) { 
       myCar2.c = color(random(255), random(255), random(255));
    myCar2.x = -100; 
  } 
     if (myCar3.x <-400) { 
        myCar3.c = color(random(255), random(255), random(255));
    myCar3.x = 950; 
  } 
      if (myCar4.y > 540) { 
    myCar4.y = -500; 
  } 
       if (myCar5.y > 540) { 
    myCar5.y = -500; 
  } 
       if (myCar6.y < -140) { 
    myCar6.y = 540; 
  } 
       if (myCar7.y < -140) { 
    myCar7.y = 540; 
  } 
}
