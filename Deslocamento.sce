function des = Deslocamento(ent)
    //ent = vetor de entrada
    tipo = input('Insira o tipo de deslocamento (+1) ou (-1): ');
    //tipo = tipo de deslocamento
        //-> tipo = +1 == atraso
        //-> tipo = -1 == avanço
    tam = input('Insira o tamanho do deslocamento: ');
    //tam = tamanho do deslocamento
    n = length(ent); //tamanho do vetor de entrada
    if(tam > n) then //se o deslocamento for maior que o vetor de entrada o programa é encerrado
        printf('Tamanho de deslocamento inválido');
        return
    end
    vet = zeros([-4*n:1:4*n]); //vetor preenchido com zeros
    for i = 1:1:n
        vet(i+4*n) = ent(i); //copia o vetor de entrada pra um vetor maior preenchido com zeros
    end
    n2 = length(vet); //tamanho do novo vetor
    des = vet;
    for j = tam+1:1:(n2-tam-1) //evita o erro de "Invalid index"
        des(j) = vet(j + tam*tipo); //realiza o deslocamento
    end
    printf('Vetor original: ');
    disp(vet)
    printf('Vetor deslocado: ');
    disp(des)
endfunction
