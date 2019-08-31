    N = input('Insira o tamanho do vetor: ');
    pos = input ('Insira a posição do impulso: ');
    a = input('Insira a amplitude do impulso: ');
    vet = zeros([0:1:N]); //vetor de 0 até N preenchido com zeros
    vet(pos) = a;
    disp(vet)
