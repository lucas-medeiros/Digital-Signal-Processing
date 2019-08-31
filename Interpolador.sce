function resp = Interpolador(sinal,L)
    //L = input('Insira o valor de L: ');
    if (L < 1) then
        printf('Insira um valor válido para L');
        return
    end
    vet = UpSampler(sinal,L); //vet recebe a resposta do up sampler
    tam = length(vet); //tam = tamnho do vetor vet
    //disp(vet)
    resp(1) = vet(1); //primeira posição sera igual em ambos
    for a = 2:1:tam
        if(vet(a) == 0)
            if (a + L-1) <= tam
                passo = ( vet(a+L-1) - vet(a-1) ) / (L) ;
                for i = 1:1:L
                    resp(a) = resp(a-1) + passo;
                    a = a + 1;
                end
           end
        else
            resp(a) = vet(a);
        end     
    end
    disp(resp)
    x = ([1:1:length(resp)]); //vetor de 0 a N pro eixo X 
    plot(x,resp) //imprime o gráfico
endfunction
