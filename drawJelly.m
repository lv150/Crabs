function jellyHandle = drawJelly (x,y,theta,size)

  jelly = getJelly(size);
  R = getRotation(theta);
  jellyRotated = R*jelly;
  T = getTranslation(x,y);
  jelly = T*jellyRotated;

  pt1=jelly(:,1);
  pt2=jelly(:,2);
  pt3=jelly(:,3);
  pt4=jelly(:,4);
  pt5=jelly(:,5);
  pt6=jelly(:,6);
  pt7=jelly(:,7);
  pt8=jelly(:,8);
  pt9=jelly(:,9);
  pt10=jelly(:,10);
  pt11=jelly(:,11);
  pt12=jelly(:,12);
  pt13=jelly(:,13);
  jellyHandle(1)=drawLine(pt1,pt2,'b');
  jellyHandle(2)=drawLine(pt2,pt3,'y');
  jellyHandle(3)=drawLine(pt3,pt4,'y');
  jellyHandle(4)=drawLine(pt4,pt5,'g');
  jellyHandle(5)=drawLine(pt6,pt7,'y');
  jellyHandle(6)=drawLine(pt7,pt8,'y');
  jellyHandle(7)=drawLine(pt8,pt9,'m');
  jellyHandle(8)=drawLine(pt10,pt11,'m');
  jellyHandle(9)=drawLine(pt11,pt12,'m');
  jellyHandle(10)=drawLine(pt12,pt13,'g');
  jellyHandle(11)=drawLine(pt13,pt5,'m');
  jellyHandle(12)=drawLine(pt12,pt4,'b');

endfunction
