function r = density(y)
    M = 0.029;
    R = 8.31;
    T = 300; 
    g = 9.8;
    r0 = 1;
    r = r0 * exp((-M*g*y)/(R*T));
end