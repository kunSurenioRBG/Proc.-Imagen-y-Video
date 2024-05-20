%{
% Cargar la imagen y convertirla a tipo double
I0 = imread('Fig1.14(a).jpg'); 
I = im2double(I0);

% Definir el primer filtro de movimiento
long1 = 31; 
ang1 = 11; 
h1 = fspecial('motion', long1, ang1);

% Aplicar el filtro de movimiento a la imagen
B1 = imfilter(I, h1, 'circular', 'conv'); 
figure, imshow(B1); 
title('Imagen movida con longitud 31 y ángulo 11');

% Corregir la imagen movida usando el filtro Wiener
W1 = deconvwnr(B1, h1); 
figure, imshow(W1);
title('Imagen restaurada con filtro Wiener');
%}


% Definir el segundo filtro de movimiento
long2 = 50; 
ang2 = 45; 
h2 = fspecial('motion', long2, ang2);

% Aplicar el filtro de movimiento a la imagen
B2 = imfilter(I, h2, 'circular', 'conv'); 
figure, imshow(B2); 
title('Imagen movida con longitud 50 y ángulo 45');

% Corregir la imagen movida usando el filtro Wiener
W2 = deconvwnr(B2, h2); 
figure, imshow(W2); 
title('Imagen restaurada con filtro Wiener');
