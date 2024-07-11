x0=[-1.2;1];
% epsilon1=10^(-10);
% [x1,k1] = SteepestDescent(@f,@Gradf,x0,epsilon1,10^(-12)); 
% disp("用最速下降法求Rosenbrock函数极小值点为："); 
% disp(x1); 
% disp("用最速下降法求Rosenbrock函数极小值为："); 
% disp(f(x1)); 
% disp("用最速下降法求Rosenbrock函数极小值的迭代次数为："); 
% disp(k1);

epsilon2=5*10^-4; 
[x2,k2] = SteepestDescent(@g,@Gradg,x0,epsilon2,10^(-9)); 
disp("10^(-4)精度下用最速下降法求Beale函数极小值点为："); 
disp(x2); 
disp("10^(-4)精度下用最速下降法求Beale函数极小值为："); 
disp(g(x2)); 
disp("10^(-4)精度下用最速下降法求Beale函数极小值的迭代次数为："); 
disp(k2);

% epsilon=10^(-15); 
% [x3,k3] = Newtons(@f,@Gradf,@Hessef,x0,epsilon); 
% disp("用牛顿法求Rosenbrock函数极小值点为："); 
% disp(x3); 
% disp("用牛顿法求Rosenbrock函数极小值为："); 
% disp(f(x3)); 
% disp("用牛顿法求Rosenbrock函数极小值的迭代次数为："); 
% disp(k3); 
% 
% [x4,k4] = Newtons(@g,@Gradg,@Hesseg,x0,epsilon); 
% disp("用牛顿法求Beale函数极小值点为："); 
% disp(x4); 
% disp("用牛顿法求Beale函数极小值为："); 
% disp(g(x4)); 
% disp("用牛顿法求Beale函数极小值的迭代次数为："); 
% disp(k4);