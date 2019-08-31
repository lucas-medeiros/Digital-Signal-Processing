function r = Interpolar(en,N,L)
    r = zeros(1,N);
    x0 = 1;
    x1 = x0+ L -1;
    a = (en(x1) - en(x0))/(x1-x0);
    for x = 1:N 
        if pmodulo(x,L)==0 then
            x0 = x;
            x1 = x+L;
            if (x1 <= N) then
                a = ((en(x1) - en(x0))/(x1-x0));
            else
                a = 0;
            end
            r(x) = en(x);
        else
            r(x) = en(x0) + a*(x-x0);
        end
    end
endfunction
