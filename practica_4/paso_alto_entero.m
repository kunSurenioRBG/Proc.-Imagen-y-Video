I=imread('boat.512.tiff');
h=[1 2 1; 0 0 0; -1 -2 -1];
I1=filter2(h,I);
imshow(I1,[]), colorbar
