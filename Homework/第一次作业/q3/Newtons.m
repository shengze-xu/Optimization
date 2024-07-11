function [x,k] = Newtons(f,Gradf,Hessef,x0,epsilon)
    k=0;
    x=x0;
    while(0<=k) 
        p=-Gradf(x); 
        if(sqrt(p'*p)<=epsilon)
            break; 
        end
        x=x+inv(Hessef(x))*p; 
        k=k+1; 
    end
end