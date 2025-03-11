% Definirea valorii x si a numerelor a1, a2, a3, a4, a5
x = 499.987;
a1 = 500;
a2 = 499.992;
a3 = 500.02;
a4 = 499.979;
a5 = 499.989;

% Calcularea erorii absolute pentru fiecare numar aproximativ
err_a1 = abs(x - a1);
err_a2 = abs(x - a2);
err_a3 = abs(x - a3);
err_a4 = abs(x - a4);
err_a5 = abs(x - a5);

% Determinarea numarului de cifre semnificative in functie de eroarea absoluta
decimals_a1 = floor(log10(1/err_a1));
decimals_a2 = floor(log10(1/err_a2));
decimals_a3 = floor(log10(1/err_a3));
decimals_a4 = floor(log10(1/err_a4));
decimals_a5 = floor(log10(1/err_a5));

% Afisarea rezultatelor
disp(['Numar de cifre semnificative pentru a1: ', num2str(decimals_a1)]);
disp(['Numar de cifre semnificative pentru a2: ', num2str(decimals_a2)]);
disp(['Numar de cifre semnificative pentru a3: ', num2str(decimals_a3)]);
disp(['Numar de cifre semnificative pentru a4: ', num2str(decimals_a4)]);
disp(['Numar de cifre semnificative pentru a5: ', num2str(decimals_a5)]);
