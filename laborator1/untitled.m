% Definirea funcției de două variabile
f = @(x, y) (1 - x).^2 + 100*(y - x.^2).^2;
% Definirea domeniului
x = linspace(-2, 2, 100);
y = linspace(-1, 3, 100);
[X, Y] = meshgrid(x, y);
Z = f(X, Y);
% Reprezentarea 3D a funcției
figure;
surf(X, Y, Z, 'EdgeColor', 'none');
xlabel('x');
ylabel('y');
zlabel('f(x, y)');
title('Reprezentarea 3D a funcției Rosenbrock');
colorbar;
hold on;


% Determinarea minimului global folosind optimizare neliniară
x0 = [0, 0]; % Punct de start
[x_min, f_min] = fminunc(@(v) f(v(1), v(2)), x0);
% Marcarea minimului global pe grafic
plot3(x_min(1), x_min(2), f_min, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
legend('f(x, y)', 'Minim global');
hold off;