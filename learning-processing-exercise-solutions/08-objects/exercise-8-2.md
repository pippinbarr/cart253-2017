```java
class Human {

  color hairColor;
  float height;
  boolean awake;
  boolean eyesOpen;

  Human () {
    hairColor = color(100,100,100);
    height = 1 + random(1);
    awake = true;
    eyesOpen = true;
  }

  void sleep () {
    eyesOpen = false;
    awake = false;
  }
}
```
