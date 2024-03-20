I=imread('manchasolar.jpg');imshow(I); 
a = 63;
I1=im2double(I);I2=I1; 
for n=1:320, 
  for m=1:320, 
    I2(n, m)=I1(n,m)*255/a; 
    if I2(n,m)>1, 
      I2(n,m)=1; 
    end 
  end  
end 
figure, 
imshow(I2);