dimension=[5,8,12,20]; %四种维数情况 
epsilon=10^(-6); %按要求设立的梯度精度误差 
for index=1:4 
    n=dimension(index); 
    A=zeros(n,n); 
    x0=zeros(n,1); 
    b=ones(n,1); 
    for i=1:n 
        for j=1:n 
            A(i,j)=1/(i+j-1); 
        end
    end %A为n阶Hilbert矩阵 
    [x,k] = CGMethod(A,b,x0,epsilon); 
    fprintf("对于%d阶Hilbert矩阵使用CG法保持梯度误差在10^(-6)以下所使用的迭代次数为： %d\n",n,k); 
    disp("所求得的解为："); 
    disp(x); 
end