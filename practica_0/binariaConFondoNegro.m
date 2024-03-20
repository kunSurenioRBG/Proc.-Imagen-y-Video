% Cargar la imagen
imagen = imread('manchasolar.jpg');

% Convertir la imagen a escala de grises si no está en esa forma
if size(imagen, 3) == 3
    imagen_gris = rgb2gray(imagen);
else
    imagen_gris = imagen;
end

% Aplicar umbralización para identificar los objetos más brillantes
umbral = graythresh(imagen_gris);
imagen_umbralizada = imbinarize(imagen_gris, umbral);

% Invertir la imagen umbralizada 
imagen_binaria = imcomplement(imagen_umbralizada);

% Mostrar la imagen original y la binaria
figure;
subplot(1, 2, 1);
imshow(imagen);
title('Imagen Original');
subplot(1, 2, 2);
imshow(imagen_binaria);
title('Imagen Binaria de Objetos Brillantes');
