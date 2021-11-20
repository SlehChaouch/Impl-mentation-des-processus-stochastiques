clf 
clear all
t=1;
n=500;
H=0.2;
h=[0:t/n:t];
for k=1:length(h)
    for l=1:length(h)
       M(k,l)=Cov(h(k),h(l),H);
    end
end
R = mvnrnd(zeros(1,length(M)),M,1);
figure(1)
plot(R)
title(sprintf("Mouvement brownien fractionnaire pour H=%0.1f",H))
hold on