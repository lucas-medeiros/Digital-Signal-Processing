function vet = ImpulsoUnitario(f)
    //Entrada de dados deve ser um vetor com: [tamanho, posição, amplitude]
    N = f(1);
    pos = f(2);
    a = f(3);
    vet = zeros([0:1:N]); //vetor de 0 até N preenchido com zeros
    vet(pos) = a;
    disp(vet)
endfunction
