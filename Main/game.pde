class Game {

  Scenario scenario;
  CookiesMap cookies_map;
  Pacman pacman;

  Game() {
  
    scenario = new Scenario(20, 1000); // Creates the background 
    cookies_map = new CookiesMap(20, 1000); // Creates the cookies map
    pacman = new Pacman(width/2, height/2);
    
  }
  
  
  void draw() {

    scenario.draw(); // Prints the background   
    cookies_map.draw(); // Prints the cookies
    pacman.draw();
    pacman.move();
    
  }



}
