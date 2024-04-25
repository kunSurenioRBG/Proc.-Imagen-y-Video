I=imread('boat.512.tiff');
imshow(I)
B1=edge(I,'sobel');
B2=edge(I,'prewitt');
B3=edge(I,'canny');
imshow(B1)
figure,imshow(B2)
figure, imshow(B3)