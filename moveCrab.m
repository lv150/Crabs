function [xCrab,yCrab,thetaCrab] = moveCrab (cmd,x,y,theta,size,height,width)

%this function walks the crab sideways, swims the crab backwards and rotates it using the resolutions
%This crab can swim backwards such as the portunidae crab.
%j = move left, "l" =move right, k =swim back, i rotate clockwise, "," =rotate counter clockwise

%It returns the new position of the crab if it is in bounds, otherwise it returns the old position.
%It's new heading.

dtheta = pi/6;
  cstep = 40;

%r*(sin/cos (theta)) = new spot

if(cmd == "j")

  xTemp = x + cstep * sin(theta);
  yTemp = y - cstep * cos(theta);


  if(mapCheck (xTemp,yTemp,size,height,width))
  xCrab = xTemp;
  yCrab = yTemp;

    else
    xCrab = x;
    yCrab = y;

    endif

    thetaCrab = theta;

  elseif(cmd == "l")

  xTemp = x - cstep * sin(theta);
  yTemp = y + cstep * cos(theta);

    if(mapCheck (xTemp,yTemp,size,height,width))
    xCrab = xTemp;
    yCrab = yTemp;

    else
    xCrab = x;
    yCrab = y;

    endif

  thetaCrab = theta;


  elseif(cmd == "k")
  xTemp = x - cstep * cos(theta);
  yTemp = y - cstep * sin(theta);

  if(mapCheck (xTemp,yTemp,size,height,width))
  xCrab = xTemp;
  yCrab = yTemp;

    else
    xCrab = x;
    yCrab = y;

    endif

  thetaCrab = theta + dtheta;

  elseif(cmd == ",")
  xTemp = x;
  yTemp = y;

  if(mapCheck (xTemp,yTemp,size,height,width))
  xCrab = xTemp;
  yCrab = yTemp;

    else
    xCrab = x;
    yCrab = y;

    endif

  thetaCrab = theta - dtheta;

  else
  xCrab = x;
  yCrab = y;
  thetaCrab = theta;

 endif

endfunction
