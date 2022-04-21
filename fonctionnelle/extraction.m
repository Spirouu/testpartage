function [b0,b1]=extraction(x,yb) 
%**********************************************************
%** INPUT x
%** INPUT yb
%***********************************************************
%** exemple :
%** [b0,b1]=extraction([2 4 2 4 1 4 4 3 6 7],[ 2 54 6 3 7 0 9 6 5 8],10) 
%***********************************************************
%** Théo Laura Philippe **%
%***********************************************************


x=x(:)
yb=yb(:)


N=length(x);
M=length(yb);
if M==N 
    %On ne détaille pas le cas ou il sont différents car pas le time
    U=[ones(N,1) x]
    Ut=transpose(U)
    A=(Ut*U)
    C=(Ut*yb)
    x = inv(A)*C
    b0=x(1,1)
    b1=x(2,1)
end





end