function umbralicacion(nombreFich)
img = imread(nombreFich);

figure(1);
clf;
figure(1);
imshow(img);

imgBW = im2bw(img);
figure(2);
imshow(imgBW)

end