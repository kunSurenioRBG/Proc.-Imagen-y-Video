function mostrarImagenes()
% Imagen con variacion de gris en las filas
img_filas = repmat(0:255,256,1); % repite los valores de 0 a 255 en cada fila
img_filas = uint8(img_filas);

% Imagen con variacion de gris en las columnas
img_columnas = repmat((0:255)',1,256); % repite los valores de 0 a 255 en cada columna
img_columnas = uint8(img_columnas);

figure(1);
subplot(1,2,1);
imshow(img_filas);
title('Variacion de gris en filas');

subplot(1,2,2);
imshow(img_columnas);
title('Variacion de gris en columnas');

end