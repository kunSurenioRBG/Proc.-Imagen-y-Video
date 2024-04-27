% Leo la imagen
imagen = imread('alumgrns.JPG');

% Convierto la imagen a escala de grises si es necesario
if size(imagen, 3) == 3
    imagen_gris = rgb2gray(imagen);
else
    imagen_gris = imagen;
end

% Muestro el rombo
imshow('alumgrns.JPG')

% Calculo la transformada de Fourier bidimensional de la imagen
F = fft2(imagen_gris);

% Reorganizo las frecuencias para centrar |F(0,0)|
F_centro = fftshift(F);

% Calculo el logaritmo de la magnitud de la transformada de Fourier
F1 = log(1 + abs(F_centro));

% Muestro la transformada de Fourier con el valor de |F(0,0)| en el centro de la imagen
figure;
imshow(F1 / 4, []);
colormap(jet);
colorbar;