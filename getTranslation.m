
function T = getTranslation (xCapt, yCapt)
  % Multiplies the captain matrix to move/translate captain
T = [1,0, xCapt; 0, 1, yCapt; 0, 0 1];
endfunction
