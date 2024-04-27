I = zeros(64, 64);
for i = 1:size(I, 2)
    I(:, i) = (sin(i / 10) + 1) / 2;
end

imshow(I, 'InitialMagnification', 'fit')

F = fft2(I);
logF = log(1 + abs(F));

min_logF = min(logF(:)); 
max_logF = max(logF(:)); 

figure;
imshow(logF, [min_logF, max_logF], 'InitialMagnification', 'fit')
colormap(jet);
colorbar;
