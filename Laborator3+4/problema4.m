clear, clc;

%Calcul pentru pi 
pi_exact = 3.14159265;
a1_pi = 3.1415;
a2_pi = 3.1416;

eroare_absoluta_pi = abs(pi_exact - a1_pi);
margine_eroare_pi = (a2_pi - a1_pi) / 2;

fprintf('Eroarea absoluta pentru pi: %.8f\n', eroare_absoluta_pi);
fprintf('Marginea erorii absolute pentru pi: %.8f\n', margine_eroare_pi);

% Calcul pentru e
e_exact = 2.71828182845;
a1_e = 2.718;
a2_e = 2.719;

eroare_absoluta_e = abs(e_exact - a1_e);
margine_eroare_e = (a2_e - a1_e) / 2;

fprintf('Eroarea absoluta pentru e: %.8f\n', eroare_absoluta_e);
fprintf('Marginea erorii absolute pentru e: %.8f\n', margine_eroare_e);
