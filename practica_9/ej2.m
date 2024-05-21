% Lee la imagen 'coins.png' y la almacena en la variable I
I = imread('coins.png');

% Aplica un filtro de mediana para reducir el ruido
I = medfilt2(I);

% Calcula el umbral de binarización utilizando el método de Otsu
nivel = graythresh(I);

% Convierte la imagen en escala de grises a una imagen binaria utilizando el umbral calculado
B = im2bw(I, nivel);

% Realiza operaciones morfológicas para mejorar la segmentación
B = imopen(B, strel('disk', 2)); % Eliminación de ruido pequeño
B = imclose(B, strel('disk', 5)); % Unión de partes cercanas

% Crea una nueva figura y muestra la imagen binaria B
figure, imshow(B);

% Etiqueta los componentes conectados en la imagen binaria B
[etiquetas, nobjetos] = bwlabel(B, 8);

% Convierte la matriz de etiquetas a una imagen RGB donde cada etiqueta
% tiene un color diferente, para visualización
E = label2rgb(etiquetas);

% Crea una nueva figura y muestra la imagen RGB con los objetos etiquetados
figure, imshow(E);

% Determinación del centro de cada objeto conectado
for k = 1:nobjetos
    % Encuentra las filas y columnas de los píxeles que pertenecen al objeto k
    [fila, col] = find(etiquetas == k);
    
    % Calcula la coordenada y del centro (centroide) del objeto k
    cy = mean(fila);
    
    % Calcula la coordenada x del centro (centroide) del objeto k
    cx = mean(col);
    
    % Mantiene la visualización actual y superpone el marcador del centroide
    hold on;
    
    % Dibuja un marcador circular blanco en el centroide
    plot(cx, cy, 'Marker', 'o', ...
         'MarkerEdgeColor', 'w', ...
         'MarkerFaceColor', 'w', ...
         'MarkerSize', 10);
     
    % Dibuja un marcador en forma de asterisco negro en el centroide
    hold on;
    plot(cx, cy, 'Marker', '*', ...
         'MarkerEdgeColor', 'k');
end
