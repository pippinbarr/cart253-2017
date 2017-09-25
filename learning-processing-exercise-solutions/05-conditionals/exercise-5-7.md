### Question
Why doesn’t the following code work properly when it’s moved to draw()?

```java
if (mouseX > x && mouseX < x+w &&
    mouseY > y && mouseY < y+h && mousePressed) {
      button = !button;
}
```

### Answer
Because it will repeatedly flip the button variable between true and false while the mouse is pressed inside the button. Thus, you won't know whether it's going to be true or false when you release the mouse!
