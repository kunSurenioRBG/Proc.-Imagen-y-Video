[f1,f2]=freqspace(15,'meshgrid'); % Crea una cuadrícula 15x15

Hd=zeros(15,15); % Rellena todo de ceros

Hd(4:11,4:11)=1; % Se asignan 1s a una región concretra

% Se visualiza la matriz H en tres dimensiones. 
% Con axis se establen los límites de los ejes y con colormap asignamos colores
mesh(f1,f2,Hd), axis([-1 1 -1 1 0 1.2]),colormap(jet(64))

% Realiza el muestreo del filtro en el dominio de 
% la frecuencia para convertirlo en un filtro FIR
h=fsamp2(Hd);

% Muestra el resultado en tres dimensiones
figure,freqz2(h,[32 32]),axis([-1 1 -1 1 0 1.2])

