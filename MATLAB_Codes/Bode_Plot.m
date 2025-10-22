
omega = Data.omega;          
magnitude = Data.magnitude;  
phase = Data.phase;          


figure;


subplot(2,1,1);
semilogx(omega, 20*log10(magnitude), 'b', 'LineWidth', 1.5);
grid on;
xlabel('Frequency (rad/s)');
ylabel('Magnitude (dB)');
title('Bode Plot - Magnitude Response');


subplot(2,1,2);
semilogx(omega, phase, 'r', 'LineWidth', 1.5);
grid on;
xlabel('Frequency (rad/s)');
ylabel('Phase (degrees)');
title('Bode Plot - Phase Response');


