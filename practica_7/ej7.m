I=imread('Fig5.26(a).jpg'); 
[M,N]=size(I);
 
% Definiendo filtro promedio paso baja
tamM=7;
tamN=7;
h=ones(tamM,tamN).*1/(tamM * tamN);
F=fft2(I);
H=fft2(h,M,N);
 
G=F.*H;
I0=ifft2(G);
I1= circshift(I0, [-(tamM-1)/2 -(tamN-1)/2]);
imshow(I0,[]); %Muestro imagen filtrada con desplazamiento
figure, imshow(I1,[]); %Muestro imagen filtrada centrada
figure, imshow(imfilter(I,h),[]);