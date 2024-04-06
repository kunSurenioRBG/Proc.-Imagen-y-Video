I=imread ('circuit.tif'); 
[J,T]=histeq(I); 
plot((0:255)/255,T); 
