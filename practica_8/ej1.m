I0=imread('Fig1.14(a).jpg'); 
I=im2double(I0);
figure, imshow(I)
[M,N]=size(I);
F=fft2(I); 
h1=fspecial('gaussian',7,20); % Crea un filtro gaussiano de tamaño 7x7 con una desviación estándar de 20.
H1=fft2(h1,M,N); % Calcula la transformada de Fourier del filtro gaussiano.
long=100; 
ang=135; 
h2=fspecial('motion',long,ang); % Crea un filtro de movimiento.
H2= fft2(h2,M,N); %  Calcula la transformada de Fourier del filtro de movimiento
G=H1.*H2.*F; 
I1=real(ifft2(G));
figure,imshow(I1)
 
HR=(1./(H1.*H2)); % Calcula el filtro inverso combinando los inversos de los dos filtros aplicados anteriormente.
G_rest=HR.*G; % Aplica el filtro inverso a la imagen filtrada en el dominio de la frecuencia.
I2=real(ifft2(G_rest)); % Realiza la transformada inversa de Fourier para obtener la imagen restaurada I2.
figure,imshow(I2)
ECM=sum((I2-I).^2,"all") % Calcula el error cuadrático medio (ECM). 
