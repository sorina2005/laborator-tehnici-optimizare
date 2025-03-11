clc; clear; close all;

% Numerele initiale
numere = [2.416752, 6.216253, 3.454650];

% Zecimale pentru rotunjire
zecimale = [2, 3, 4, 5];

% Rotunjire conform regulii cifrei pare
for i = 1:length(numere)
    fprintf('Numărul inițial: %.6f\n', numere(i));
    for j = 1:length(zecimale)
        rotunjit = round(numere(i), zecimale(j));
        fprintf('Rotunjit la %d zecimale: %.6f\n', zecimale(j), rotunjit);
    end
    fprintf('\n');
end
