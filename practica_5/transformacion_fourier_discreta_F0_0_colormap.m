% Inicializo una matriz de unos
I = ones(100,100);

% Itero sobre cada píxel de la matriz
for i = 1:100
    for j = 1:100
        % Defino las coordenadas del centro del rombo
        centro_x = 50;
        centro_y = 50;
        
        % Calculo la distancia entre el píxel actual y el centro del rombo
        distancia_x = abs(i - centro_x);
        distancia_y = abs(j - centro_y);
        
        % Calculo la suma de las distancias
        suma_distancias = distancia_x + distancia_y;
        
        % Establezco el valor del píxel en función de la suma de las distancias
        if suma_distancias <= 50  % El rombo tendrá un tamaño de 100x100
            I(i,j) = 0;
        end
    end
end

% Muestro el rombo
imshow(I,'InitialMagnification','fit')

% Calculo la transformada de Fourier bidimensional de la imagen
F = fft2(I);

% Reorganizo las frecuencias para centrar |F(0,0)|
F_centro = fftshift(F);

% Calculo el logaritmo de la magnitud de la transformada de Fourier
F1 = log(1 + abs(F_centro));

% Muestro la transformada de Fourier con el valor de |F(0,0)| en el centro de la imagen
figure;
imshow(F1 / 4, []);
colormap(jet);
colorbar;
