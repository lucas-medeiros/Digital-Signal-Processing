function vet = DegrauUnitario(f)
    //Entrada de dados deve ser um vetor com: [tamanho, posição, amplitude]
    N = f(1);
    pos = f(2);
    a = f(3);
    vet = zeros([0:1:N]); //vetor de 0 até N preenchido com zeros
    for j = pos:1:N+1
        vet(j) = a;
    end
    disp(vet)
endfunction
