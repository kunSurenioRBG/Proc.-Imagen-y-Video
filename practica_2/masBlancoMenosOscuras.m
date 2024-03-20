I=imread('ngc4024l.tif');
imshow(I);
I1=im2double(I); %Rango de la imagen en [0,1] 

a=0.5;
c=220/255; 

for n=1:174,
    for m=1:368,
        if I1(n,m)<c,
           I2(n,m)=I1(n,m)*a;
        else 
           I2(n,m)=a*c+(I1(n,m)-c)*(1-a*c)/(1-c);
        end 
    end  
end
figure, 
imshow(I2);