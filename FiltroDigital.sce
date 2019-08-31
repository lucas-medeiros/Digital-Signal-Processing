function y = FiltroDigital(x, a, b)
    
    n = length(x);
    m = length(a);
    l = length(b);
    
    if (n < m) || (n < l) then
        printf("Entrada inválida");
        return 0;
    end
    y = zeros(1:1:n);
    aux = zeros(1:1:n);
    w = 2;
    for k = 1:1:l
        aux(k) = b(k)*x(w-k);
        w = w + 1;
    end
        
    i = 2;
    for k = 1:1:m
        y(i-1) = aux(i-1) + a(k)*y(i-k);
        i = i + 1;
    end
    disp(y);
    
endfunction
