I=imread('boat.512.tiff'); 
g=[1 1 1;0 0 0; -1 -1 -1];
J=filter2(g,I);
J=abs(J);
B=J>0.27*(max(J(:))-min(J(:)));
imshow(B)
