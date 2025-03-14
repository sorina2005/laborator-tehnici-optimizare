function x = gauss_seidel(A, b, tol, max_iter)
% Funcție pentru rezolvarea sistemului Ax = b prin metoda Gauss-Seidel
% Intrare:
% A - matricea coeficienților (n x n)
% b - vectorul termenilor liberi (n x 1)
% tol - toleranța pentru criteriul de oprire
% max_iter - numărul maxim de iterații
% Ieșire:
% x - soluția sistemului (n x 1)

n = length(b);
x = zeros(n, 1); % Inițializare
x_old = x;

for k = 1:max_iter
for i = 1:n
% Calculăm suma folosind noile valori pe loc
sum1 = A(i, 1:i-1) * x(1:i-1);
sum2 = A(i, i+1:n) * x_old(i+1:n);

x(i) = (b(i) - sum1 - sum2) / A(i, i);
end

% Verificăm criteriul de oprire
if norm(x - x_old, inf) < tol
break;
end

x_old = x; % Actualizăm valorile anterioare
end
end