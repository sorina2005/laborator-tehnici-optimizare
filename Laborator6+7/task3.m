% Definirea matricei A si a vectorului b
A = [4 3 -1; 2 1 3; -6 -3 4];
b = [5; 3; 2];

% Factorizarea LU folosind eliminare Gauss
n = size(A, 1);
L = eye(n); % Matrice identitate pentru L
U = A; % Copiem A in U pentru a incepe eliminarea

for k = 1:n-1
    for i = k+1:n
        L(i, k) = U(i, k) / U(k, k);
        U(i, :) = U(i, :) - L(i, k) * U(k, :);
    end
end

% Verificarea rezultatului LU = A
LU_product = L * U;
disp('Matricea L:');
disp(L);
disp('Matricea U:');
disp(U);
disp('Produsul L * U:');
disp(LU_product);
disp('Matricea originala A:');
disp(A);

% Rezolvarea sistemului Ax = b folosind factorizarea LU
% 1. Rezolvam Ly = b (sistem triunghiular inferior)
y = zeros(n, 1);
for i = 1:n
    y(i) = (b(i) - L(i, 1:i-1) * y(1:i-1)) / L(i, i);
end

% 2. Rezolvam Ux = y (sistem triunghiular superior)
x = zeros(n, 1);
for i = n:-1:1
    x(i) = (y(i) - U(i, i+1:n) * x(i+1:n)) / U(i, i);
end

% Afisarea solutiei
disp('Solutia sistemului Ax = b:');
disp(x);
