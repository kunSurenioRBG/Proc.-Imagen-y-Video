I=imread('circuit.tif'); 
imshow(I); 
figure, imhist(I) % muestra historiagrama de la imagen original
figure, histeq(I) % mejora el contraste de la imagen ecualizando el historiagrama de la imagen
figure, imhist(histeq(I)) % muestra el historiagrama de la imagen resultante de la ecualizacion