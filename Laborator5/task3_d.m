[A, X_exact, B] = generate_test_data(3);
tol = 1e-6;
Nmax = 5000;

[X_gauss_seidel, iter_gauss_seidel] = gauss_seidel(A, B, tol, Nmax);

error_gauss_seidel = norm(X_gauss_seidel - X_exact);
disp(['Eroare Gauss-Seidel: ', num2str(error_gauss_seidel)]);
disp(['Nr de it: ', num2str(iter_gauss_seidel)]);
