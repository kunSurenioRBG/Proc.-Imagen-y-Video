I=imread('Fig5.04(i).jpg');  
J=imnoise(I,'gaussian',0,0.01); % aplica ruido gaussiano
g=fspecial('average',[5 5]) 
M=filter2(g,J)/255; % restaura con filtro media
imshow(M) 
M1=medfilt2(J,[5 5]); % restaura con filtro mediana
figure, imshow(M1)
