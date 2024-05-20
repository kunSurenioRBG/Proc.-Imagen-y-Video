I=imread('Fig5.26(a).jpg'); 
[M,N]=size(I);
 
% Definiendo filtro promedio paso baja
tamM=5;
tamN=5;
h=ones(tamM,tamN).*1/(tamM * tamN);
F=fft2(I);
H=fft2(h,M,N);
T1=0;
for i=1:100
tic
G=F.*H;
T1=T1+toc;
end
T2=0;
for i=1:100
tic
imfilter(I,h);
T2=T2+toc;
end
T1;
T2;
T1/T2
