%{
I0=imread('Fig5.26(a).jpg'); 
I=im2double(I0); 
imshow(I) 
[M,N]=size(I); 
for i=1:3:10 
F=fft2(I); 
H=lpfilter('ideal',M,N,5*i); 
G=H.*F; 
I1=real(ifft2(G)); 
figure,imshow(I1) 
end
%}

I0=imread('Fig5.26(a).jpg'); 
I=im2double(I0); 
imshow(I) 
[M,N]=size(I); 
for i=1:3:10 
F=fft2(I); 
H=1-lpfilter('ideal',M,N,8*i);
G=H.*F; 
I1=real(ifft2(G)); 
figure,imshow(I1) 
end