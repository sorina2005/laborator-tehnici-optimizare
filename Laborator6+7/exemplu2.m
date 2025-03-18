% Definirea sistemului Ax = b
A = [1, -1; 0, 1];
b = [2; 3];

% Soluția exactă folosind metoda directă
x_exact = A \ b;

% Inițializare
x = [0; 0]; % Soluție inițială
num_iterations = 5; % Număr de iterații

% Stocăm evoluția soluției pentru plot
x1_values = zeros(num_iterations, 1);
x2_values = zeros(num_iterations, 1);
error_values = zeros(num_iterations, 1);

fprintf('Iterație | x1 | x2 | Eroare\n');
fprintf('-----------------------------------------\n');

for k = 1:num_iterations
for i = 1:size(A,1) % Iterăm prin fiecare ecuație
a_i = A(i, :); % Selectăm o linie din A
b_i = b(i); % Selectăm componenta corespunzătoare din b
x = x + (b_i - a_i * x) / (norm(a_i)^2) * a_i'; % Aplicăm regula Kaczmarz
end
% Calculul erorii
error = norm(x - x_exact);

% Salvăm valorile pentru grafic
x1_values(k) = x(1);
x2_values(k) = x(2);
error_values(k) = error;


% Afișare rezultat
fprintf('%4d | %.4f | %.4f | %.6f\n', k, x(1), x(2), error);
end

% ======= Reprezentare grafică =======

% 1. Graficul evoluției soluției x1 și x2
figure;
plot(1:num_iterations, x1_values, '-bo', 'LineWidth', 2, 'MarkerSize', 8);
hold on;
plot(1:num_iterations, x2_values, '-ro', 'LineWidth', 2, 'MarkerSize', 8);
xlabel('Iterația');
ylabel('Valoare soluției');
title('Evoluția soluției x_1 și x_2 în algoritmul Kaczmarz');
legend('x_1', 'x_2', 'Location', 'best');
grid on;
hold off;

% 2. Graficul erorii la fiecare iterație
figure;
plot(1:num_iterations, error_values, '-ko', 'LineWidth', 2, 'MarkerSize', 8);
xlabel('Iterația');
ylabel('Eroare ||x_k - x^*||');
title('Convergența erorii în algoritmul Kaczmarz');
grid on;