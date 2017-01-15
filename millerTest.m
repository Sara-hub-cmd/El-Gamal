function [ pass ] = millerTest( a,n )
%MILLER_TEST Function that computes the miller test for n

    %find n-1 = 2^s * d
    for i=0:floor(log2(n-1))+1
        if(modulo((n-1), (2.^i)) == 0)
            s = i;
            d = (n-1)/(2.^i);
        end
    end
    %apply miller test

    x = modExp(a, d, n);
    if((x == 1) || (x == n-1))
        pass = 0;
        return;
    end
    
    while(s > 1) 
        x = modulo(x.^2, n);
        if(x == n-1)
            pass = 0;
            return;
        end
        s = s-1;
    end
    pass = 1;
end

