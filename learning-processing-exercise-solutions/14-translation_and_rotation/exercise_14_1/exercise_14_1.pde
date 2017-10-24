/* 
   Fill in the appropriate translate() functions to 
   create this pattern. Once you’re finished, try 
   adding a third argument to translate() to move the 
   pattern into three dimensions.
 */

size(200, 200, P3D);

background(0);

stroke(255);
fill(255, 100);

translate(100, 0); // 2D version
//translate(100, 0, 20); // 3D version
rect(0, 0, 100, 100);

translate(-50, 50); // 2D version
//translate(-50, 50, 20); // 3D version
rect(0, 0, 100, 100);

translate(0, 100); //2D version
//translate(0, 100, 20); //3D version

line(0, 0, -50, 50);