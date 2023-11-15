function [captainGraphics, xNet, yNet] = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt)

% In the future, this function will draw the captain at the given
% position (xCapt , yCapt) , with heading thetaCapt.
% For now, it draws the captain at the (0, 0) with 0 heading.
% This function returns a vector of graphics handles called captainGrapics.
% The ith vector entry contains the graphics handle of ith line of the captain.

% Use your code from last week to get the captain matrix
% for a captain of dimension sizeCapt. Notice that
% sizeCapt is a parameter passed into drawCapt.

capt = getCapt(sizeCapt);
%gets the array of captain points (x, y, z), gets capt matrix

% shift Captain to new location
%T = getTranslation(xCapt,yCapt);
%capt = T*capt;

% rotates captain
R = getRotation(thetaCapt);
captRotated = R*capt;

% shifts captain to a new location
T = getTranslation(xCapt,yCapt);
capt = T*captRotated;



% TODO : Rotate captain from zero heading to heading thetaCapt

% TODO : Shift the captain from (0 , 0) to (xCapt , yCapt)

% Extract the captain points from the captain matrix capt.
pt1=capt( : , 1);
pt2=capt( : , 2);
pt3=capt( : , 3);
pt4=capt( : , 4);
pt5=capt( : , 5);
pt6=capt( : , 6);
pt7=capt( : , 7);
pt8=capt( : , 8);
pt9=capt( : , 9);
pt10=capt( : , 10);
pt11=capt( : , 11);
pt12=capt( : , 12);
pt13=capt( : , 13);
pt14=capt( : , 14);
%pulling points for matrix uses colon to get everything indivdually


%newly added points 
pt15=capt( : , 15);
pt16=capt( : , 16);
pt17=capt( : , 17);
pt18=capt( : , 18);
pt19=capt( : , 19);
pt20=capt( : , 20);

%Set the net center
xNet = pt20(1);
yNet = pt20(2);



% Draw the captain and set the return vector of graphics handles.
%draw line between the points
%k makes it black
%captain graphic is a vector (row or column of numbers) adress to graphics of
%those lines
captainGraphics(1) = drawLine(pt1 , pt2);
captainGraphics(2) = drawLine(pt2 , pt3);
captainGraphics(3) = drawLine(pt2 , pt5);
captainGraphics(4) = drawLine(pt4 , pt5);
captainGraphics(5) = drawLine(pt5 , pt6);
captainGraphics(6) = drawLine(pt6 , pt1);
captainGraphics(7) = drawLine(pt7 , pt8);
captainGraphics(8) = drawLine(pt8 , pt9);
captainGraphics(9) = drawLine(pt9 , pt10);
captainGraphics(10) = drawLine(pt1 , pt11);
captainGraphics(11) = drawLine(pt6 , pt12);
captainGraphics(12) = drawLine(pt13 , pt14);
captainGraphics(13) = drawLine(pt13 , pt14);
captainGraphics(14) = drawLine(pt13 , pt15);
captainGraphics(15) = drawLine(pt15 , pt16);
captainGraphics(16) = drawLine(pt16 , pt17);
captainGraphics(17) = drawLine(pt17 , pt18);
captainGraphics(18) = drawLine(pt18 , pt19);
captainGraphics(19) = drawLine(pt19 , pt13);



%set the captain color to black
for i=1 : length(captainGraphics)
    set (captainGraphics(i), "color", [0 0 0]);
  endfor

endfunction
