function resp = Convolucao(sinalX,sinalH)
    
    tamX = length(sinalX);
    tamH = length(sinalH);
    tamY = tamX + tamH;
    
    resp = zeros([1:1:tamY]);
    
    for i = 1:1:tamX
        for j = 1:1:tamH
            resp(i + j) = ( resp (i+j) ) + ( sinalX(i) * sinalH(j) );
        end
    end
    for a = 1:1:tamY -1
        resp(a) = resp(a+1); //desloca o sinal em 1 para descartar o 0 inicial
    end
    disp(resp)
    x = ([1:1:length(resp)]); //vetor de 0 a N pro eixo X 
    plot(x,resp) //imprime o gráfico
    
endfunction
