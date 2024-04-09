package jode.UI;

import javax.swing.JFrame;

public class Window extends JFrame{
  public Window(){
    setDefaultCloseOperation(EXIT_ON_CLOSE);
    setVisible(true);
  }

  public void isCenter(boolean isit){
    if(isit){
      setLocationRelativeTo(null);
    }
  }
}
