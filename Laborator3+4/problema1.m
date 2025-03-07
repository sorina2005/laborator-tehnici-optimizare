clear,clc
format long %afisarea numerelor cu 15 zecimale
a=3.14;
x=3.141592;
delta_a=x-a;
if delta_a == 0
fprintf('delta_a este 0\n');
return
end
eroare_absoluta=abs(x-a);
eroare_relativa=eroare_absoluta/abs(a);
% pentru afisarea numerelor cu un numar specificat de zecimale
fprintf('a = %.8f \n',a)
fprintf('x = %.8f \n',x)
fprintf('eroare_absoluta = %.8f\n',eroare_absoluta)
fprintf('eroare_relativa = %.8f\n',eroare_relativa)