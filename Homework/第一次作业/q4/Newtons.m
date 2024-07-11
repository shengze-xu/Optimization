function [x,k] = Newtons(f,Gradf,Hessef,x0,epsilon)%牛顿法 %f、gradf、Hessf为对应函数、梯度及Hesse矩阵，x0为初值，epsilon为精度 
    k=0;
    x=x0;%输出x为极小值点，k为迭代次数 
    while(k>=0) 
        p=-Gradf(x); 
        if(sqrt(p'*p)<=epsilon)%采用欧式度量 
            break; 
        end
        x=x+inv(Hessef(x))*p; 
        k=k+1; 
    end
end