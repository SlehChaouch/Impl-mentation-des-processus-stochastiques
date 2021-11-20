function C=Cov(t,s,H)
    C=0.5*(t^(2*H)+s^(2*H)-abs(t-s)^(2*H));
end