% Definirea punctelor experimentale
x = [1; 2; 3; 4; 5];
y = [2.1; 2.9; 3.7; 4.6; 5.1];

% Construirea matricei A
A = [x, ones(size(x))];

% Calculul coeficientilor a si b
x_star = (A' * A) \ (A' * y);

% Extragem coeficientii a si b
a = x_star(1);
b = x_star(2);

% Afisarea rezultatului
fprintf('Coeficientul a: %.4f\n', a);
fprintf('Coeficientul b: %.4f\n', b);

% Reprezentarea grafica a punctelor si a dreptei de regresie
scatter(x, y, 'filled'); % Punctele experimentale
hold on;
x_vals = linspace(min(x), max(x), 100);
y_vals = a * x_vals + b;
plot(x_vals, y_vals, 'r', 'LineWidth', 2);
xlabel('x');
ylabel('y');
title('Regresie liniara - Metoda celor mai mici patrate');
grid on;
legend('Puncte experimentale', 'Dreapta de regresie');
hold off;
