function level = drawStartScreen (imgName)


  drawMap(imgName)
  
  hold on
   
  
    %read keyboard
   while(1)
    commandwindow(); %shift keyboar to the command window
    cmd = kbhit(1);
    
     if(cmd == '1' || cmd == '2' || cmd == '3' || cmd == '4' || cmd == '5' || cmd == '6' ...
        || cmd == '7' || cmd == '8' || cmd == '9')
        level = str2num(cmd);
        break;
     endif
     
     pause(0.1);
     
   endwhile 
    
   levelLoc = [400,800];
   text(levelLoc(1), levelLoc(2), strcat("Selected level: ", num2str(level)), 'Fontsize', 30, 'Color', 'green')
   pause(2)
  hold off
 
endfunction
