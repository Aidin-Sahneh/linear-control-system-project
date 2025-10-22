clc; clear; close all;

numG = [-1 2];   
denG = [2 6 7 0]; 

K = 1; 
G = K * tf(numG, denG); 

T = feedback(G, 1);


t = 0:0.1:50; 


[y_step, t_step] = step(T, t);


ramp_input = t; 
[y_ramp, t_ramp] = lsim(T, ramp_input, t);


figure;
subplot(2,1,1);
plot(t_step, y_step, 'b', 'LineWidth', 1.5);
grid on;
title(['Step Response of Closed-Loop System (K = ', num2str(K), ')']);
xlabel('Time (seconds)');
ylabel('System Output');
legend('Step Response');

subplot(2,1,2);
plot(t_ramp, y_ramp, 'r', 'LineWidth', 1.5);
grid on;
title(['Ramp Response of Closed-Loop System (K = ', num2str(K), ')']);
xlabel('Time (seconds)');
ylabel('System Output');
legend('Ramp Response');
