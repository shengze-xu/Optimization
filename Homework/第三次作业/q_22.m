x0=[3;-1;0;1]; %第二个函数求解对应的初值 
[x,k] = BFGS_Method(@g,@Gradg,x0,epsilon); 
fprintf("对于Powell singular function使用BFGS拟牛顿法保持梯度误差在10^(-5)以下所使用的迭代次数为：%d\n",k); 
disp("所求得的极小值点为："); 
disp(x); 
disp("所求得的极小值为："); 
disp(g(x));