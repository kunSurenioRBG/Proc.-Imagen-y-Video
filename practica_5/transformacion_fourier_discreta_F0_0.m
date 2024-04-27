% Defino las dimensiones de la matriz
filas = 100;
columnas = 100;

% Creo una cuadrícula de coordenadas
[X, Y] = meshgrid(1:columnas, 1:filas);

% Defino el centro y el radio del círculo
centro_x = columnas / 2;
centro_y = filas / 2;
radio = min(filas, columnas) / 4; % Radio del círculo

% Calculo la máscara del círculo
circulo = ((X - centro_x).^2 + (Y - centro_y).^2 <= radio.^2);

% Invierto la máscara para que el círculo sea negro y el fondo blanco
circulo = ~circulo;

% Calculo la transformada de Fourier bidimensional del círculo
dft_circulo = fft2(circulo);

% Reorganizo las frecuencias para centrar |F(0,0)|
dft_centro = fftshift(dft_circulo);

% Calculo la magnitud de la DFT (opcional)
magnitud_dft_centro = abs(dft_centro);

% Visualizo el círculo original y su DFT con |F(0,0)| en el centro
subplot(1,2,1), imshow(circulo), title('Círculo original');
subplot(1,2,2), imshow(log(1 + magnitud_dft_centro), []), title('|F(0,0)| en el centro');
