```java
int[] numbers = new int[10];
// Valid
// 10 is just an integer

float[] numbers = new float[5 + 6];
// Valid
// 5 + 6 evaluates to 11

int num = 5;
float[] numbers = new int[num];
// Not valid
// Variable is defined as an array of floats but assigned an array of integers

float num = 5.2;
Car[] cars = new Car[num];
// Not valid
// You can't have a float-length array

int num = (5 * 6)/2;
float[] numbers = new float[num = 5];
// Valid (maybe surprisingly)
// The expression "num = 5" returns 5 (an integer)

int num = 5;
Zoog[] zoogs = new Zoog[num * 10];
// Valid
// num * 10 gives us 50 (an integer)
```
