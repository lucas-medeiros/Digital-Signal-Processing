function resp = Interpolador2(sinal,L)
    N = length(sinal); //tamanho do vetor de entrada
    if (L < 1) then
        printf('Insira um valor válido para L');
        return
    end
    resp = zeros([1:1:N]); //vetor de 0 até L*N preenchido com zeros
    x0 = 1;
    x1 = x0 + L - 1;
    passo = ( ( sinal(x1) - sinal(x0) ) / (x1 - x0) );
    for a = 1:N 
        if (modulo(a,L)==0)
            x0 = a;
            x1 = a+L;
            if ((x1) <= N)
                passo = ( ( sinal(x1) - sinal(x0) ) / (x1-x0) );
            else
                passo = 0;
            end
            resp(a) = sinal(a);
        else
            resp(a) = sinal(a) + passo*(a-x0);
        end
    end
    disp(resp)
    x = ([1:1:length(resp)]); //vetor de 0 a N pro eixo X 
    plot(x,resp)
endfunction
