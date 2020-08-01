class Pacman {

  color PACMAN_COLOR = color(255, 255, 0);
  int PACMAN_SIZE = 35;
  float PACMAN_SPEED = 4.0;
  
  float position_x;
  float position_y;
  
  Pacman(float position_x, float position_y){
  
    this.position_x = position_x;
    this.position_y = position_y;
  
  }
  
  void draw() {
  
    pushStyle();
    
    fill(PACMAN_COLOR);
    circle(this.position_x, this.position_y, PACMAN_SIZE);
    
    popStyle();
  
  }
  
  void move() {
  
    if (keyPressed) {      
      
      if(keyCode == UP) {
        this.position_y = this.position_y - PACMAN_SPEED;
      } else if (keyCode == DOWN) {
        this.position_y = this.position_y + PACMAN_SPEED;
      } else if (keyCode == RIGHT) {
        this.position_x = this.position_x + PACMAN_SPEED;
      } else if (keyCode == LEFT) {
        this.position_x = this.position_x - PACMAN_SPEED;
      }
      
    }
    else {
    
    }
  
  }



}
