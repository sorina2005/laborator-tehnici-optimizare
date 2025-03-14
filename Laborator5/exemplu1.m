% Script de testare pentru metoda Eliminării Gauss
clc; clear; close all;

% Definim matricea coeficienților și vectorul termenilor liberi
A = [2 1 -1; -3 -1 2; -2 1 2];
b = [8; -11; -3];

% Apelăm funcția pentru rezolvarea sistemului
x = gauss_elimination(A, b);

% Afișăm rezultatul
disp('Soluția sistemului Ax = b este:')
disp(x)