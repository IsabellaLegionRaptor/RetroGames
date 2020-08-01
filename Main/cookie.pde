class Cookie {

  color cookie_color;
  float cookie_size;
  float position_x;
  float position_y;
  
  Cookie(color cookie_color, float cookie_size, float position_x, float position_y) {
  
    this.cookie_color = cookie_color;
    this.cookie_size = cookie_size;
    this.position_x = position_x;
    this.position_y = position_y;
  
  }
  
  void draw() {
  
    pushStyle();
    
    fill(this.cookie_color);
    circle(this.position_x, this.position_y, this.cookie_size);
    
    popStyle();
  
  }


}
