clc; clear; close all;

s = tf('s');

numG1 = (s + 0.1);  
denG1 = s;          

numG2 = -10 * (s^3 + 0.9 * s^2 + 9 * s);  
denG2 = (2 * s^3 + 6 * s^2 + 7 * s);     

numG3 = (0.1 * s - 0.2);  
denG3 = (s^3 + 0.9 * s^2 + 9 * s);  

L = (numG1 / denG1) * (numG2 / denG2) * (numG3 / denG3);

T = feedback(L, 1);

figure;
step(T);
grid on;
title('Step Response of the Closed-loop System');
xlabel('Time (seconds)');
ylabel('System Output');
