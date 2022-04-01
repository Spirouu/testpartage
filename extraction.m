function [b0,b1,sigma_est,Rcarre, DB10, DB11]=extraction(x,yb) 
%**********************************************************
%** INPUT x
%** INPUT yb
%***********************************************************
%** exemple :
%** [b0,b1]=extraction([2 4 2 4 1 4 4 3 6 7],[ 2 54 6 3 7 0 9 6 5 8]) 
%***********************************************************
%** Théo Laura Philippe **%
%***********************************************************


x=x(:);
yb=yb(:);


N=length(x);
M=length(yb);
if M==N 
    %On ne détaille pas le cas ou il sont différents car pas le time
    U=[ones(N,1) x];
    Ut=transpose(U);
    A=(Ut*U);
    C=(Ut*yb);
    R = inv(A)*C;
    b0=R(1,1)
    b1=R(2,1)
end

%b1 = a ///// b0 = b  // ax+b

sigma_est = std(yb-(b0+b1*x))
SR = sqrt(sigma_est);

%Avec ecart-type
DB00 = SR*sqrt(sum(x.^2)/(M*sum(x.^2)-(sum(x)^2)))
DB01 = SR*sqrt(M/(M*sum(x.^2)-(sum(x)^2)))

%Avec variance
Matvar = sigma_est*inv(A);

DB10 = sqrt(Matvar(1,1))
DB11 = sqrt(Matvar(2,2))

yest = b0+b1*x;

SST = sum([(yb-mean(yb)).^2]);
SSE = sum([(yest-mean(yb)).^2]);
Rcarre=SSE/SST