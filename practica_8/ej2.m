%{
%% 2.a)
I0=imread('Fig1.14(a).jpg'); 
I=im2double(I0);

% Añadir ruido uniforme a la imagen
ruido=0.1*randn(size(I));
B=I+ruido; 
figure, imshow(B) 

% Aplicar la transformada de Fourier a la imagen con ruido
F=fft2(B); 

% Definir el filtro de movimiento
long=100; 
ang=135; 
h=fspecial('motion',long,ang); 
[M,N]=size(I);

% Aplicar la transformada de Fourier al filtro de movimiento
H= fft2(h,M,N); 

% Filtrar la imagen en el dominio de la frecuencia
G=H.*F; 
I1=real(ifft2(G));
figure,imshow(I1) 

% Restaurar la imagen usando un filtro inverso
HR=(1./H); 
G_rest=HR.*G; 
I2=real(ifft2(G_rest)); 
figure,imshow(I2)

%}

%% 2.b)
I0=imread('Fig1.14(a).jpg'); 
I=im2double(I0);

% Aplicar la transformada de Fourier a la imagen original
F=fft2(I); 

% Definir el filtro de movimiento
long=100; 
ang=135; 
h=fspecial('motion',long,ang); 
[M,N]=size(I);

% Aplicar la transformada de Fourier al filtro de movimiento
H=fft2(h,M,N);

% Filtrar la imagen en el dominio de la frecuencia
G=H.*F; 
I1=real(ifft2(G)); 
figure,imshow(I1) 

% Añadir ruido gaussiano a la imagen filtrada
ruido=0.1*randn(size(I));
B=I1+ruido; 
figure,imshow(B)

% Aplicar la transformada de Fourier a la imagen con ruido
F2=fft2(B); 

% Restaurar la imagen usando un filtro inverso
HR=(1./H); 
G_rest=HR.*F2; 
I1=real(ifft2(G_rest)); 
figure,imshow(I1)
