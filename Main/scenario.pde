class Scenario {

  // Constants
  color CELL_COLOR = color(0);
  color BORDER_COLOR = color(0);
  
  int cols_and_rows;
  int video_scale;
  
  
  Scenario(int cols_and_rows, int screen_size) {
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
        int x = i*this.video_scale;
        int y = j*this.video_scale;
        
        fill(CELL_COLOR);
        stroke(BORDER_COLOR);
        // For every column and row, a rectangle is drawn at an (x,y) location scaled and sized by videoScale.
        rect(x, y, this.video_scale, this.video_scale);
      }
    }
    
    popStyle();
    
  }
  
}
