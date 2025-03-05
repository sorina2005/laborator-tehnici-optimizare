function task7()
    % Definirea punctului de analizat
    x_star = [0; 0];
    
    % Calculul gradientului și Hessianei
    [grad_f, H_f] = hessian(x_star);
    
    % Verificarea conditiilor FONC și SONC
    conditii(grad_f, H_f);
    
    % Reprezentarea grafica a functiei
    functie_plot(x_star);
end

function [grad_f, H_f] = hessian(x)
    % Definirea functiei
    f = @(x1, x2) x1.^2 - x2.^2;
    
    % Calculul gradientului
    grad_f = [2*x(1); -2*x(2)];
    
    % Calculul Hessianei
    H_f = [2, 0; 0, -2];
end

function conditii(grad_f, H_f)
    % Verificarea FONC
    if all(grad_f == 0)
        disp('FONC este indeplinita: ∇f(x*) = 0.');
    else
        disp('FONC nu este indeplinita.');
    end
    
    % Verificarea SONC
    eigenvalues = eig(H_f);
    if all(eigenvalues >= 0)
        disp('SONC este indeplinita: Hessiana este semidefinit pozitiva.');
    else
        disp('SONC nu este indeplinita: exista valori proprii negative.');
    end
end

function functie_plot(x_star)
    % Crearea domeniului
    [X, Y] = meshgrid(-2:0.1:2, -2:0.1:2);
    Z = X.^2 - Y.^2;
    
    % Reprezentarea grafica
    figure;
    surf(X, Y, Z);
    hold on;
    plot3(x_star(1), x_star(2), x_star(1)^2 - x_star(2)^2, 'ro', 'MarkerSize', 10, 'LineWidth', 2);
    hold off;
    title('Reprezentare 3D a functiei f(x, y) = x^2 - y^2');
    xlabel('x'); ylabel('y'); zlabel('f(x, y)');
    grid on;
end
