
function [xCapt, yCapt, thetaCapt] = moveCapt (cmd, x, y, theta, width, height,size)
% before = moveCapt (cmd, x, y, theta, width, height, size)
  dtheta = pi/6;
  dstep = 50;
  
 if(cmd == "w") 
  
  xCapt = x + dstep * cos(theta);
  yCapt = y + dstep * sin(theta);
  thetaCapt = theta;
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
  
  %thetaCapt;
  
endfunction
