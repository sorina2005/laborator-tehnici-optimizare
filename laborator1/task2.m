clc; clear; close all;

x = linspace(-5, 5, 100);
y = linspace(-5, 5, 100);
[X, Y] = meshgrid(x, y);


rastrigin = 10*2 + (X.^2 - 10*cos(2*pi*X)) + (Y.^2 - 10*cos(2*pi*Y));

ackley = -20*exp(-0.2*sqrt(0.5*(X.^2 + Y.^2))) - exp(0.5*(cos(2*pi*X) + cos(2*pi*Y))) + 20 + exp(1);

griewank = (X.^2 + Y.^2)/4000 - cos(X).*cos(Y/sqrt(2)) + 1;

figure;
subplot(1,3,1);
surf(X, Y, rastrigin);shading interp;colormap jet;
title('Rastrigin'); 

subplot(1,3,2);
surf(X, Y, ackley);shading interp;colormap jet;
title('Ackley'); 

subplot(1,3,3);
surf(X, Y, griewank);shading interp;colormap jet;
title('Griewank');


figure;
subplot(1,3,1);
contour(x,y, rastrigin);
title('Rastrigin');

subplot(1,3,2);
contour(x,y, ackley);
title('Ackley');

subplot(1,3,3);
contour(x,y, griewank);
title('Griewank');
