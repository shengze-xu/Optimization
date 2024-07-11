x0=unifrnd(-1000,1000,2,1); %生成取值在[-1000,1000]内的均匀分布的随机初始值 
epsilon=10^(-12);%精度为10^(-12) 
[x,k] = NewtonsLineSearch(@f,@Gradf,@Hessef,x0,epsilon,epsilon); %带线搜索牛顿法函数求解 
disp("随机选定的初值："); 
disp(x0); 
disp("带线搜索牛顿法得到的函数极小值点："); 
disp(x); 
disp("带线搜索牛顿法得到的函数极小值："); 
disp(f(x)); 
disp("迭代次数为："); 
disp(k);