% Cargar la imagen
imagen = imread('ngc4024l.tif');

% Convertir la imagen a tipo double
imagen_double = im2double(imagen);

% Aplicar la transformación no lineal
a = 69; 
imagen_transformada = a * imagen_double.^2;

% Mostrar la imagen original y la transformada
figure;
subplot(1, 2, 1);
imshow(imagen);
title('Imagen Original');
subplot(1, 2, 2);
imshow(imagen_transformada);
title('Imagen Transformada');