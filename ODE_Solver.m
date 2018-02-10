clear all

t = [0 50];
initial_conditions = [10 , 0];

[t,y] = ode45(@myode,t,initial_conditions);
plot(t,y(:,1),'black')
%legend('{displacement [m],velocity [m/s]}')
xlabel('Time [s]')

function myoutput = myode(t,y)
m1=725839;
C1=1200000;
C2=1000;
k1=5E06;
k2=1000;
ro=1000;
V=725.834;
g=9.81;


myoutput = [y(2); ((-(C1+C2)/m1*y(2)))+((-(k1+k2)/m1*y(1))) ]
end