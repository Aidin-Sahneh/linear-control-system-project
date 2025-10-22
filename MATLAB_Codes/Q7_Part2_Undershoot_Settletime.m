clc; clear; close all;

numG = [-1 2];   
denG = [2 6 7 0]; 

K = 1.15; 
G = K * tf(numG, denG); 

T = feedback(G, 1);

figure;
step(T);
grid on;
title(['Step Response of Closed-Loop System (K = ', num2str(K), ')']);
xlabel('Time (seconds)');
ylabel('System Output');

stepInfo = stepinfo(T);
undershoot = stepInfo.Undershoot;
settlingTime = stepInfo.SettlingTime;

disp(['Undershoot: ', num2str(undershoot), ' %']);
disp(['Settling Time: ', num2str(settlingTime), ' seconds']);
