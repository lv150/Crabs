function crabs (level)
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
xCrab = 1000;
yCrab = 1100;
thetaCrab = -pi/2;
sizeCrab = 50;

%initialize jellyfish
xJelly = rand*mapWidth;
yJelly = 0;
thetaJelly = -pi/2;
sizeJelly = 25;

%theta is heading for capt = -pi/2 (-90degrees)
% Draw the captain and initialize graphics handles

%*********************************************************

% Put your call to drawCapt() here ..... You must give drawCapt its
% input and output arguments.

%draw intial captian and crab
captGraphics = drawCapt (xCapt, yCapt, thetaCapt, sizeCapt);
crabGraphics = drawCrab(xCrab, yCrab,thetaCrab, sizeCrab);
jellyGraphics = drawJelly(xJelly,yJelly,thetaJelly,sizeJelly);


%*********************************************************

%initial command


while(1)

      % erase old jellyfish
    for i=1:length(jellyGraphics)
    delete(jellyGraphics(i));
    endfor

    % move jellyfish
    [xJelly,yJelly,thetaJelly] = moveJelly(level, xJelly, yJelly,thetaJelly, sizeJelly,
    mapHeight,mapWidth);

    % draw jellyfish
    jellyGraphics = drawJelly(xJelly,yJelly,thetaJelly,sizeJelly);

  cmd = kbhit(1);
  if(cmd == "Q")
    break;
  endif


 if(cmd == "w" || cmd == "a" || cmd == "d")

        %erase old captain
        %reads vector and returns a length from 1 to 9 the visible  parameter makes capt
        %dissappear.
          for i=1:length(captGraphics)
            delete(captGraphics(i));
            %set(captGraphics(i), 'Visible', 'off');
          endfor

      %move captain

        [xCapt,yCapt,thetaCapt] = moveCapt(cmd,xCapt,yCapt,thetaCapt,mapWidth,mapHeight,sizeCapt);


      %draw new captain
        captGraphics = drawCapt (xCapt, yCapt, thetaCapt, sizeCapt);

elseif (cmd == "i" || cmd == "j" || cmd == "k" || cmd == "l" || cmd == ",")
          %crab has been moved

              for i=1:length(crabGraphics)
              delete(crabGraphics(i));
              %set(crabGraphics(i), 'Visible', 'off');
            endfor

          %erase old crab

          [xCrab,yCrab,thetaCrab] = moveCrab(cmd,xCrab,yCrab,thetaCrab,mapWidth,mapHeight,sizeCrab);
          %[xCrab,yCrab,thetaCrab] = moveCrab (cmd,x,y,theta,size,height,width)

          %draw new crab

          crabGraphics = drawCrab (xCrab, yCrab, thetaCrab, sizeCrab);

endif

fflush(stdout);
pause(.01)
endwhile



close all
 clear
endfunction
