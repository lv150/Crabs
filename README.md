# Crabs

Function: crabs: void -> void <br>
Purpose: crabs' purpose is to render the game. It draws the game map and initializes map dimensions, as well as draws the captain and initialize graphics handles. (The void inputs and outputs mean that nothing is required.) <br>
crabs() uses drawCapt and drawMap to draw captain graphics including its position, size, and location on the background image. <br>
Dependencies: drawCapt drawMap <br>
Call: crabs() <br>
Side Effects: None. <br>
<br>
<br>


Function: drawCapt: number number number number -> vector <br>
Purpose: drawCapt's purpose is to draw the captain at a given position with heading thetaCapt. drawCapt returns a vector of graphics handles called captainGraphics and draws lines between given points. <br>
drawCapt uses getCapt to get the matrix of captain points and getTranslation to shift the Captain to a new location. <br>
Dependencies: getCapt getTranslation <br>
Call: captainGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt) <br>
Side Effects: Draws Captain. <br>
<br>
<br>


Function: drawLine: vector, vector, color -> graphics handle <br>
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
Purpose: getCapt computes and returns the captain centered a the origin with a heading angle of zero. The captain is returned in the form of a matrix with each column representing one point on the captain. The parameter captSize scales the drawing of the captain and sets it's size. <br>
getCapt creates a capitain matrix with points located at x and y coordinates or (captSize, captSize). <br>
Dependencies: None. <br> 
Call: capt = getCapt (captSize) <br>
Side Effects: Creates Capt Matrix. <br>
<br>
<br>

Function: getRotation: number -> matrix <br>
Purpose: getCapt computes and returns the captain centered a the origin with a heading angle of zero. The captain is returned in the form of a matrix with each column representing one point on the captain. The parameter captSize scales the drawing of the captain and sets it's size. <br>
getCapt creates a capitain matrix with points located at x and y coordinates or (captSize, captSize). <br>
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
