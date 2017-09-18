_Exercise 3-1: In English, write out the  ow for a simple computer game, such as Pong. If you’re not familiar with Pong,
visit: http://en.wikipedia.org/wiki/Pong to find out about it_

# PONG

1. Draw a centerline, paddles on left and right edges of the screen, a ball in the centre, and a score for each paddle at the top of the screen.
2. Launch the ball to the left if the right paddle just won a point, to the right if the left paddle just won a point, and in a random direction if this is the first point.
3. When the left player moves their joystick up, move the left paddle up.
4. When the left player moves their joystick down, move the left paddle down.
5. When the right player moves their joystick up, move the right paddle up.
6. When the right player moves their joystick down, move the right paddle down.
7. If the ball hits a paddle, reflect it back in the opposite direction. The closer the ball is to an edge of the paddle, the more oblique the angle should be.
8. If the ball moves past the left edge of the screen, add one to the right player's score.
9. If the ball moves past the right edge of the screen, add one to the left player's score.
10. If the ball is off the edge, move the ball to the center. If one player's score is 11 or greater and at least 2 higher than the other player's score, the game is over and that player won. Otherwise, go to 2.
