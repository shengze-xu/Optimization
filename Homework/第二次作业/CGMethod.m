function [x,k] = CGMethod(A,b,x0,epsilon)
k=0;x=x0;
r=A*x-b;p=-r; 
while(k>=0) 
    if(sqrt(r'*r)<=epsilon) 
        break; 
    end
    alpha=-r'*p/(p'*A*p); 
    x=x+alpha*p; 
    r0=r; 
    r=r+alpha*A*p; 
    beta=r'*r/(r0'*r0); 
    p=-r+beta*p; 
    k=k+1; 
end
end