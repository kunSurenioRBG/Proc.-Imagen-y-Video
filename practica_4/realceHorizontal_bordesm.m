I = imread('BUG.TIF'); 
I_gray = im2gray(I); % Convertir la imagen a escala de grises

% Núcleo para detección de bordes horizontales
gh = [1 1 1; 0 1 0; -1 -1 -1];
Jh = abs(filter2(gh, I_gray))/255;

% Mostrar las imágenes de bordes horizontales
figure;
imshow(Jh); 
