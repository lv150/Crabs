function restart = drawEndScreen (imgName,crabsCaught,numCrabs)

    drawMap(imgName)
    hold on
      %text Let's Play

      textLoc = [ 300, 800];
      textHandle = text(textLoc(1),textLoc(2), strcat('Success! ', 'Total Crabs Caught: ', num2str(crabsCaught)), 'Fontsize', 12, 'Color', 'green');
      pause(5)
     %text do you want to play again y/n?
      delete(textHandle)
    %  textHandle=

      while(1)
        %read keyboard

        commandwindow();
        cmd=kbhit(1);

        if( cmd == 'y' || cmd == 'Y')
              restart = 1;
              break;
        elseif( cmd == 'n' || cmd == 'N')
               restart = (0);
               break;
        endif
       pause(0.1);
      endwhile


    hold off


endfunction
