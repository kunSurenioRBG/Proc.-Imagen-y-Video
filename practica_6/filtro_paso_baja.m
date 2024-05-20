%{
% Leer la imagen de entrada
imagen = imread('Fig5.04(i).jpg');
imagen = double(imagen); 

% Mostrar la imagen original
figure;
imshow(uint8(imagen)); % Convertir la imagen de nuevo a uint8 para visualización
title('Imagen Original');

% Calcular la transformada de Fourier bidimensional de la imagen
F = fft2(imagen);

% Crear el filtro paso bajo ideal en el dominio de la frecuencia
[u, v] = freqspace(size(imagen), 'meshgrid');
H = sqrt(u.^2 + v.^2) < 0.5;

% Aplicar el filtro multiplicando la transformada de Fourier de la imagen por el filtro
G = F .* H;

% Obtener la imagen filtrada aplicando la transformada inversa de Fourier
imagen_filtrada = ifft2(G);

% Mostrar la imagen filtrada
figure;
imshow(abs(imagen_filtrada), []);
title('Imagen Filtrada');

%}

[u,v]=freqspace(100,'meshgrid'); % Crea una cuadrícula de frecuencia en el dominio de la frecuencia
H=sqrt(u.^2+v.^2)<0.75; % Se genera un círculo
meshz(u,v,H) % Dibuja en 3D la figura H en las coordenadas (u,v)
