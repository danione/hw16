function [num, den] = Yankulov_task4(number)
    if number > 0 && number < 1
        [num,den] = rat(number);
        if mod(den,2) == 0
            den = den - 1;
            g = gcd(num,den);
            num = num/g
            den = den/g
        else
            den = den*2 - 1;
            num = num*2;
            g = gcd(num,den);
            num = num/g
            den = den/g
        end
    end
    if number == 0
        num = 0 
        den = 1
    elseif number == 1
        num = 1
        den = 1
    end
end