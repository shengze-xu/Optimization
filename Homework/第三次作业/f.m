function y=f(x) 
n=length(x); 
y=0; 
for i=1:n-1 
    y=y+100*(x(i+1)-x(i)^2)^2+(1-x(i))^2; 
end
end