I = imread('wafer1.tif'); 
g = [1 0 -1; 1 0 -1; 1 0 -1]; % Kernel modificado para detectar bordes verticales
J = filter2(g, I);
J = abs(J);
B = J > 0.27 * (max(J(:)) - min(J(:)));
imshow(B)
