function crabs ()
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.

% Draw the game map and initialize map dimensions.

[mapHeight , mapWidth] = drawMap( "BGImage.png" );

% Initialize captain location, heading and size
xCapt = 1000;
yCapt = 850;
thetaCapt = -pi/2;
sizeCapt = 50;


%initialize crab location, heading and size
%xCrab = 1000;
%yCrab = 1100;
%thetaCrab = -pi/2;
%sizeCrab = 50;

%theta is heading for capt = -pi/2 (-90degrees)
% Draw the captain and initialize graphics handles

%*********************************************************

% Put your call to drawCapt() here ..... You must give drawCapt its
% input and output arguments.

%draw intial captian and crab
captGraphics = drawCapt (xCapt, yCapt, thetaCapt, sizeCapt);
%crabGraphics = drawCrab(xCrab, yCrab,thetaCrab, sizeCrab);


%*********************************************************

%initial command
cmd = "null";

while(cmd != "Q")


  % read keyboard

  cmd = kbhit();

if(cmd == "w" || cmd == "a" || cmd == "d")

  %erase old captain
  %reads vector and returns a length from 1 to 9 the visible  parameter makes capt 
  %dissappear.
    for i=1:length(captGraphics)
      set(captGraphics(i), 'Visible', 'off');
    endfor

%move captain
  %xCapt = xCapt + 50 * cos(thetaCapt)
 % yCapt = yCapt + 50 * sin(thetaCapt)
  [xCapt,yCapt,thetaCapt] = moveCapt(cmd,xCapt,yCapt,thetaCapt,mapWidth,mapHeight,sizeCapt);
%xCapt
%yCapt

%draw new captain
  captGraphics = drawCapt (xCapt, yCapt, thetaCapt, sizeCapt);

%elseif (cmd == "i" || cmd == "j || cmd == "k" || cmd == "l" || cmd == ",") %crab has been moved

  %erase old crab
  %[xCrab,yCrab,thetaCrab] = moveCrab(cmd,xCrab,yCrab,thetaCrab,mapWidth,mapHeight,sizeCrab);

  
  %draw new crab
  %crabGraphics = drawCrab (xCrab, yCrab, thetaCrab, sizeCrab);


  
endif

endwhile



close all
%clear
endfunction
