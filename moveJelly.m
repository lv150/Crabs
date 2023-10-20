function [xJelly,yJelly,thetaJelly] = moveJelly (level,x,y,theta,size,height,width)

  dStep = 20 * level;
  xJelly = x;
  yJelly = y + dStep;
  thetaJelly = theta;

  if(yJelly > height - 10 * size)

    yJelly = size;
    xJelly = rand * width;

endif

endfunction
