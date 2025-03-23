% Definirea matricei A si a vectorului b
A = [3 2 1; 1 -1 2; 2 1 3];
b = [10; 5; 15];

% Initializarea vectorului x cu zerouri
x_k = zeros(size(b));

% Numarul maxim de iteratii si toleranta
max_iter = 100;
tolerance = 1e-6;
n = size(A, 1);

% Vector pentru stocarea erorii la fiecare iteratie
error_values = zeros(max_iter, 1);

% Algoritmul Kaczmarz
for k = 1:max_iter
    for i = 1:n
        a_i = A(i, :);
        x_k = x_k + ((b(i) - a_i * x_k) / (norm(a_i)^2)) * a_i';
    end
    % Calculul erorii
    error_values(k) = norm(A * x_k - b);
    
    % Verificarea convergentei
    if error_values(k) < tolerance
        error_values = error_values(1:k); % Pastram doar valorile relevante
        break;
    end
end

% Afisarea solutiei aproximative
disp('Solutia aproximativa folosind Algoritmul Kaczmarz:');
disp(x_k);

% Comparatia cu solutia exacta
x_exact = A \ b;
disp('Solutia exacta folosind operatorul \:');
disp(x_exact);

% Reprezentarea grafica a erorii
figure;
plot(error_values, '-o');
xlabel('Iteratie');
ylabel('Eroare');
title('Convergenta Algoritmului Kaczmarz');
grid on;
