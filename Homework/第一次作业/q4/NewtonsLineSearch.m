function [x,k] = NewtonsLineSearch(f,Gradf,Hessef,x0,epsilon1,epsilon2)
k=0;x=x0; 
while(k>=0) 
    if(sqrt((Gradf(x))'*Gradf(x))<=epsilon1)
        break; 
    end
    p=-inv(Hessef(x))*Gradf(x); 
    a0=2;h0=0.3;
    [a,b] = Range(f,a0,h0,x,p);
    x=x+Minimum(f,a,b,x,p,epsilon2)*p; 
    k=k+1; 
end
end
