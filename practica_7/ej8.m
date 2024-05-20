I=imread('Fig5.26(a).jpg'); 
[M,N]=size(I);
 
% Definiendo filtro para detección de líneas horizontales
h=[2 1 1; 0 0 0; -1 -2 -1];
F=fft2(I);
H=fft2(h,M,N);
G=F.*H;
I0=ifft2(G);
imshow(I0,[]),colormap gray;colorbar
figure, imshow(abs(I0),[]),colormap gray;colorbar
%{Para ser estrictos habría que corregir nuevamente el desplazamiento… pero 
para el objeto de esta práctica es irrelevante
%}