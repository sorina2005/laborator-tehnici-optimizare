clc; clear; close all;

% Definirea domeniului
x = linspace(-5, 5, 100);
y = linspace(-5, 5, 100);
[X, Y] = meshgrid(x, y);

% Definirea functiei
F = X.^2 + Y.^2 + sin(X) + sin(Y);

% Reprezentarea 3D a functiei
figure;
surf(X, Y, F);
shading interp;
colorbar;
title('Functie cu un singur minim local');
xlabel('x');
ylabel('y');
zlabel('f(x,y)');
grid on;

% Cautarea minimului
[minVal, minIndex] = min(F(:));
[minX, minY] = ind2sub(size(F), minIndex);
fprintf('Minimul local este %.4f la (x, y) = (%.4f, %.4f)\n', minVal, X(minX, minY), Y(minX, minY));
