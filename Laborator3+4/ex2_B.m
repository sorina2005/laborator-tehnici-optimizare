function [errAbs, errRel] = ex2_B(a, x)
    % Verificarea numărului de argumente de intrare
    if nargin ~= 2
        error('Funcția necesită exact 2 argumente de intrare: a și x.');
    end

    % Verificarea numărului de argumente de ieșire
    if nargout > 2
        error('Funcția returnează exact 2 argumente: errAbs și errRel.');
    end

    % Verificarea dimensiunilor argumentelor
    if ~isequal(size(a), size(x))
        error('Vectorii de intrare trebuie să aibă aceeași dimensiune.');
    end

    % Calculul erorii absolute și relative
    errAbs = abs(x - a);
    errRel = errAbs ./ abs(x);
end
