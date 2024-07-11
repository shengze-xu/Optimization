function [x,k] = SteepestDescent(f,Gradf,x0,epsilon1,epsilon2)
    x=x0;k=0;
    while(0<=k)
        p=-Gradf(x);   
        if(sqrt(p'*p)<=epsilon1)
            break; 
        end
        a0=2;h0=0.5;
        [a,b] = Range(f,a0,h0,x,p);
        x=x+Minimum(f,a,b,x,p,epsilon2)*p; 
        k=k+1; 
    end
end