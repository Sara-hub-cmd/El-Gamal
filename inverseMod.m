function [ inv ] = inverseMod( a, n )
%UNTITLED Summary of this function goes here
%   (q) (r) (q mod r) Q floor(q/r) R T
    if(gcd(a, n) ~= 1)
        inv = -1;
        return;
    end
    q = a;
    r = n;
    Q = [1, 0];
    R = [0, 1];
    qmodr = modulo(q, r);

    while(qmodr ~= 0)
        fqr = floor(q/r);
        T = Q-fqr*R;
        Q = R;
        R = T;
        q = r;
        r = qmodr;
        qmodr = modulo(q, r);
    end
    inv = modulo(T(1), n);
end

