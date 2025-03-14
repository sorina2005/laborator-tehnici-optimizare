% Script de testare pentru metoda Jacobi
clc; clear; close all;

% Definim matricea coeficienților și vectorul termenilor liberi
A = [10 1 1; 1 10 -1; 1 -1 10];
b = [6; 3; 6];

% Setăm toleranța și numărul maxim de iterații
tol = 1e-6;
max_iter = 50;

% Apelăm funcția Jacobi
x = jacobi(A, b, tol, max_iter);

% Afișăm soluția
disp('Soluția sistemului Ax = b este:')
disp(x)

% Verificăm soluția: calculăm A * x și comparăm cu b
b_calc = A * x;
disp('Verificare: A * x trebuie să fie aproximativ egal cu b:')
disp(b_calc)
disp('b original:')
disp(b)