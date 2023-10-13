

function inBounds = mapCheck (x, y, width, height, boarder)
%This function checks if a point is within the map boundary. 
%it returns a 1 if it is and a 0 if it is not.

if( x > boarder && x < width-boarder && y > boarder && y < height-boarder)
    inBounds = 1;
  else 
    inBounds = 0;

endif

endfunction
