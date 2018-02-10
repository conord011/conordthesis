function z = func(t,y)

m = 87.8;           %cylinder mass
r = 3;              %cylinder radius
Sc = pi*r^2;        %cylinder waterplane area
m0 = 2.03;          %cylinder added mass
ro = 1;             

z = (-(ro*g*Sc)*y)-((4/3)*ro*Cd*Sc*Xb)*(y)/(m+m0);