function [x,y,ybru,ybru2]=linee(N,a ,b, sigma, Moy, class, aff)
%exemple [X,Y,ybru,ybru2]= linee(1000,5 ,20,3, 0, 15,1)

% Paramètres
global xmin 
global xmax 


%Linéaire

x=linspace(xmin,xmax,N);
y=a*x+b;

size(x);


% Bruit

[bruuni,brunor]=bruu(N,sigma,Moy);

size(bruuni);
size(brunor);

ybru=bruuni;

ybru2=brunor;


