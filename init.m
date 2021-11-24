params

% syms M m l g d J b

O = [
    1,  0, 0, 0;
    0, M+m, 0, m*l;
    0, 0, 1, 0;
    0, m*l, 0, J+m*l.^2
    ]
 OI = O^-1
P = [
    0 1 0 0;
    0 -b 0 0;
    0 0 0 1;
    0 0 m*g*l -d
    ]
S = O^-1*P

A = O^-1*P
B = O^-1*[0; 1; 0; 0]
