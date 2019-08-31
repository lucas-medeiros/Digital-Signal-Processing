function FFT(x)
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
    
   nm1 = tamXX;
   nd2 = tamXX / 2;
   m = (int) (log(tamXX) / log(2));
   j = nd2;
   for i = 1:1:tamXX - 2
       if (i >= j)
           k = nd2;
       else
           TR = REX(j);
           TI = IMX(j);
           REX(j) = REX(i);
           IMX(j) = IMX(j);
           REX(i) = TR;
           IMX(i) = TI;
           k = nd2;
       end
       if (k > j) 
           j = j + k;
       else
           while(k < j)
                j = j - k;
                k = k / 2;
           end
       end
   end
   
   for l = 1:1:m
       le = (int) (2^l);
       le2 = le / 2;
       ur = 1;
       ui = 0;
       SR = cos (%pi/le2);
       SI = -sin(%pi/le2);
       for j = 2:1:le2
           jm1 = j - 1;
           for k = jm1:le:nm1
               if (k>0)
                ip = k + le2;
                   TR = REX(ip) * ur - IMX(ip) * ui;
                   TI = REX(ip) * ui + IMX(ip) * ur;
                   //if ((k>-1))
                       REX(ip) = REX(k) - TR;
                       IMX(ip) = IMX(k) - TI;
                       REX(k) = REX(k) + TR;
                       IMX(k) = IMX(k) + TI;
               end
           end
           TR = ur;
           ur = TR * SR - ui*SI;
           ui = TR * SI + ui*SR;
      end
   end
endfunction
