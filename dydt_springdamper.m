function [t,y1] = dydt_springdamper(t1,y1,k,c,m1)
close all
clear all

k=3000000;
c=1200000;
m1=725839;
% m2=887000;
% ro=1025;
% V1=m1/8050;
% V2=m2/8050;
% g=9.81;



[t1,y1] = ode45(@(t1,y1) springdamper(t1,y1,k,c,m1), [0,50], [10,0]);
% [t2,y2] = ode45(@(t2,y2) springdamper(t2,y2,k,c,m2), [0,50], [10,0]);





% figure(1)
% plot(t1,y1(:,1),'black',t2,y2(:,1),'r')
% xlabel('Time [s]')
% ylabel('Displacement (m)')
% legend('float','spar & plate')
% 
%     
% 
% figure(2)
% plot(t1,y1(:,2),'black',t2,y2(:,2),'r')
% xlabel('Time (s)')
% ylabel('Velocity (m/s)')
% legend('float','spar & plate')


figure(3)
plot(t1,dydt1(:,2),'black')
xlabel('Time (s)')
ylabel('Acceleration (m/s/s)')

end

function dydt1 = springdamper(t1,y1,k,c,m1)
% return d/dy of y for spring-mass damper
% where y(1) is displacement and y(2) is velocity
% d2xdt2 = -k*x - c*xdot

dydt1=zeros(2,1);
dydt1(1)= y1(2);
dydt1(2) = (-k/m1)*y1(1) + (-c/m1)*y1(2);
gradient(dydt1(:,1), t1);

end


%  function d2ydt2 = springdamper1(t1,y1,k,c,m1)
%  dt=1000-0;
%  d2ydt2=zeros(2,1);
%  d2ydt2(1) = y1(3);
%  d2ydt2=[y1(3); (diff(y1(2)/dt))]; % Accel. is der. of velocity! 
%  
% end
% 
% 
% 
% function dydt2 = springdamper2(t2,y2,k,c,m2)
% 
% 
% dydt2=zeros(2,1);
% dydt2(1)= y2(2);
% dydt2 = [y2(2); (((-k/m2)*y2(1) + (-c/m2)*y2(2)))];
% 
% end