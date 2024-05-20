%{
I0=imread('Fig5.26(a).jpg'); 
I=imnoise(I0,'salt & pepper',0.02); 
imshow(I) 
I=im2double(I);[M,N]=size(I); 
F=fft2(I); 
Hb=lpfilter('btw',M,N,25); 
G=Hb.*F; 
I1=real(ifft2(G)); 
figure,imshow(I1)
%}

I0=imread('Fig5.26(a).jpg'); 
I=im2double(I0); 
imshow(I) 
[M,N]=size(I); 
F=fft2(I); 
H1=lpfilter('ideal',M,N,10); 
H2=lpfilter('ideal',M,N,15); 
G=(H2-H1).*F; 
figure,imshow(H2-H1)
I1=real(ifft2(G)); 
figure,imshow(I1)