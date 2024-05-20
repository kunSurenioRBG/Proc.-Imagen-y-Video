I=imread('Fig1.14(a).jpg'); 
I=I(10+[1:256],222+[1:256],:); 
%Cogemos una matriz vinculada 
%cuadrada => debido a una limitación de 
%de deconvwnr
imshow(I) 

% Definir el filtro de movimiento
long=20; 
ang=12; 
h=fspecial('motion',long,ang); 

% Aplicar el filtro de movimiento
J=imfilter(I,h,'circular','conv'); 
figure,imshow(J); 


% Añadir ruido gaussiano
ruido=0.1*randn(size(J)); 
B=imadd(J,im2uint8(ruido)); 
figure,imshow(B) 

% Restaurar con filtro de Wiener sin NSR
W=deconvwnr(B,h); 
figure,imshow(W) 

% Calcular NSR y restaurar con filtro de Wiener
NSR=sum(ruido(:).^2)/sum(im2double(I(:)).^2); 
W1=deconvwnr(B,h,NSR); 
figure,imshow(W1)