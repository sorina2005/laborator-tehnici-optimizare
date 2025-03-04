clc; clear; close all;

% Definirea functiei f(x, y)
f = @(x, y) x.^2 + 3*y.^2 + sin(x.*y);

% Punctul P unde calculam derivata
P = [1, 1];

% Vectorul de directie
v = [1, 2]; 
v = v / norm(v); % Normalizare

% Aproximarea derivatelor partiale folosind diferenta finita
h = 1e-5;
dfdx = (f(P(1) + h, P(2)) - f(P(1), P(2))) / h;
dfdy = (f(P(1), P(2) + h) - f(P(1), P(2))) / h;

% Gradientul in P
grad_f = [dfdx, dfdy];

% Derivata direcțională
D_v_f = dot(grad_f, v);

fprintf('Derivata direcțională numerică în P(%.2f, %.2f) pe direcția (%.2f, %.2f) este: %.4f\n', P(1), P(2), v(1), v(2), D_v_f);
