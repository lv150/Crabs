function inBounds = mapCheck (x, y, width, height)
%This function checks if a point is within the map boundary. 
%it returns a 1 if it is and a 0 if it is not.

if(x>width || y>height || x<0 ||y<0)
    inBounds = false;
  else 
    inBounds = true;

endif

endfunction
