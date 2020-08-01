class CookiesMap {

  // Constants
  color COOKIE_COLOR = color(255);
  
  int cols_and_rows;
  int video_scale;
  
  
  CookiesMap(int cols_and_rows, int screen_size) {
    this.cols_and_rows = cols_and_rows;
    this.video_scale = screen_size/cols_and_rows;
  }
  
  void draw() {
    
    pushStyle();

    // Begin loop for columns
    for (int i = 0; i < this.cols_and_rows; i++) {
      // Begin loop for rows
      for (int j = 0; j < this.cols_and_rows; j++) {
  
        // Scaling up to draw a rectangle at (x,y)
        float x = i * this.video_scale;
        float y = j * this.video_scale;
        
        Cookie singleCookie = new Cookie(COOKIE_COLOR, 20.0, x + (video_scale / 2), y + (video_scale / 2));
        
        singleCookie.draw();
      }
    }
    
    popStyle();
    
  }

}
