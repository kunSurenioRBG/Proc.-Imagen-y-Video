%{
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
%}

[f1,f2]=freqspace(15,'meshgrid'); % Crea una cuadrícula 15x15

H=zeros(15,15); % Rellena todo de ceros

H(7:12,7:12)=1; % Se asignan 1s a una región concretra

% Se visualiza la matriz H en tres dimensiones. 
% Con axis se establen los límites de los ejes y con colormap asignamos colores
mesh(f1,f2,H),axis([-1 1 -1 1 0 1.2]),colormap(jet(64))

% Utiliza el filtro de ventana de Hamming
h=fwind1(H,hamming(15));

% Muestra el resultado en tres dimensiones
figure,freqz2(h,[32 32]),axis([-1 1 -1 1 0 1.2])

