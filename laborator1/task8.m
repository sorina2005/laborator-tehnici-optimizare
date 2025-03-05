   % Verificarea SOSC
    if all(eigenvalues > 0)
        disp('SOSC este indeplinita: Hessiana este definit pozitiva');
    elseif all(eigenvalues < 0)
        disp('SOSC indica un maxim local: Hessiana este definit negativa');
    else
        disp('SOSC nu este indeplinita: Hessiana nu este definit pozitiva sau negativa');
    end
