I=imread('manchasolar.jpg');
imshow(I); 
I1=im2double(I);

a = 63;
c1 = 0.4;
c2 = 0.6;

I2=I1; 

for n=1:320 
  for m=1:320 
    if c1<=I1(n,m) && I1(n,m)<=c2
        I2(n, m)=I1(n,m)*255/a; 
        if I2(n,m)>1
            I2(n,m)=1; 
        end 
    else 
        I2(n,m) = I1(n,m);
    end
  end  
end 

figure, 
imshow(I2);