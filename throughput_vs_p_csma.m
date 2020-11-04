p = 0: 0.01: 1;
s = zeros(1, length(p));
nr = zeros(1, length(p));
dr = zeros(1, length(p));
for i = 1 : length(p)
    nr(i) = 1000*p(i)*(1-p(i));
    dr(i ) = (1-p(i))^2 + 1000*p(i)*(1-p(i)) + ( 1-(1-p(i))^2 - 2*p(i)*(1-p(i)) )*500 ;
% s(i) = (1000*p(i)*(1-p(i)))/(  (1-p(i))^2 + 1000*p(i)*(1-p(i)) + ( 1-(1-p(i))^2 - 1000*p(i)*(1-p(i)) )   );
s(i) = nr(i)/dr(i);
end

plot(p, s);
