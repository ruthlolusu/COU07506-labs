clc;
clear;
close all;

n = -5:10;

delta = double(n == 0);
step = double(n >= 0);
ramp = n .* step;
expo = 0.8.^n .* step;

figure;

subplot(1,4,1);
stem(n, delta);
title('Unit Impulse');

subplot(1,4,2);
stem(n, step);
title('Unit Step');

subplot(1,4,3);
stem(n, ramp);
title('Unit Ramp');

subplot(1,4,4);
stem(n, expo);
title('Exponential Signal');
