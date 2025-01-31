function w = mlms(s,x,mu,order,ga)
N = length(s);
w = zeros(order, N);
r = zeros(1,N);
mu1 = 0.1;
k=0;
for n = order:N
    s_n = s(n:-1:n-order+1);
     r(n) = x(n)- transpose(s_n)*w(:,n-1);
     w(:,n) = w(:,n-1)+ga*(w(:,n-1)-w(:,n-2)) + (1-ga)*mu*s_n*(r(n));  

end
end
