I=imread('Fig5.04(i).jpg'); 
I=imnoise(I,'salt & pepper',0.02) % filtro sal y pimienta
[J,T]=histeq(I); % ecualizacion del historiagrama en una imagen
plot((0:255)/255,T); % muestra el grafico de 0-255
M=medfilt2(J,[3 3]); % filtrado de mediana en una imagen
imshow(M)
g=fspecial('average',[5 5]) % aplico un filtro, que sera media
M=filter2(g,J)/255; % aplica el filtro a una matriz bidimensional
imshow(M) 