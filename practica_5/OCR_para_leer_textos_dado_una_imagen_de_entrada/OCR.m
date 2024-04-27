% Leer la imagen
I = imread('a.png');

% Utilizar OCR para extraer el texto
results = ocr(I);

% Mostrar el texto extraído
disp(results.Text);