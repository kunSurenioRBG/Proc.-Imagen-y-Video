I = imread('columnas.jpg'); 
I_gray = rgb2gray(I); % Convertir la imagen a escala de grises

% Núcleo para detección de bordes verticales
gv = [-1 0 1; -1 0 1; -1 0 1];
Jv = abs(filter2(gv, I_gray))/255;

% Núcleo para detección de bordes horizontales
gh = [1 1 1; 0 1 0; -1 -1 -1];
Jh = abs(filter2(gh, I_gray))/255;

% Mostrar las imágenes de bordes verticales y horizontales
imshow(Jv); 
title('Bordes verticales');
figure;
imshow(Jh); 
title('Bordes horizontales');
