% Date experimentale
x_data = [1; 2; 3; 4]; % Vector coloană

y_data = [2; 2.8; 3.6; 4.5];

% Construim matricea A pentru regresia liniară y = ax + b
A = [x_data, ones(size(x_data))]; % Coloana 1: x, Coloana 2: 1 (pentru termenul liber)

% Calculăm coeficienții folosind metoda Least-Squares
x_star = (A' * A) \ (A' * y_data); % (A^T A)^(-1) A^T b

% Extragem coeficienții a și b
a = x_star(1);
b = x_star(2);

% Afișăm rezultatele
fprintf('Coeficientul a: %.2f\n', a);
fprintf('Coeficientul b: %.2f\n', b);
fprintf('Ecuația dreptei de regresie: y = %.2fx + %.2f\n', a, b);

% Generăm puncte pentru plotarea dreptei
x_fit = linspace(min(x_data)-1, max(x_data)+1, 100);
y_fit = a * x_fit + b;

% Plotăm datele și dreapta de regresie
figure;
hold on;
scatter(x_data, y_data, 'ro', 'filled'); % Puncte experimentale (roșu)
plot(x_fit, y_fit, 'b-', 'LineWidth', 2); % Dreapta de regresie (albastru)
xlabel('x');
ylabel('y');
title('Regresie liniară folosind metoda Least-Squares');
legend('Date experimentale', sprintf('y = %.2fx + %.2f', a, b), 'Location', 'best');
grid on;
hold off;