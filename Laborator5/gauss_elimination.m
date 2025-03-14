function x = gauss_elimination(A, b)
% Dimensiunea sistemului
n = length(b);

% Matricea extinsă
A = [A b];

% Eliminare Gauss cu pivotare parțială
for k = 1:n-1
% Pivotare parțială: alegem cel mai mare pivot din coloana curentă
[~, pivotRow] = max(abs(A(k:n, k)));
pivotRow = pivotRow + k - 1;

% Schimbăm liniile dacă pivotul nu este deja pe poziția diagonală
if pivotRow ~= k
A([k, pivotRow], :) = A([pivotRow, k], :);
end

% Eliminare pentru a obține forma triunghiulară
for i = k+1:n
m = A(i, k) / A(k, k); % Coeficient de eliminare
A(i, k:end) = A(i, k:end) - m * A(k, k:end);
end
end

% Substituție inversă pentru obținerea soluției
x = zeros(n, 1);
for i = n:-1:1
x(i) = (A(i, end) - A(i, i+1:n) * x(i+1:n)) / A(i, i);
end
end