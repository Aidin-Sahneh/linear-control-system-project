clc; clear; close all;

num_G = [0.1];          
den_G = [1 0.9 9];      
G = tf(num_G, den_G);     

num_Clag = 1.4 * [1.2 1];
den_Clag = [2.5 1];
C_lag = tf(num_Clag, den_Clag);

num_Clead = 41.95 * [0.28 1];
den_Clead = [0.3 1];
C_lead = tf(num_Clead, den_Clead);

G_total = C_lag * C_lead * G;

sys_cl = feedback(G_total, 1);

figure;
step(sys_cl);
grid on;
title('Step Response of Closed-Loop System');
xlabel('Time (seconds)');
ylabel('Response');
