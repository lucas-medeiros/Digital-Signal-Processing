function vet = PrimeiraDiferenca(sinal)
    N = length(sinal); //tamanho do vetor de entrada
    vet = zeros([0:1:N+1]); //vetor de 0 até N+1 preenchido com zeros
    b = 1;
    for a = 2:1:N+1 
        //desloca o sinal de entrada uma posição para a direita colocando 0 na primeira e última posição
        vet(a) = sinal(b);
        b = b + 1;
    end
    disp(vet)
    for j = 2:1:N+1 //loop começa com j = 2 para evitar "index error"
        resposta(j) = vet(j) - vet(j-1);
    end
    disp(resposta)
    x = ([1:1:N+1]); //vetor de 0 a N pro eixo X 
    plot(x,resposta)
endfunction
