function newfft(x)
    tamXX = length(x);
    tamREX = (tamXX/ 2) + 1;
    tamIMX = tamREX;
    /*
    REX = zeros(1:1:tamREX);
    IMX = zeros(1:1:tamIMX);
    n = tamXX + 1;
    for k = 1:1:tamREX      //separa em parte real e imaginária
        for i = 1:1:tamXX
            REX(k) = REX(k) + x(i) * cos(2*%pi*k*i/n);
            IMX(k) = IMX(k) - x(i) * sin(2*%pi*k*i/n);
        end
    end
    */
   //set variáveis
   REX = x;
   IMX = zeros([1:1:tamXX]);
   nm1 = tamXX;
   nd2 = (tamXX / 2) + 1;
   m = (int) (log(tamXX) / log(2));
   j = nd2;
   aux = 1;
   for i = 2:1:tamXX - 1      //inversão de bits
       
       disp(j);
       
       disp(i);
       if (j > i)
           TR = REX(j);
           TI = IMX(j);
           REX(j) = REX(i);
           IMX(j) = IMX(i);
           REX(i) = TR;
           IMX(i) = TI;
       end
       k = nd2;
       while(j >= k)
           j = j - k;
           k =  int16( k / 2);
       end
       j = j + k;
       disp(k);
       printf('passada %d -> j:%d i:%d k:%d ', aux, j, i, k);
       disp(REX);
       aux = aux + 1;
   end
   disp(REX);
    
   for l = 1:1:m        //loop para cada etapa
       le = (int) (2^l);
       le2 = (int) (le / 2);
       ur = 1;
       ui = 0;
       SR = cos (%pi/le2);
       SI = -sin(%pi/le2);
       for j = 2:1:le2      //loop para cada sub DFT
           jm1 = j - 1;
           for k = jm1:le:nm1 - 1       //loop para cada 'butterfly'
               ip = k + le2;
               //if ((k>0) && (ip > 0) && (ip <= length(REX)))    //evita invalid index err
                   TR = REX(ip) * ur - IMX(ip) * ui;
                   TI = REX(ip) * ui + IMX(ip) * ur;
                   REX(ip) = REX(k) - TR;
                   IMX(ip) = IMX(k) - TI;
                   REX(k) = REX(k) + TR;
                   IMX(k) = IMX(k) + TI;
               //end
           end
           TR = ur;
           ur = TR * SR - ui*SI;
           ui = TR * SI + ui*SR;
      end
   end
   //imprime REX e IMX em único gráfico
   eixoX = [1:1:length(REX)];
   plot(eixoX, REX);
   //plot(eixoX, IMX);
   
endfunction
