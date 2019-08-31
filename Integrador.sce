function vet = Integrador(sinal)
    N = length(sinal); //tamanho do vetor de entrada
    cont = 0;
    for j = 1:1:N
        cont = cont + sinal(j);
        vet(j) = cont; //vetor com os valores de cont pra plotar o gráfico do sinal integrado
    end
    x = ([1:1:N]); //vetor de 1 a N pro eixo X 
    plot(x,vet) //imprime o gráfico
    disp(cont) //imprime o resultado do somador
endfunction
