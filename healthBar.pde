public class healthBar {
  
  private int bX, bY, bW, bH;
  
  private int bMin, bMax;

  private float bValue=0;

  private float scalingVal;

  private boolean isVisible=false;

  private color fillColor=color(255,0,0);
  private color bkgdColor=color(0,0,0,0);
  private color borderColor=color(0,0,0);
  private int borderWidth=1;

  healthBar (int bX, int bY, int bW, int bH, int bMax){
      this.bX = bX;
      this.bY = bY;
      this.bW = bW;
      this.bH = bH;
      this.bMax = bMax;
      this.bMin = 0;
      finSetup();
  }

  private void finSetup(){
      this.bValue=bMin;
      this.scalingVal = ((float)(bW)) / ((float)(bMax-bMin));
  }
  
  public void update(){
    if(isVisible==false) return;
    display();
    
  }


  public void display() {
    pushStyle();

    
    //draw the fill
    noStroke();
    if(bkgdColor!=color(0,0,0,0)){
      fill(bkgdColor);
      rect(bX,bY,bW,bH);
    }
    
    fill(fillColor); //color fill
    
    rect(bX, bY, genWidth(), bH); //fill the bar, up to the value
    
    //draw outline
    fill(0,0,0,0); //empty base
    stroke(borderColor); //black border
    strokeWeight(borderWidth); //1px border
    //draw the outline
    rect(bX, bY, bW, bH);
    popStyle();
  }
  
  float genWidth(){
    float tmpWid = (scalingVal*(bValue-bMin));
    if(tmpWid>bMax)       { return bMax;   } //if too high, return max to prevent overflow
    else if(tmpWid<bMin)  { return 0;   } //if too low, return min to prevent overflow
    else                  { return tmpWid; } //if just right, just return the real value
    
  }


  
  public void adjustValue(float increment){
    setValue(bValue+increment);
  }
  
  
  public void setValue(float bValue){
    if(bValue>bMax)       { this.bValue = bMax;   } //if too high, return max to prevent overflow
    else if(bValue<bMin)  { this.bValue = 0;      } //if too low, return min to prevent overflow
    else                  { this.bValue = bValue; } //if just right, just return the real value
  }
  public void setPercent(float percent){
    //(bMax-bMin)*100 = total range
    //println((((bMax-bMin)*((int)(percent*100)))/10000));
    
    //rounds off the percent to the hundreths place by *100 and int casting, then multiplies that percent by the range, and /10000 to get the value
    setValue(((bMax-bMin)*((int)(percent*100)))/10000);
    
  }


  public void setFillColor(color c)  { fillColor=c;  }
  public void setBkgdColor(color c)  { bkgdColor=c;  }
  public void setBorderColor(color c){ borderColor=c; }
  public void setBorderWidth(int w)  { borderWidth=w; }
  
  public float getScale() {return scalingVal;}  
  public float getVal() {return bValue;}
  public void setVisibility(boolean status) {isVisible=status;}
  public boolean visibility() {return isVisible;}
}
