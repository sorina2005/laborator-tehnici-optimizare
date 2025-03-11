clear, clc;

x = [2.456750, 2.42629, 2.456752, 2.416512, 2.45350];

x_rotunjit = fix(x * 1000) / 1000 + (mod(fix(x * 10000), 10) > 5 | (mod(fix(x * 10000), 10) == 5 & mod(fix(x * 1000), 2) == 1)) * 0.001;

disp('Valorile rotunjite la 3 zecimale folosind regula cifrei pare:');
array2table([x' x_rotunjit'], 'VariableNames', {'Original', 'Rotunjit'})

