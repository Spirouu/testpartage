function [x,y,ybru,ybru2]= puissance(xmin,xmax,N,a ,b, sigma, Moy, class, aff)
%exemple [X,Y,bru,Yb]= expoo(100,1 ,1,3, 3, 15)




xmin
xmax

x=linspace(xmin,xmax,N);
y=b*x.^a 


[bruuni,brunor]=bruu(N,sigma, Moy);
size(bruuni);
size(brunor);
ybru=bruuni;

ybru2=brunor;

