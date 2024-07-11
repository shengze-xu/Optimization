function alpha=zoom(a_low,a_high,f,gradf,x,p)
alow=a_low;ahigh=a_high;c1=0.01;c2=0.4;
while alow>=0 
    alpha=alow+1/2*(ahigh-alow)^2*gradf(x+alow*p)'*p/(f(x+alow*p)-f(x+ahigh*p)+ (ahigh-alow)*gradf(x+alow*p)'*p); 
    if f(x+alpha*p)>f(x)+c1*alpha*gradf(x)'*p | f(x+alpha*p)>=f(x+alow*p) 
        ahigh=alpha; 
    else
        if abs(gradf(x+alpha*p)'*p)<=-c2*gradf(x)'*p 
            break; 
        end
        if (gradf(x+alpha*p)'*p)*(ahigh-alow)>=0
            ahigh=alow; 
        end
        alow=alpha;
    end
end
end