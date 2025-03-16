precisions = logspace(-1, -16, 10);
iterations = zeros(size(precisions));

for i = 1:length(precisions)
    [~, iterations(i)] = gauss_seidel(A, B, precisions(i), Nmax);
end

semilogx(precisions, iterations, 'b-o');
xlabel('Precizie');
ylabel('Nr de iteraii');
title('Nr de iteratii vs Precizie (Metoda Gauss-Seidel)');
grid on;
