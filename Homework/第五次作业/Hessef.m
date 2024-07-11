function y=Hessef(x) 
J=[-2*x(1),1;0,-1]; 
y=J'*J+[-2*(x(2)-x(1)^2),0;0,0];
end