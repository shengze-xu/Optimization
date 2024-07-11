function y=f(x) 
    sigma=1; 
    A=[5,1,0,0.5;1,4,0.5,0;0,0.5,3,0;0.5,0,0,2]; 
    y=0.5*x'*x+0.25*sigma*(x'*A*x)^2; 
end