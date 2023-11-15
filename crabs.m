function crabs (level)
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.

% restart = 1;
% while(restart)

      %draw start screen
     % level = drawStartScreen("OceanBlue.png");


      numJelly = level;
      numCrabs = level;


    % Draw the game map and initialize map dimensions.

      [mapHeight , mapWidth] = drawMap( "BGImage.png" );

      % Initialize captain location, heading and size
      
     
    
    xCapt = 1000;
    yCapt = 850;
    thetaCapt = -pi/2;
    sizeCapt = 50;
    healthCapt = 100;
    pointsCapt = 0;
    crabsCaught = 0;

  %crabsCaught = 0;
  %initialize crab location, heading and size
    xCrab = rand(1, numCrabs)*mapWidth; %crab center x
    yCrab = 0.75*mapHeight+rand(1, numCrabs)*mapHeight/4; %crab center y
    thetaCrab = ones(1, numCrabs)*(-pi/2);
    isCrabsCaught = zeros(1,numCrabs);
    sizeCrab = 50;
      %pointsCrab = 10;

  %initialize jellyfish
  %xJelly = rand*mapWidth;
  %yJelly = 0;
  %thetaJelly = -pi/2;
  %sizeJelly = 30;

  %theta is heading for capt = -pi/2 (-90degrees)
  % Draw the captain and initialize graphics handles


   %initialize jelly  fish
  xJelly = rand(1,numJelly)*mapWidth;
   yJelly = rand(1, numJelly)*mapHeight;
  thetaJelly= ones(1,numJelly)*(-pi/2);
  sizeJelly = 25;
  jellySting= 2;
  
  
  %each entry is 0 to the mapWidth



%*********************************************************

% Put your call to drawCapt() here ..... You must give drawCapt its
% input and output arguments.

%draw captian 
  [captGraphics, xNet, yNet] = drawCapt (xCapt, yCapt, thetaCapt, sizeCapt);
  %crabGraphics = drawCrab(xCrab, yCrab,thetaCrab, sizeCrab);
  
  % draw Crabs
  for k=1:numCrabs
    %if(!isCrabsCaught(k))
       crabGraphics(:,k) = drawCrab(xCrab(k), yCrab(k),thetaCrab(k), sizeCrab);
    %endif
  endfor
  
  
    
  %draw jellyfish
  for j=1:numJelly
    
    jellyGraphics(:,j) = drawJelly(xJelly(j),yJelly(j),thetaJelly(j),sizeJelly);
    
    for i=1:length(jellyGraphics)
      delete(jellyGraphics(i,j));
    endfor
    
      % move jellyfish
    [xJelly(j),yJelly(j),thetaJelly(j)] = moveJelly(level, xJelly(j), yJelly(j), thetaJelly(j), sizeJelly, mapHeight, mapWidth);

    % draw jellyfish
    jellyGraphics(:,j) = drawJelly(xJelly(j),yJelly(j),thetaJelly(j),sizeJelly);
    
  
  endfor

%print health stats 
  healthLoc = [100,100];
  crabsCaughtLoc = [100,175];
  healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', num2str(healthCapt)), 'FontSize', 14, 'Color', 'red');
  crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2), strcat('Crabs Caught = ', num2str(crabsCaught)), 'FontSize', 14, 'Color', 'red');

%*********************************************************
%main loop
%initial command





    while(1) %start game loop

        %remove old and plot new health and points status to screen
        delete(healthStatus);
        delete(crabsCaughtStatus);
        
        healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', num2str(healthCapt)), 'FontSize', 14, 'Color', 'red');
       % pointsStatus = text(pointsLoc(1), pointsLoc(2), strcat('Points = ', num2str(pointsCapt)), 'FontSize', 12, 'Color', 'red');
        crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2), strcat('Crabs Caught = ', num2str(crabsCaught)), 'FontSize', 14, 'Color', 'red');

       
       
         %draw jellyfish
         
         
         
      for j=1:numJelly   
         % erase old jellyfish
        for i=1:length(jellyGraphics(:,j))
          delete(jellyGraphics(i,j));
        endfor

        % move jellyfi
        [xJelly(j),yJelly(j),thetaJelly(j)] = moveJelly(level, xJelly(j), yJelly(j), thetaJelly(j), sizeJelly, mapHeight, mapWidth);

        % draw jellyfish
        jellyGraphics(:,j) = drawJelly(xJelly(j),yJelly(j),thetaJelly(j),sizeJelly);
        
      endfor
  
      
  %   for k=1:numCrabs 
       
       %   if( getDist (xNet, yNet, xCrab(k), yCrab(k)) < 2 * sizeCapt && !isCrabsCaught(k) )
          %      crabsCaught = crabsCaught + 1;
          %      isCrabsCaught(k) = 1;
                %l=length(crabGraphics(:,k)
              
            %    for i=1: length(crabGraphics(:,k))
            %     delete(crabGraphics(i,k));
            %    endfor
              
         % endif 
    %  endfor
        
          %check if captain gets stung by a jellyfish. If so drop his health.
     for j=1:numJelly
          if( getDist(xJelly(j),yJelly(j),xCapt,yCapt) < 5*sizeCapt )
              healthCapt = healthCapt - jellySting;
          endif
      
     endfor
      
         
          
          
          
           %check if captain still has health status
          if(healthCapt < 0)
             break;
          endif 
      
        %read keyboard
      cmd = kbhit(1);
      
      commandwindow();
      
      if(cmd == "Q" || healthCapt < 0 || crabsCaught == numCrabs) %||(getDist(xCrab,yCrab,xCapt,yCapt) <= 10))
       %restart = 0;
       break;
      endif
     
       %read keyboard
      %cmd = kbhit(1);
    %respond to keyboard commands
      if(cmd == "w" || cmd == "a" || cmd == "d" || cmd == "s")

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
            [captGraphics, xNet, yNet] = drawCapt (xCapt, yCapt, thetaCapt, sizeCapt);

      %elseif (cmd == "i" || cmd == "j" || cmd == "k" || cmd == "l" || cmd == ",")
              %crab has been moved

              %    for i=1:length(crabGraphics)
               %   delete(crabGraphics(i));
                  %set(crabGraphics(i), 'Visible', 'off');
             %   endfor

              %erase old crab

             % [xCrab,yCrab,thetaCrab] = moveCrab(cmd,xCrab,yCrab,thetaCrab,sizeCrab,mapWidth,mapHeight);
              %[xCrab,yCrab,thetaCrab] = moveCrab (cmd,x,y,theta,size,height,width)

              %draw new crab

            %  crabGraphics = drawCrab (xCrab, yCrab, thetaCrab, sizeCrab);




        %check if crab is caught make him disappear and create new one
        for k=1:numCrabs
          
                %getDist (xNet, yNet, xCrab(k), yCrab(k))
                 if( !isCrabsCaught(k) && getDist (xNet, yNet, xCrab(k), yCrab(k)) < 2*sizeCapt) %crab is caught
                  
                    crabsCaught = crabsCaught + 1;
                     
                    isCrabsCaught(k) = 1;
                    
                    %crabsCaught = sum(isCrabsCaught);
                     
                     
                     %erase old crab
                         for i=1 : length(crabGraphics(:,k))
                           delete(crabGraphics(i,k));
                         endfor
                     
                 endif
        endfor
    endif


          fflush(stdout);
          pause(.01);
          
  endwhile

  %pointsCapt

  %draw the endscreen here. If restart is requested, restart.
  %restart = drawEndScreen("OceanBlue.png", crabsCaught, numCrabs);

 %endwhile

  close all
   clear
 
endfunction
