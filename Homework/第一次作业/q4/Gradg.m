function y=Gradg(x) 
sigma=10^4; 
A=[5,1,0,0.5;1,4,0.5,0;0,0.5,3,0;0.5,0,0,2]; 
y=x+sigma*(x'*A*x)*A*x; 
end