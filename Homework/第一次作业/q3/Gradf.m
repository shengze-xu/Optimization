function y=Gradf(x) 
    y=zeros(2,1); 
    y(1)=200*(x(1)^2-x(2))*2*x(1)+2*(x(1)-1); 
    y(2)=200*(x(2)-x(1)^2); 
end 

