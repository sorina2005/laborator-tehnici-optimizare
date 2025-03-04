
% FUNCTIE DE O VARIABILA 


% Definirea functiei
f = @(x) x.^4 - 4*x.^2 + x;

% Gasirea minimului numeric
x0 = 0;  % Punct initial
[x_min, f_min] = fminunc(f, x0);

fprintf('Minimul numeric: x = %.4f, f(x) = %.4f\n', x_min, f_min);

% Plot functia
x = linspace(-3, 3, 100);
y = f(x);
plot(x, y, 'b', 'LineWidth', 2);
hold on;
plot(x_min, f_min, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
grid on;
xlabel('x'); ylabel('f(x)');
title('Minimul functiei f(x)');




%FUNCTIE DE DOUA VARIABILE 


% Definirea functiei
f = @(x) x(1).^2 + x(2).^2 + 3*sin(x(1)) - 2*cos(x(2));

% Punct initial
x0 = [0, 0];

% Gasirea minimului
[x_min, f_min] = fminunc(f, x0);

fprintf('Minimul numeric: (x, y) = (%.4f, %.4f), f(x, y) = %.4f\n', x_min(1), x_min(2), f_min);
