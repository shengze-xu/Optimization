function y=Hessef(x) 
sigma=1; 
A=[5,1,0,0.5;1,4,0.5,0;0,0.5,3,0;0.5,0,0,2]; 
y=eye(4)+2*sigma*A*x*x'*A'+sigma*sigma*(x'*A*x)*A; 
end

