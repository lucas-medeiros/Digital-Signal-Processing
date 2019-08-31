    N = input('Insira o tamanho do vetor: ');
    pos = input ('Insira a posição de inicio do degrau: ');
    a = input('Insira a amplitude do degrau: ');
    vet = zeros([0:1:N]); //vetor de 0 até N preenchido com zeros
    for j = pos:1:N+1
        vet(j) = a;
    end
    disp(vet)
