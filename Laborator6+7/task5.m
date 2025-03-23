clc; clear; close all;

% Definim functia obiectiv
f = @(x) (x(1) - 3)^2 + (x(2) - 1)^4;

% Calcul gradient
grad_f = @(x) [2 * (x(1) - 3);
               4 * (x(2) - 1)^3];

% Initializam punctul de start
x0 = [1; 2];

% Initializam matricea Hessiana inversa H0 = I
H = eye(2);

% Setam pasul fix
alpha = 0.1;

% Setam toleranta si numarul maxim de iteratii
tol = 1e-6;
max_iter = 100;

% Aplicam metoda BFGS
[x_opt, history] = BFGS_method(f, grad_f, x0, H, alpha, max_iter, tol);

% Afisam rezultatele
disp('Minimul gasit:');
disp(x_opt);
disp('Valoarea functiei obiectiv in punctul optim:');
disp(f(x_opt));

% Reprezentarea grafica a iteratiilor
figure;
hold on;
plot(history(1, :), history(2, :), 'ro-', 'LineWidth', 1.5);
xlabel('x_1');
ylabel('x_2');
title('Evolutia iteratiilor metodei BFGS');
grid on;
hold off;

%% Functie pentru metoda BFGS
function [x, history] = BFGS_method(f, grad_f, x0, H0, alpha, max_iter, tol)
    x = x0;
    H = H0;
    history = x;
    
    for k = 1:max_iter
        g = grad_f(x);
        if norm(g) < tol
            break;
        end
        p = -H * g; % Directia de cautare
        x_new = x + alpha * p; % Actualizare x
        
        s = x_new - x;
        y = grad_f(x_new) - g;
        
        if y' * s > 0 % Conditie de actualizare
            rho = 1 / (y' * s);
            V = eye(2) - rho * (s * y');
            H = V' * H * V + rho * (s * s');
        end
        
        x = x_new;
        history(:, end+1) = x;
    end
end
