function [x,k] = BFGS_Method(f,Gradf,x0,epsilon)
k=0; x=x0;
n=length(x0); H=eye(n)/sqrt(Gradf(x)'*Gradf(x));
while sqrt(Gradf(x)'*Gradf(x))>epsilon 
    p=-H*Gradf(x); 
    alpha=Wolfe(f,Gradf,x,p,1000); 
    y=Gradf(x+alpha*p)-Gradf(x); 
    x=x+alpha*p; 
    s=alpha*p; 
    H=(eye(n)-s*y'/(s'*y))*H*(eye(n)-y*s'/(s'*y))+s*s'/(s'*y); 
    k=k+1; 
end
end