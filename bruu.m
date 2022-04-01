function [bruuni,brunor]= bruu(N,sigma,Moy)



%Bruit uniforme
bruuni=sigma*rand(1,N)+Moy;


%Bruit normal
brunor=sigma*randn(1,N)+Moy;


