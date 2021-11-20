clf
clear all
for(i=1:50)
    
    t=1;
    N=1000;
    h=[0:t/N:t];
    R1=normrnd(0,(t/N)^0.5,1,N);
	B1=[0,cumsum(R1)];
    mu=-3;
    sigma=1;
    %X=sigma*B1+mu*h;
    Y=exp(sigma*B1+mu*h);
    figure(6)
    plot(Y)
    hold on
end