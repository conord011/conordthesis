dt = 0.01;
x = 10:dt:(2*pi);
mydisplacement = sin(x);
vel = diff(mydisplacement)./dt;
acc = diff(vel)./dt;
h = plot(x,mydisplacement,x(1:end-1),vel,x(1:end-2),acc);
legend('displacement','velocity','acceleration')