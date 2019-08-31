function vet = TransformadaFourier(x)
    
    tamXX = length(x);
    tamREX = (tamXX/ 2) + 1;
    tamIMX = tamREX;
    
    REX = zeros(1:1:tamREX);
    IMX = zeros(1:1:tamIMX);
    n = tamXX + 1;
    for k = 1:1:tamREX
        for i = 1:1:tamXX
            REX(k) = REX(k) + x(i) * cos(2*%pi*k*i/n);
            IMX(k) = IMX(k) - x(i) * sin(2*%pi*k*i/n);
        end
    end
    
    eixoX = ([1:1:length(REX)]); //vetor de 0 a N pro eixo X 
    disp(REX);
    disp(IMX);
    
    plot (eixoX, REX);
    plot (eixoX, IMX);
    
    for j = 1:1:tamREX
        vet(j) = sqrt( (REX(j) ^ 2) + (IMX(j) ^ 2) );
    end
    
    //plot(eixoX,vet);
    
endfunction
