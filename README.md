# Crabs


Function: crabs: void -> void
Purpose: crabs purpose is to render the game. It draws the game map and initializes map dimensions, as well as draws the captain and initialize graphics handles. (The void inputs and outputs mean that nothing is required.)
crabs() uses drawCapt and drawMap to 
Dependencies: drawCapt drawMap
Call: crabs()
Side Effects: None. 





Function: drawLine: vector, vector, color -> graphics handle <br>

<br>
<br>
Function: getTranslation: number number -> matrix <br>
Purpose: xCapt represents the amount to shift in the x direcetion and yCapt represent the amount to shift in the y direction. <br>
getTranslation uses thes numbers to create a 3X3 matrix that will translate an object stored as a 3XN matrix when it multiplies the object matrix. (Returns the handle and draws the line.) <br>
Dependencies: None. <br>
Call: T = getTranslation(xCapt,yCapt) <br>
Side Effects: None. <br>
<br>
<br>
Function: getCapt: number -> matrix
Purpose: Number1 represents the amount to shift in the x direcetion and Number2 represent the amount to shift in the y direction.
getTranslation uses thes numbers to create a 3X3 matrix that will translate an object stored as a 3XN matrix when it multiplies the object matrix. 
Dependencies: None.
Call: T = getTranslation(dx,dy)
Returns the handle and draws the line. 
Side Effects: None. 
