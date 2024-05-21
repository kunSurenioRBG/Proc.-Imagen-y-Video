I = imread('5.1.10.tiff');
B = im2bw(I, 0.70); 
figure, imshow(B)
[H,theta,r] = hough(B); 
numLineas=30; %Número de líneas a buscar, busca las más largas
P = houghpeaks(H,numLineas,'threshold',ceil(0.3*max(H(:)))); %Buscamos 
los picos
x = theta(P(:,2)); %méramente ilustrativo
y = r(P(:,1)); %méramente ilustrativo
figure, plot(x,y,'s','color','black'); %méramente ilustrativo
xlabel('Theta');
ylabel('R');
lines = houghlines(B,theta,r,P,'FillGap',5,'MinLength',20); %Procesa 
los picos (líneas). Si las líneas están más cerca de 'FillGap' las une, 
si miden menos de 'MinLength' las descarta
figure, imshow(I), hold on
max_len = 0; 
for k = 1:length(lines) 
 xy = [lines(k).point1; 
 lines(k).point2]; 
 plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green'); % Pinta 
las rectas
 plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow'); % Pinta 
el principio de las líneas
 plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red'); % Pinta el 
final de las líneas 
 % Cálculo del segmento más largo (es meramente ilustrativo) 
 len = norm(lines(k).point1 - lines(k).point2); 
 if ( len > max_len) 
 max_len = len; 
 xy_long = xy; 
 end
end
% Destaca el segmento más largo
plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','red');