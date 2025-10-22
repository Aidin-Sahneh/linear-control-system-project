
load('Data.mat');


omega = Data.omega;
magnitude = Data.magnitude;  
phase = Data.phase;  


phase_rad = deg2rad(phase);



frequency_response_data = magnitude .* exp(1i * phase_rad);


sysident = frd(frequency_response_data, omega, 'FrequencyUnit', 'rad/s');

systemIdentification



