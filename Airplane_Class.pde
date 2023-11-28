class plane {
  float planeSpeedX;
  float planeSpeedY;
  float planeY; 
  float planeX;
  float planeWidth;
  float planeLength;
  float departureTime;
  float arrivalTime;
  float decelerationFactor;
  float accelerationFactor;
  
  color planeColor;
  
  String planeDirection;
  
  boolean inAir;
  boolean atAirport;
  boolean canLandAtAirport;
  boolean mayday;
  boolean needsRepairs;
  boolean leaving;
  boolean returning;
  
  plane(boolean iA, boolean aA,boolean nR, float dT, float aT, String pD, boolean mD) {
    this.inAir = iA;
    this.atAirport = aA;
    this.mayday = mD;
    this.needsRepairs = nR;
    
    this.departureTime = dT;
    this.arrivalTime = aT;
    
    this.planeDirection = pD;
    
    this.planeWidth = 30;
    this. planeLength = 80;
    this.accelerationFactor = 0.5;
    this.decelerationFactor = 0.5;
    
  }
  
  
  void setDirections() {
    if(this.atAirport == true && this.leaving == true) {
      if(this.planeDirection == "North") {
        this.planeSpeedX = 0.5;
        this.planeSpeedY = 3;
      }
      if(this.planeDirection == "South") {
        this.planeSpeedX = -0.5;
        this.planeSpeedY = -3;
      }
      if(this.planeDirection == "East") {
        this.planeSpeedX = 3;
        this.planeSpeedY = 0;
      }
      if(this.planeDirection == "West") {
        this.planeSpeedY = 0;
        this.planeSpeedX = -3;
      }
    }
    if(this.inAir == true && this.returning == true) {
      if(this.planeDirection == "North") {
        this.planeSpeedX = -0.5;
        this.planeSpeedY = -3;
      }
      if(this.planeDirection == "South") {
        this.planeSpeedX = 0.5;
        this.planeSpeedY = 3;
      }
      if(this.planeDirection == "East") {
        this.planeSpeedX = -3;
        this.planeSpeedY = 0;
      }
      if(this.planeDirection == "West") {
        this.planeSpeedY = 0;
        this.planeSpeedX = 3;
      }
    }
  }
  void drawPlane() {
    fill(0,0,0);
    if(this.needsRepairs == true) {
      fill(255, 0, 0);
    }
    circle(this.planeX, this.planeY,this.planeWidth);
    
  }
  
  void landPlane() {
    
  }
  
  void planeTakeOff() {
    
  }
  
  void returnTrip() {
    if(this.planeDirection == "North") 
      this.planeDirection = "South";
      
    else if(this.planeDirection == "South")
      this.planeDirection = "North";
      
    else if(this.planeDirection == "East")
      this.planeDirection = "West";
      
    else if(this.planeDirection == "West")
      this.planeDirection = "East";
  }
  
  float delayFlightInAir(float D) {
    return this.arrivalTime + D;
  }
  
  float delayFlightOnGround(float D) {
    return this.departureTime + D;
  }
  
  
}
