function y = mgts(t, tau)
if t == 0
    y = 1.2;
elseif t < 0
    y = 0;
else
    y = ( 0.2 * mgts(t - tau) / (1 + (mgts(t - tau))^10) ) - (0.1 * mgts(t, tau));
end
end