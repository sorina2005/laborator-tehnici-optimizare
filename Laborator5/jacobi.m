function x = jacobi(A, b, tol, max_iter)
% Funcție pentru rezolvarea sistemului Ax = b prin metoda iterativă Jacobi
% Intrare:
% A - matricea coeficienților (n x n)
% b - vectorul termenilor liberi (n x 1)
% tol - toleranța pentru criteriul de oprire
% max_iter - numărul maxim de iterații
% Ieșire:
% x - soluția sistemului (n x 1)

n = length(b);
x = zeros(n, 1); % Inițializăm soluția cu zero
x_new = zeros(n, 1);

for k = 1:max_iter
for i = 1:n
% Calculăm suma fără elementul diagonal
sum_term = A(i, 1:i-1) * x(1:i-1) + A(i, i+1:n) * x(i+1:n);
% Actualizăm x_i
x_new(i) = (b(i) - sum_term) / A(i, i);
end

% Verificăm criteriul de oprire
if norm(x_new - x, inf) < tol
break;
end

x = x_new; % Actualizăm soluția

end
end