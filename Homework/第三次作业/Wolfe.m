function alpha=Wolfe(f,gradf,x,p,max)
a0=0;a1=1;amax=10;c1=0.01;c2=0.4;i=1;
while i<=max
    if f(x+a1*p)>f(x)+c1*a1*gradf(x)'*p |(f(x+a1*p)>f(x+a0*p) & i>1)
        alpha=zoom(a0,a1,f,gradf,x,p); 
        break; 
    end
    if abs(gradf(x+a1*p)'*p)<=-c2*gradf(x)'*p 
        alpha=a1; 
        break; 
    end
    if gradf(x+a1*p)'*p>=0 | gradf(x+a1*p)'*p<c2*gradf(x)'*p
        alpha=zoom(a0,a1,f,gradf,x,p); 
        break; 
    end
    a0=a1;
    if a0==amax 
        alpha=a0; 
        break; 
    end
    a1=2*a1;
    if(a1>amax) 
        a1=amax; 
    end
    i=i+1;
end
end