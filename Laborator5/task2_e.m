precisions = logspace(-1, -16, 10);
iterations = zeros(size(precisions));

for i = 1:length(precisions)
    [~, iterations(i)] = jacobi(A, B, precisions(i), Nmax, X0);
end

semilogx(precisions, iterations, 'r-o');
xlabel('Precizie');
ylabel('Nr de iteratii');
title('Nr de iteratii vs Precizie (Metoda Jacobi)');
grid on;
