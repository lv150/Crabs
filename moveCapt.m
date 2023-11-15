function [xCapt, yCapt, thetaCapt] = moveCapt (cmd, x, y, theta, width, height,size)
% before = moveCapt (cmd, x, y, theta, width, height, size)
  dtheta = pi/6;
  dstep = 50;
  
  xCapt = x;
  yCapt = y;
  thetaCapt = theta;
  
  
  
  
 if(cmd == "w") 
  
    xTemp = x + dstep * cos(theta);
    yTemp = y + dstep * sin(theta);
    thetaCapt = theta;
    
    if(mapCheck(xTemp,yTemp,width,height))
      xCapt=xTemp;
      yCapt=yTemp;
      thetaCapt = theta;
    else
      xCapt;
      yCapt;
      thetaCapt = theta;
    endif
    
  endif 

  if(cmd == "s") 
  
    xTemp = x + 100 * cos(theta);
    yTemp = y + 100 * sin(theta);
    thetaCapt = theta;
    
    if(mapCheck(xTemp,yTemp,width,height))
      xCapt=xTemp;
      yCapt=yTemp;
      thetaCapt = theta;
    else
      xCapt;
      yCapt;
      thetaCapt = theta;
    endif
    
  endif 
  
  
  if(cmd == "d") 
  
  xCapt = x;
  yCapt = y;
  thetaCapt = theta + dtheta;
  endif 

  if(cmd == "a")
  xCapt = x;
  yCapt = y; 
  thetaCapt = theta - dtheta;
  endif 
endfunction
