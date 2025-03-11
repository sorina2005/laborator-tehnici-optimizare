% Definirea valorii x si a numerelor a1, a2, a3, a4, a5
x = 499.987;
a1 = 500;
a2 = 499.992;
a3 = 500.02;
a4 = 499.979;
a5 = 499.989;

% Calcularea diferentelor intre x si fiecare numar
diff_a1 = abs(x - a1);
diff_a2 = abs(x - a2);
diff_a3 = abs(x - a3);
diff_a4 = abs(x - a4);
diff_a5 = abs(x - a5);

% Determinarea numarului de zecimale exacte
decimals_a1 = numel(num2str(diff_a1, '%.10f')) - 1 - find(num2str(diff_a1, '%.10f') == '.', 1);
decimals_a2 = numel(num2str(diff_a2, '%.10f')) - 1 - find(num2str(diff_a2, '%.10f') == '.', 1);
decimals_a3 = numel(num2str(diff_a3, '%.10f')) - 1 - find(num2str(diff_a3, '%.10f') == '.', 1);
decimals_a4 = numel(num2str(diff_a4, '%.10f')) - 1 - find(num2str(diff_a4, '%.10f') == '.', 1);
decimals_a5 = numel(num2str(diff_a5, '%.10f')) - 1 - find(num2str(diff_a5, '%.10f') == '.', 1);

% Afisarea rezultatelor
disp(['Zecimale exacte pentru a1 = ', num2str(decimals_a1)]);
disp(['Zecimale exacte pentru a2 = ', num2str(decimals_a2)]);
disp(['Zecimale exacte pentru a3 = ', num2str(decimals_a3)]);
disp(['Zecimale exacte pentru a4 = ', num2str(decimals_a4)]);
disp(['Zecimale exacte pentru a5 = ', num2str(decimals_a5)]);
