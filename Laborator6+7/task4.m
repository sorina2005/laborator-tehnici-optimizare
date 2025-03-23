clc; clear; close all;

% Definim functia obiectiv
f = @(x) (x(1) - 2)^4 + (x(1) - 2*x(2))^2;
grad_f = @(x) [4*(x(1) - 2)^3 + 2*(x(1) - 2*x(2)); -4*(x(1) - 2*x(2))];

% Initializam punctul de start
x0 = [0; 0];

% Setam numarul maxim de iteratii si toleranta
max_iter = 50;
tol = 1e-6;

% Aplicam metoda DFP
[x_DFP, history_DFP] = DFP_method(f, grad_f, x0, max_iter, tol);

% Aplicam metoda BFGS
[x_BFGS, history_BFGS] = BFGS_method(f, grad_f, x0, max_iter, tol);

% Reprezentarea grafica a iteratiilor
figure;
hold on;
plot(history_DFP(1, :), history_DFP(2, :), 'ro-', 'LineWidth', 1.5);
plot(history_BFGS(1, :), history_BFGS(2, :), 'bs-', 'LineWidth', 1.5);
legend('DFP', 'BFGS');
xlabel('x_1');
ylabel('x_2');
title('Evolutia iteratiilor pentru metodele DFP si BFGS');
grid on;
hold off;

disp('Solutia finala obtinuta cu metoda DFP:');
disp(x_DFP);

disp('Solutia finala obtinuta cu metoda BFGS:');
disp(x_BFGS);

% Functie pentru metoda DFP
function [x, history] = DFP_method(f, grad_f, x0, max_iter, tol)
    n = length(x0);
    x = x0;
    H = eye(n);
    history = x;
    
    for k = 1:max_iter
        g = grad_f(x);
        if norm(g) < tol
            break;
        end
        p = -H * g;
        alpha = line_search(f, grad_f, x, p);
        x_new = x + alpha * p;
        s = x_new - x;
        y = grad_f(x_new) - g;
        
        rho = 1 / (y' * s);
        H = H + rho * (s * s') - (H * y * y' * H) / (y' * H * y);
        
        x = x_new;
        history(:, end+1) = x;
    end
end

% Functie pentru metoda BFGS
function [x, history] = BFGS_method(f, grad_f, x0, max_iter, tol)
    n = length(x0);
    x = x0;
    H = eye(n);
    history = x;
    
    for k = 1:max_iter
        g = grad_f(x);
        if norm(g) < tol
            break;
        end
        p = -H * g;
        alpha = line_search(f, grad_f, x, p);
        x_new = x + alpha * p;
        s = x_new - x;
        y = grad_f(x_new) - g;
        
        rho = 1 / (y' * s);
        V = eye(n) - rho * (s * y');
        H = V' * H * V + rho * (s * s');
        
        x = x_new;
        history(:, end+1) = x;
    end
end

% Functie pentru cautarea liniei (backtracking)
function alpha = line_search(f, grad_f, x, p)
    alpha = 1;
    rho = 0.5;
    c = 1e-4;
    while f(x + alpha * p) > f(x) + c * alpha * grad_f(x)' * p
        alpha = rho * alpha;
    end
end
