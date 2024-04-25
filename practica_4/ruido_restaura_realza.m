I = imread('columnas.jpg');
J = imnoise(I, 'gaussian', 0, 0.01); % Agregar ruido gaussiano a la imagen original
J_gray = rgb2gray(J); % Convertir la imagen a escala de grises

g = fspecial('average', [5 5]); % Crear filtro de promedio 5x5
M1 = filter2(g, J_gray) / 255; % Aplicar filtro de promedio

h = fspecial('unsharp'); % Crear filtro unsharp
M2 = abs(filter2(h, M1)); % Aplicar filtro unsharp

subplot(1,3,1);
imshow(J);
title('Imagen con ruido gaussiano');

subplot(1,3,2);
imshow(M1);
title('Imagen restaurada con filtro medio 5x5');

subplot(1,3,3);
imshow(M2);
title('Imagen realzada con filtro unsharp');
