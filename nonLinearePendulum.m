function [dx,F] = nonLinearePendulum(x, F, lambda, m, M, l, g, d, J)
    dx(1, 1) = x(2);
    dx(2, 1) = (F-lambda*x(2)+m*l*((-d*x(4)+m*g*l*sin(x(3)))*cos(x(3))/(m*l.^2+J)+x(4).^2*sin(x(3))))/((M+m)-(m*l*cos(x(3))).^2/(m*l.^2+J));
    dx(3, 1) = x(4);
    dx(4, 1) = (-d*x(4)+m*g*l*sin(x(3))-((F-lambda*x(2)+m*l*x(4).^2*sin(x(3)))/(m+M))*m*l*cos(x(3)))/((m*l.^2+J)-(m*l*cos(x(3))).^2/(M+m));
    dx = [dx(1, 1); dx(2, 1); dx(3, 1); dx(4, 1)];
end
