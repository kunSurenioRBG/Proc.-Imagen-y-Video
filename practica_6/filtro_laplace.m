%{
% Leer la imagen de entrada
imagen = imread('Fig5.04(i).jpg'); 
imagen = double(imagen); 

figure;
imshow(uint8(imagen)); 
title('Imagen Original');

% Paso 1: Crear el filtro de Laplace 3x3 en el dominio espacial
h = [0 -1 0; -1 4 -1; 0 -1 0];

% Paso 2: Calcular la transformada de Fourier bidimensional del filtro
H = fft2(h, size(imagen, 1), size(imagen, 2));

% Paso 3: Aplicar el filtro en el dominio de las frecuencias
F = fft2(imagen);
imagen_filtrada = ifft2(F .* H);

figure;
imshow(uint8(abs(imagen_filtrada)), []);
title('Imagen Filtrada con el Filtro de Laplace en el Dominio de las Frecuencias');
%}

h=[0 -1 0;-1 4 -1;0 -1 0]; % Filtro de Laplace
freqz2(h) % Pasa el filtro h a una imagen en 3D