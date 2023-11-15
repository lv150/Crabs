function handle = drawLine (p,q)
%{
drawLine draws a line from point p to point q with color
deleted from above (... myColor)
%}


%extract x and y coordinates
x=[ p(1) ; q(1) ];
##x values are extracted for p and q. Round brackets mean access specific function input and acessing elements of arrays.
##Square brackets create array
y=[ p(2) ; q(2) ];

%handle is identifier so machine can access handle on line. Like a label to access later.

%plot ++ delete myColor again
handle = plot(x,y);

set(handle, "LineWidth", 2);

endfunction
