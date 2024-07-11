function y=Gradf(x) 
sigma=1; 
A=[5,1,0,0.5;1,4,0.5,0;0,0.5,3,0;0.5,0,0,2]; 
y=x+sigma*(x'*A*x)*A*x; 
end
