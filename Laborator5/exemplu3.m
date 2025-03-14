% Script de testare pentru metoda Gauss-Seidel
clc; clear; close all;

% Definim matricea coeficienților și vectorul termenilor liberi
A = [4 1 1; 2 5 2; 1 2 3];
b = [7; 3; 5];

% Setăm toleranța și numărul maxim de iterații
tol = 1e-10;
max_iter = 1000;

% Apelăm funcția Gauss-Seidel
x = gauss_seidel(A, b, tol, max_iter);

% Afișăm soluția
disp('Soluția sistemului Ax = b este:')
disp(x)

% Verificăm soluția: calculăm A * x și comparăm cu b
b_calc = A * x;
disp('Verificare: A * x trebuie să fie aproximativ egal cu b:')
disp(b_calc)
disp('b original:')
disp(b)

% Calculăm eroarea
error = norm(b - b_calc);
disp(['Eroare între Ax și b: ', num2str(error)])