function capt = getCapt (captSize)
% The function getCapt computes and returns the captain centered at the origin with the head of the
%captain is on the positive x-axis indication a heading angle of zero. The captain is returned in the form of
%a matrix with each column representing one point on the captain. The parameter captSize is used as a
%scale for drawing the captain and sets the size of the captain.
% In the sketch below, the captain is drawn facing you with his right hand holding the spear.
% The sketch shows him with his points numbered. The point number 1 is located at the x-y coordinates
%(captSize, captSize).
%{
Right Hand Spear Tip
              14 ____12____________13
                       \
                            \
                                  \
           4________5_____________6
                    |              |
                                   | 7 ------8
                    | ( 0,0 )      |         | __________________\ positive x-axis
                    |               10-----9 /
                    |              |
           3 _______2______________1
                           |       /
                           |      /
                           |    /
                           11
                       Left Hand
                           |
                           |
                          \|/
                     positive y-axis
%}
%Capt left side
captPt1 = [ captSize; captSize; 1]; %left shoulder
captPt2 = [ -captSize; captSize; 1]; %left waist

%Capt feet
captPt3 = [-3*captSize; captSize; 1]; %left
captPt4 = [-3*captSize; -captSize; 1]; %right

%Capt right side
captPt5 = [ -captSize; -captSize; 1]; % right waist
captPt6 = [ captSize; -captSize; 1]; % right shoulder

%head
captPt7 = [ captSize; -captSize/2; 1]; %right neck
captPt8 = [ 2*captSize; -captSize/2; 1]; %right top of head
captPt9 = [ 2*captSize; captSize/2; 1]; %left top of head
captPt10 = [ captSize; captSize/2; 1]; %left neck

%hands
captPt11 = [ captSize; 2*captSize; 1]; %left hand
captPt12 = [ captSize; -2*captSize; 1]; %right hand

%net handle
captPt13=[ 2*captSize; -2*captSize; 1]; % spear point
captPt14=[ -captSize; -2*captSize; 1]; % spear end

%net
captPt15=[ 3*captSize; -4*captSize; 1]; 
captPt16=[ 5*captSize; -4*captSize; 1]; 
captPt17=[ 5*captSize; -2*captSize; 1];
captPt18=[ 5*captSize; 0; 1]; 
captPt19=[ 3*captSize; 0; 1]; 


%net center
captPt20=[ 4*captSize; -2*captSize; 1];

%captain matrix
capt = [ captPt1, captPt2, captPt3, captPt4, captPt5, captPt6, captPt7, ...
captPt8, captPt9, captPt10, captPt11, captPt12, captPt13, captPt14, ...
captPt15, captPt16, captPt17, captPt18, captPt19, captPt20];


endfunction

