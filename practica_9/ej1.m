% Lee la imagen 'rice.tif' y la almacena en la variable I
I = imread('CHROMOS2.TIF');

% Calcula el umbral de binarización utilizando el método de Otsu
nivel = graythresh(I);

% Convierte la imagen en escala de grises a una imagen binaria utilizando el umbral calculado
B = im2bw(I, nivel);

% Crea una nueva figura y muestra la imagen binaria B
figure, imshow(B);

% Muestra información sobre las variables en el espacio de trabajo
whos;

% Etiqueta los componentes conectados en la imagen binaria B
% 'etiquetas' es una matriz con las etiquetas de los componentes conectados
% 'nobjetos' es el número de objetos conectados encontrados
[etiquetas, nobjetos] = bwlabel(B, 4);

% Muestra el número de objetos conectados detectados en la imagen
nobjetos

% Convierte la matriz de etiquetas a una imagen RGB donde cada etiqueta
% tiene un color diferente, para visualización
E = label2rgb(etiquetas);

% Crea una nueva figura y muestra la imagen RGB con los objetos etiquetados
figure, imshow(E);
