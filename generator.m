function [ gen ] = generator( p )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

for i=2:1:p
%     Check array, zeros if value not obtained yet
    check = zeros(1,p-1);
    for j=0:1:p
%         We calculate the value, if it was already obtained, we stop this
%         loop, otherwise we write 1 in the array
        temp = modulo(i.^j,p);
        if check(1,temp) == 1
            break;
        else
            check(1,temp) = 1;
        end
    end
%     if we obtained everything, it's a generator
    if check == ones(1,p-1)
        gen = i;
        return;
    end
end
    gen = -1;
end

