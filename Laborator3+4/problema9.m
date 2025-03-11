% Definirea numerelor
n1 = 502.364;
n2 = 0.00300551;
n3 = 1235.7;
n4 = 0.0235;

% Rotunjirea numerelor la 4 cifre semnificative folosind regula cifrei pare
n1_rounded = round(n1, 4, 'significant');
n2_rounded = round(n2, 4, 'significant');
n3_rounded = round(n3, 4, 'significant');
n4_rounded = round(n4, 4, 'significant');

% Afisarea rezultatelor
disp(['n1 rotunjit: ', num2str(n1_rounded)]);
disp(['n2 rotunjit: ', num2str(n2_rounded)]);
disp(['n3 rotunjit: ', num2str(n3_rounded)]);
disp(['n4 rotunjit: ', num2str(n4_rounded)]);
