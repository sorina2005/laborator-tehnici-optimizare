clear, clc;

x = [8.987658, 8.987312, 8.987512, 8.9875, 8.9865, 8.9895];

x_rotunjit = fix(x * 1000) / 1000 + (mod(fix(x * 10000), 10) > 5 | (mod(fix(x * 10000), 10) == 5 & mod(fix(x * 1000), 2) == 1)) * 0.001;

disp('Valorile rotunjite la 3 zecimale folosind regula cifrei pare:');
array2table([x' x_rotunjit'], 'VariableNames', {'Original', 'Rotunjit'})
