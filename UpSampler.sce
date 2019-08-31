function resp = UpSampler(sinal,L) //recebe como parâmetro o vetor sinal e o número para L
    //L = input('Insira o valor de L: ');
    if (L < 1) then
        printf('Insira um valor válido para L');
        return
    end
    N = length(sinal); //tamanho do vetor de entrada
    vet = zeros([1:1:L*N]); //vetor de 0 até L*N preenchido com zeros
    //tamanho do vetor resposta vai ser L*(tamanho do sinal original)
    //disp(vet)
    for a = 1:1:L*N
        if(modulo(a,L) == 0) //se o resto da divisão inteira for 0
           vet(a) = sinal(a/L);
        else
           vet(a) = 0;
        end     
    end
    for b = 1:1:length(vet)-L+1
        resp(b) = vet(b+L-1);
    end
    //disp(resp)
    x = ([1:1:length(resp)]); //vetor de 0 a N pro eixo X 
    //plot(x,resp) //imprime o gráfico
endfunction
