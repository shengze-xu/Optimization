function y=Gradf(x) 
r=[x(2)-x(1)^2;1-x(2)]; 
J=[-2*x(1),1;0,-1]; 
y=J'*r;
end 

