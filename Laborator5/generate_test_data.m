function [A, X_exact, B] = generate_test_data(n)
    A = rand(n) + eye(n) * n; 
    X_exact = rand(n,1); 
    B = A * X_exact; 
end
