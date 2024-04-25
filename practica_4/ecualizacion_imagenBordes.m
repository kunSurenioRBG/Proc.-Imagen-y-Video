I = imread('columnas.jpg'); % Leer la imagen original
I = rgb2gray(I); % Convertir la imagen a escala de grises
I = histeq(I); % Ecualizar el histograma de la imagen
imshow(I); % Mostrar la imagen ecualizada

B = edge(I, 'canny'); % Detectar bordes usando el operador Canny
figure;
imshow(B); % Mostrar los bordes detectados

R = double(I)/255 + 0.1 * double(B); % Combinar la imagen ecualizada con los bordes detectados
figure;
imshow(R); % Mostrar la imagen resultante
