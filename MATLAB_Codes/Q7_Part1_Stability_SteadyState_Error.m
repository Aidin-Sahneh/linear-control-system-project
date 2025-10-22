clc; clear; close all;

K = 1;  

s = tf('s');

numG1 = K * (0.1 * s - 0.2);  
denG1 = (s^3 + 0.9 * s^2 + 9 * s); 

numG2 = (s + 0.1);  
denG2 = s;         

numG3 = -10 * (s^3 + 0.9 * s^2 + 9 * s); 
denG3 = (2 * s^3 + 6 * s^2 + 7 * s);     

G = (numG1 / denG1) * (numG2 / denG2) * (numG3 / denG3);

T = feedback(G, 1);

poles = pole(T);

Kv = dcgain(s * G);  

if Kv ~= 0
    ess = 1 / Kv;
else
    ess = inf;  
end

disp(['For K = ', num2str(K)]);
disp('Closed-loop Transfer Function T(s):');
T

disp('Closed-loop System Poles:');
disp(poles);

disp(['Velocity Gain (K_v): ', num2str(Kv)]);
disp(['Steady-State Error for Ramp Input (e_ss): ', num2str(ess)]);
