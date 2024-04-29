int x = 50; // Initial x-coordinate of the ball
int y = 50; // Initial y-coordinate of the ball
int diameter = 50; // Diameter of the ball
int horizontalSpeed = 20; // Speed of the ball in the horizontal direction
int verticalSpeed = 1; // Speed of the ball in the vertical direction

boolean moveRight = true; // Boolean to track movement direction
boolean moveDown = true; // Boolean to track movement direction along y-axis

void setup() {
  size(700, 700); // Create a 700x700px display
}

void draw() {
  background(255); // Clear the background
  
  // Draw the ball
  ellipse(x, y, diameter, diameter);
  
  // Move the ball horizontally
  if (moveRight) {
    x += horizontalSpeed;
  } else {
    x -= horizontalSpeed;
  }
  
  // Move the ball vertically
  if (moveDown) {
    y += verticalSpeed;
  } else {
    y -= verticalSpeed;
  }
  
  // Check if the ball reaches the borders
  if (x + diameter/2 >= width) {
    moveRight = false;
    y += diameter/2; // Move the ball down by its diameter
  } else if (x - diameter/2 <= 0) {
    moveRight = true;
    y += diameter/2; // Move the ball down by its diameter
  }
  
  // Check if the ball reaches the bottom or top of the display
  if (y + diameter/2 >= height) {
    moveDown = false; // Change direction to move up
  } else if (y - diameter/2 <= 0) {
    moveDown = true; // Change direction to move down
  }
}
