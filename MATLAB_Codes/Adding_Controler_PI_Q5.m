clc; clear; close all;

num = [0.1 -0.2];      
den = [1 0.9 9 0];     
G = tf(num, den);      

K_values = [5, -5];  

for i = 1:length(K_values)
    K = K_values(i);
    
    Kp = 5;  
    Ki = 1;  
    C = K * tf([Kp Ki], [1 0]);  

    G_new = C * G;

    figure;
    rlocus(G_new);
    title(['Root Locus with PI Controller (K = ', num2str(K), ')']);
    grid on;
end
