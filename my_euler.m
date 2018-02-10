clear all

function euler(func,y0,dt,t0,tf)

t=t0:dt:tf;             %time interval

y(1)=y0;                %setting intial y value

%Euler method loop
for n = 1:lenght(t)-1  
    
    y(n+1) = y(n)+dt*(feval(funct,t(n),y(n)));
    
end



plot(t,y)
end