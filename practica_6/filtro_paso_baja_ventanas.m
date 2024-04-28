% Leer la imagen de entrada
imagen_entrada = imread('manchasolar.jpg'); 
imagen_entrada = double(imagen_entrada); 

figure;
imshow(uint8(imagen_entrada)); 
title('Imagen Original');

% Paso 1: Crear el filtro de paso bajo utilizando el método de ventanas
[f1, f2] = freqspace(size(imagen_entrada), 'meshgrid');
H = zeros(size(imagen_entrada));
H(5:10, 5:10) = 1;
h = fwind1(H, hamming(size(imagen_entrada, 1)));

% Paso 2: Aplicar la transformada de Fourier bidimensional a la imagen de entrada
F_imagen = fft2(imagen_entrada);

% Paso 3: Aplicar el filtro de paso bajo
F_imagen_filtrada = F_imagen .* fftshift(h);

% Paso 4: Aplicar la transformada inversa de Fourier bidimensional
imagen_filtrada = ifft2(F_imagen_filtrada);

% Opcional: Escalar la imagen filtrada para estar en el rango [0, 255]
imagen_filtrada = uint8(abs(imagen_filtrada)); % Convertir la imagen filtrada a uint8 para mostrarla

% Mostrar la imagen filtrada
figure;
imshow(imagen_filtrada);
title('Imagen Filtrada con Filtro de Paso Bajo');
