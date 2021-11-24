%% Intialization
init
% intialization of parameters
rank(ctrb(A,B))
% rank
%%  Design LQR controller
Q = eye(4); % 4x4 identify matrix
R = 0.0001;
K = lqr(A,B,Q,R)

%% Simulate closed-loop system
tspan = 0:.01:10;
x0 = [3; 0; 0.1; .5]; % initial condition
wr = [-1.5; 0; 0; 0]; % reference position
u=@(x)-K*(x - wr); % control law
[t,x] = ode45(@(t,x)nonLinearePendulum(x, u(x), b, m, M, l, g, d, J),tspan,x0);
figure(1)
subplot(2,2,1)
plot(t, x(:,1));
grid on;
subplot(2,2,2)
plot(t, x(:,2));
grid on;
subplot(2,2,3)
plot(t, x(:,3));
grid on;
subplot(2,2,4)
plot(t, x(:,4));
grid on;

%% 2D simulation
% for k=1:length(t)
%     figure(2)
%     drawpend(x(k,:),m,M,l);
% end