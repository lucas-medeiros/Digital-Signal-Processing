function vet = DownSampler(sinal,M)
    //M = input('Insira o valor de M: ');
    if (M < 1) then //M deve ser maior ou igual a 1
        printf('Insira um valor válido para M');
        return
    end
    N = length(sinal); //tamanho do sinal de entrada
    vet = zeros([1:1:N/M]); //vetor resposta tera tamanho N/M
    for a = 1:1:N/M
        if ((M*a) > N) 
            vet(a) = 0;
        else
            vet(a) = sinal(M*a);
        end   
    end
    disp(vet)
    x = ([1:1:N/M]); //vetor de 0 a N pro eixo X 
    plot(x,vet)
endfunction
