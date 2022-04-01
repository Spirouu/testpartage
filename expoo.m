function [x,y,ybru,ybru2,Yb]= expoo(xmin,xmax,N,mu ,lambda, sigma, Moy, class, aff)
%exemple [X,Y,bru,Yb]= expoo(100,1 ,1,3, 3, 15)

%Expo


xmin
xmax

x=linspace(xmin,xmax,N);
y=mu*exp(lambda*x) 


[bruuni,brunor]=bruu(N,sigma, Moy);
size(bruuni);
size(brunor);
ybru=bruuni;

ybru2=brunor;

