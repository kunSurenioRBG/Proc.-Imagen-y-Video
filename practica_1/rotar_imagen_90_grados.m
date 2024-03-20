function imagen_rotada = rotar_imagen_90_grados(imagen)
    % Obtener el tamaño de la imagen original
    [filas, columnas, ~] = size(imagen);
    
    % Transponer la imagen
    imagen_transpuesta = transpose(imagen);
    
    % Invertir las filas para rotación en sentido antihorario
    imagen_rotada = flipud(imagen_transpuesta);
    imshow(imagen_rotada);
end
