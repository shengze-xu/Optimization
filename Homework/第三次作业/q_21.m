format longE
dimension=[6,8,10];%关于extended Rosenbrock function的三种维数情况 
epsilon=10^(-5); %按要求设立的梯度精度误差 
for j=1:3 
    n=dimension(j); 
    x0=zeros(n,1); 
    for k=1:n/2 
        x0(2*k-1)=-1.2; 
        x0(2*k)=1;
    end %按要求设立初值 
    [x,k] = BFGS_Method(@f,@Gradf,x0,epsilon); 
    fprintf("对于%d个变元的extended Rosenbrock function使用BFGS_Method拟牛顿法保持梯度误差在 10^(-5)以下所使用的迭代次数为：%d\n",n,k); 
    disp("所求得的极小值点为："); 
    disp(x); 
    disp("所求得的极小值为："); 
    disp(f(x)); 
end