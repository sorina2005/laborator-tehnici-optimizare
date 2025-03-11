clc; clear; close all;

% Numerele initiale
numere = [2.456750, 2.42629, 2.456752, 2.416512, 2.45350];

% Rotunjire la 3 zecimale
rotunjite = round(numere, 3);

% Afisare rezultate
for i = 1:length(numere)
    fprintf('Numărul inițial: %.6f → Rotunjit: %.3f\n', numere(i), rotunjite(i));
end
