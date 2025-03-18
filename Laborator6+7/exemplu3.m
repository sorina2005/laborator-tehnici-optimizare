clc; clear; close all;

% Definim matricea A
A = [4 3 -1;
2 1 3;
-6 -3 4];

% Dimensiunea matricei A
n = size(A, 1);

% Inițializăm L ca matrice identitate și U ca A
L = eye(n);
U = A;

% Aplicăm eliminarea Gauss pentru factorizarea LU
for k = 1:n-1
for i = k+1:n
% Calculăm factorul de eliminare
L(i, k) = U(i, k) / U(k, k);

% Actualizăm rândul i din U
U(i, :) = U(i, :) - L(i, k) * U(k, :);
end
end

% Afișăm rezultatele
disp('Matricea L:');
disp(L);
disp('Matricea U:');
disp(U);

% Verificare: A = L * U
disp('Verificare: L * U trebuie să fie egal cu A original:');
disp(L * U);