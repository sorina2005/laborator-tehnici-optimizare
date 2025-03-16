[A, X_exact, B] = generate_test_data(3);
tol = 1e-6;
Nmax = 5000;
X0 = zeros(3,1);

[X_jacobi, iter_jacobi] = jacobi(A, B, tol, Nmax, X0);

error_jacobi = norm(X_jacobi - X_exact);
disp(['Eroare Jacobi: ', num2str(error_jacobi)]);
disp(['Nr de iteratii: ', num2str(iter_jacobi)]);

