# Crabs

Function: crabs: void -> void <br>
Purpose: crabs()'s purpose is to render the game. It draws the game map, initializes map dimensions, draws the captain, initialize captain graphics handles, initializes crab graphics handles, draws the crab, calls moveCrab, and calls moveCapt. crabs() erases and redraws the crab and captain after they move based on commands from the keyboard. (The void inputs and outputs mean that nothing is required.) <br>
crabs() uses drawCapt and drawMap to draw captain graphics including its position, size, and location on the background image. crabs() uses drawCrab to draw the crab graphics including its position, size, and location on the background image. crabs() uses moveCapt and moveCrab to shift and rotates locations of the crab and captain respectively on the background. <br>
Dependencies: drawCapt drawMap moveCapt drawCapt moveCrab drawCrab<br>
Call: crabs() <br>
Side Effects: None. <br>
<br>
<br>

Function: drawCapt: number number number number -> vector <br>
Purpose: drawCapt's purpose is to draw the captain at a given position with heading thetaCapt. drawCapt returns a vector of graphics handles called captainGraphics and draws lines between given points. <br>
drawCapt uses getCapt to get the matrix of captain points and getTranslation to shift the Captain to a new location and getRotation to rotate it in either direction. <br>
Dependencies: getCapt getTranslation getRotation <br>
Call: captainGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt) <br>
Side Effects: Draws Captain. <br>
<br>
<br>

Function: drawCrab: number number number number -> matrix <br>
Purpose: drawCrabs's purpose is to draw the crab at a given position with heading thetaCapt. drawCrab returns a vector of graphics handles called crabGraphics and draws lines between given points. <br>
drawCrab uses getCrab to get the matrix of captain points and getTranslation to shift the crab to a new location and getRotation to rotate it in either direction. <br>
Dependencies: getCrab getTranslation getRotation <br>
Call: h = drawCrab (xCrab,yCrab,thetaCrab,sizeCrab) <br>
Side Effects: Draws crab. <br>
<br>
<br>


Function: drawLine: vector vector color -> graphics handle <br>
Purpose: drawLine plots a line from point p to point q with color. <br>
drawLine extracts x and y coordinates for p and q and creates an array so that specific function input and other elements of the array can be accesssed. <br>
Dependencies: None. <br>
Call: handle = drawLine ( p, q, myColor) <br>
Side Effects: Draws a line. <br>
<br>
<br>


Function: drawMap: image -> number number (map dimensions) <br>
Purpose: drawMap draws the background map for the game using the image named imageName and returns the map dimensions base in the supplied image. The size of the background image defines the map dimensions of the game and establishes the coordinate system. <br>
drawMap clears any current figures, creates a game figure, reads background image and gets it's size, displays background image in figure, gives the figure the title of Crabs, and keeps the background to only plot on top of it. <br>
Dependencies: None. <br>
Call: [height,width] = drawMap(imageName) <br>
Side Effects: None.  <br>
<br>
<br>


Function: getCapt: number -> matrix <br>
Purpose: getCapt computes and returns the captain centered at the origin with a heading angle of zero. The captain is returned in the form of a matrix with each column representing one point on the captain. The parameter captSize scales the drawing of the captain and sets it's size. <br>
getCapt creates a capitain matrix with points located at x and y coordinates or (captSize, captSize). <br>
Dependencies: None. <br> 
Call: capt = getCapt (captSize) <br>
Side Effects: Creates Capt Matrix. <br>
<br>
<br>

Function: getCrab: number -> matrix <br>
Purpose: getCrab computes and returns the crab centered at the origin with a heading angle of zero. The crab is returned in the form of a matrix with each column representing one point on the crab. The parameter crabSize scales the drawing of the crab and sets it's size. <br>
getCrab creates a crab matrix with points located at x and y coordinates or (crabSize, crabSize). <br>
Dependencies: None. <br> 
Call: crab = getCrab (size) <br>
Side Effects: Creates Crab Matrix. <br>
<br>
<br>

Function: getRotation: number -> matrix <br>
Purpose: getRotation rotates the captain based on the number given for theta. <br>
getRotation multiplies the capt matrix by theta after it has been translated through getTranslation. It returns the rotated capt handle and rotates the captain graphics. <br>
Dependencies: None. <br> 
Call: R = getRotation(theta) <br>
Side Effects: None. <br>
<br>
<br>

Function: getTranslation: number number -> matrix <br>
Purpose: xCapt represents the amount to shift in the x direcetion and yCapt represent the amount to shift in the y direction. <br>
getTranslation uses thes numbers to create a 3X3 matrix that will translate an object stored as a 3XN matrix when it multiplies the object matrix. (Returns the handle and draws the line.) <br>
Dependencies: None. <br>
Call: T = getTranslation(xCapt,yCapt) <br>
Side Effects: None. <br>
<b>
<b>

Function: mapCheck: number number number number number -> number <br>
Purpose: mapCheck checks if a point is within the map boundary and returns a 1 if it is and a 0 if it is not. <br>
mapCheck checks the x and y coordinates for the captain and the crab and compares the to the boarder boundary, if the points are off the captian and/or crab doesn't move. <br>
Dependencies: None. <br>
Call: inBounds = mapCheck (x, y, width, height, boarder) <br>
Side Effects: None. <br>
<br>
<br>

Function: moveCapt: string number number number number number number -> number number number (new Captain coordinates) <br>
Purpose: moveCapt use if statements to assess commands from the keyboard and if true change the points of the Captain. The Captain moves forward and rotates to the left or the right. <br>
moveCaptain uses dtheta and dstep to establish a permanent rotation amount and a permanent step amount.  <br>
Dependencies: None. <br>
Call: [xCapt, yCapt, thetaCapt] = moveCapt (cmd, x, y, theta, width, height,size) <br>
Side Effects: None. <br>
<br>
<br>

Function: moveCrab: string number number number number number number -> number number number (new Crab coordinates) <br>
Purpose: moveCrab use if statements to assess commands from the keyboard and if true change the points of the crab. The crab shuffles to the left and to the right. The crab also swims backwards and rotates to the left and right. <br>
moveCrab uses cstep to establish a permanent step amount.  <br>
Dependencies: None. <br>
Call: [xCapt,yCapt,thetaCapt] = moveCrab (cmd,x,y,theta,size,height,width) <br>
Side Effects: None. <br>
<br>
<br>
