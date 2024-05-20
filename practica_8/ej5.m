I=imread('Fig1.14(a).jpg'); 
imshow(I) 
h=fspecial('gaussian',7,10); 
B=imfilter(I,h,'symmetric','conv'); 
figure,imshow(B); 
h1=ones(size(h)-4);
%1ª restauración 
[J1 P1]=deconvblind(B,h1); 
figure, imshow(J1);
%2ª restauración 
h2=padarray(h1,[4:4],'replicate','both'); 
[J2 P2]=deconvblind(B,h2); 
figure, imshow(J2);
%3ª restauración 
h3=padarray(h1,[2 2],'replicate','both'); 
[J3 P3]=deconvblind(B,h3); 
figure, imshow(J3); 
peso=edge(I,'sobel',.3); 
ee=strel('disk',2); 
peso=1-double(imdilate(peso,ee)); 
peso(:,[1:3 end-[0:2]])=0; 
figure,imshow(peso) 
[J P]=deconvblind(B,h3,30,[],peso); 
figure,imshow(J)