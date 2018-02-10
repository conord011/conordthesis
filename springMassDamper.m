function [t,y] = springMassDamper
k=1000;
c=1200;
m=3;
[t,y] = ode45(@(t,y) dydt_springMassDamper(t,y,m,c,k), [0 1000], [10 0] );

plot(t,y)


end



function dydt = dydt_springMassDamper (t,y,m,c,k)

% return d/dy of y for spring-mass damper
% where y(1) is displacement and y(2) is velocity
% d2xdt2 = -k*x - c*xdot

dydt=zeros(2,1);
dydt(1) = y(2);
dydt(2) = -k/m*y(1) - c/m*y(2);
%gradient(y(:,1), t);

end

