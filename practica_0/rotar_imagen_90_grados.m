function imagen_rotada = rotar_imagen_90_grados(imagen)
    % Leer la imagen .tif
    imagen = imread(imagen);
    figure(1)
    imshow(imagen)
    
    % Convertir la imagen a una matriz
    if ndims(imagen) == 3 % Si es una imagen a color
        imagen = rgb2gray(imagen); % Convertir a escala de grises
    else
        imagen = imagen; % La imagen ya está en escala de grises
    end
    % Obtener el tamaño de la imagen original
    [filas, columnas, ~] = size(imagen);
    
    figure(2)
    
    % Transponer la imagen
    imagen_transpuesta = transpose(imagen);
    
    % Invertir las filas para rotación en sentido antihorario
    imagen_rotada = flipud(imagen_transpuesta);
    imshow(imagen_rotada);
end
