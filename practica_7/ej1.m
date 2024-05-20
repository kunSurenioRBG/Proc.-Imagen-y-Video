%{
I0=imread('Fig5.26(a).jpg'); % lee la imagen
I=im2double(I);imshow(I);[M,N]=size(I); 
for i=1:2:7 
 F=fft2(I); % calcula la transformada de Fourier de la imagen
 H=lpfilter('gaussian',M,N,5*i); % crea el filtro de paso bajo gaussiano
 G=H.*F; % aplica el filtro multiplicando en el dominio de la frecuencia
 I1=real(ifft2(G)); % calcula la transformada inversa de Fourier y toma la parte real
 figure,imshow(I1) 
end
%}

I0=imread('Fig5.26(a).jpg'); % lee la imagen
I=im2double(I);imshow(I);[M,N]=size(I); 
for i=1:2:7 
 F=fft2(I); % calcula la transformada de Fourier de la imagen
 H=lpfilter('btw',M,N,6*i); % crea el filtro de paso bajo gaussiano
 G=H.*F; % aplica el filtro multiplicando en el dominio de la frecuencia
 I1=real(ifft2(G)); % calcula la transformada inversa de Fourier y toma la parte real
 figure,imshow(I1) 
end