function [] = Q1()
%Q1 Summary of this function goes here
%   Detailed explanation goes here

p1 = 0: 0.01: 1;

s1 = zeros(1, 10000000);
s2 = zeros(1, 10000000);
s3 = zeros(1, 10000000);
%p2 = 0: 0.01: 1;
index = 1;

for i = 1 : length(p1)
    comp = 1 - p1(i);
    p2 = 0: 0.01: comp;
    for j = 1 : length(p2)
        p3 = comp - p2(j);
        s1(index) = ( p1(i)*(1-p2(j))*(1-p3));
        s2(index) = ( p2(j)*(1-p1(i))*(1-p3));
        s3(index) = (p3*(1-p2(j))*(1-p1(i)));
        index = index + 1;
    end
end

s1 = s1(1: index -1);
s2 = s2(1: index -1);
s3 = s3(1: index -1);

plot3(s1, s2, s3, 'o');
    
    
    
    
%     
% s1 = p1(1-p2);
% s2 = p2(1-p1);
% s1 = 0: 1;
% s2 = (1- sqrt(s1)).^2;
% 
% %p1 + p2 = 1;
% 
% plot(s1, s2);




end

