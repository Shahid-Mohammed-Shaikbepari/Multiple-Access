%sqrt(T/sigma)*(1-S1-S2) = 2*sqrt(S1*S2)
syms s1 s2;
s1 = 0: 0.01: 1;
T_over_sigma = [10, 100, 1000];
s2_ = zeros(1, length(s1));
s2_slotted_aloha = zeros(1, length(s1));
for j =  1: 3
    for i = 1:length(s1)
        condition = sqrt(T_over_sigma(j)) * (1-s1(i) -s2) == 2*sqrt(s1(i)*s2);
        s2_(i) =  solve(condition, s2);
    end
    plot(s1, s2_);
    hold on;
end

for i = 1 : length(s1)
    s2_slotted_aloha(i) = (1-sqrt(s1(i)))^2;
end
plot (s1, s2_slotted_aloha);
hold on;
legend('T/\sigma = 10', 'T/\sigma = 100', 'T/\sigma = 1000', 'slotted Aloha', 'FontSize', 18);
title('Saturation Throughput region for pi-CSMA and pi-slotted Aloha', 'FontSize', 18)  ;
xlabel('S1', 'FontSize', 18);
ylabel('S2' ,'FontSize', 18);