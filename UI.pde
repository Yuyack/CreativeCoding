import controlP5.*;
import peasy.*;

ControlP5 slider;
PeasyCam cam;

void UI() {
  int sliderWidth = 300;
  int sliderHeight = 30;

  cam = new PeasyCam(this, 800);

  slider = new ControlP5(this, createFont("微软雅黑", 14));

  slider.addSlider("colorOf")
    .setPosition(20, 20)
    .setSize(sliderWidth, sliderHeight)
    .setRange(#000000,#FFFFFF)
    .setValue(#E87AF7)
    ;

  slider.addSlider("sidesOf")
    .setPosition(20, 60)
    .setSize(sliderWidth, sliderHeight)
    .setRange(3, 100)
    .setValue(8)
    ;
    
      slider.addSlider("heightOf")
    .setPosition(20, 100)
    .setSize(sliderWidth, sliderHeight)
    .setRange(0, 1000)
    .setValue(350)
    ;
    
      slider.addSlider("topSize")
    .setPosition(20, 140)
    .setSize(sliderWidth, sliderHeight)
    .setRange(1, 100)
    .setValue(30)
    ;
    
          slider.addSlider("middleSize")
    .setPosition(20, 140)
    .setSize(sliderWidth, sliderHeight)
    .setRange(1, 300)
    .setValue(200)
    ;
        
      slider.addSlider("bottomSize")
    .setPosition(20, 180)
    .setSize(sliderWidth, sliderHeight)
    .setRange(1, 500)
    .setValue(100)
    ;

  slider.setAutoDraw(false);
}

void controlEvent(ControlEvent theEvent) {
  if (theEvent.isFrom(slider.getController("colorOf")) ||
    theEvent.isFrom(slider.getController("sidesOf"))||
    theEvent.isFrom(slider.getController("rotateRange"))||
    theEvent.isFrom(slider.getController("bottomSize"))||
    theEvent.isFrom(slider.getController("middleSize"))||
    theEvent.isFrom(slider.getController("topSize"))||
    theEvent.isFrom(slider.getController("heightOf"))){
  }
}
