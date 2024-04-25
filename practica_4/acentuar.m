I = imread('columnas.jpg'); % NOTA: La imagen es a color
I_gray = rgb2gray(I); % Convertir la imagen a escala de grises
h = fspecial('unsharp');
J = abs(filter2(h, I_gray)); % Aplicar filtro de realce a la imagen en escala de grises
J1 = J / 255; % Normalizar la imagen resultante
imshow(J1);
