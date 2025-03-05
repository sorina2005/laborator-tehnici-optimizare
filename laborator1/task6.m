
syms x y;

% Alegem trei functii pentru testare
f1 = x^2 + y^2;                     % Funcția sferica
f2 = x^2 - y^2;                     % Funcția sa
f3 = x^4 - 2*x^2 + y^2;             % Funcție cu mai multe puncte critice

% Definim o lista cu funcțiile de analizat
functions = {f1, f2, f3};
titles = {'f(x,y) = x^2 + y^2', 'f(x,y) = x^2 - y^2', 'f(x,y) = x^4 - 2x^2 + y^2'};

for i = 1:length(functions)
    f = functions{i};

    % Calculul gradientului
    grad_f = gradient(f, [x, y]);

    % Solutionarea sistemului grad_f = (0,0) pentru a gasi punctele critice
    crit_points = solve(grad_f == [0; 0], [x, y]);

    % Extragem solutiile
    crit_x = double(crit_points.x);
    crit_y = double(crit_points.y);

    % Vizualizare grafica
    figure;
    fsurf(matlabFunction(f), [-2, 2, -2, 2]);
    hold on;

    % Reprezentam punctele critice
    for j = 1:length(crit_x)
        plot3(crit_x(j), crit_y(j), double(subs(f, [x, y], [crit_x(j), crit_y(j)])), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
    end

    % Reprezentam vectorul gradient
    [X, Y] = meshgrid(linspace(-2, 2, 10), linspace(-2, 2, 10));
    Fx = matlabFunction(grad_f(1), 'Vars', [x, y]);  % Componenta x a gradientului
    Fy = matlabFunction(grad_f(2), 'Vars', [x, y]);  % Componenta y a gradientului
    U = Fx(X, Y);
    V = Fy(X, Y);
    
    % Calculam valorile functiei f in punctele X si Y
    Z = arrayfun(@(x, y) double(subs(f, [x, y], {x, y})), X, Y);

    % Plasam vectorii gradient pe grafic
    quiver3(X, Y, Z, U, V, zeros(size(U)), 'r', 'LineWidth', 1.5);


    title(['Gradient și puncte critice: ', titles{i}]);
    xlabel('x');
    ylabel('y');
    zlabel('f(x,y)');
    grid on;
    hold off;
end
