% Script de testare pentru metoda Eliminării Gauss
clc; clear; close all;

% Definim matricea coeficienților și vectorul termenilor liberi
A = [3, 2, -1; 2, -2, 4; -1, 1/2, -1];
b = [1; -2; 0];

% Apelăm funcția pentru rezolvarea sistemului
x = gauss_elimination(A, b);

% Afișăm rezultatul
disp('Soluția sistemului Ax = b este:')
disp(x)