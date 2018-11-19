function [result] = calculateEarliestTime(s,t, to)

%s - poczatek zadania
%t-koniec zadania
%to - waga na polaczeniu

%[m n] = size(t)
nodes = max(t);
result = zeros(nodes, 3);
iterator =1;
sum = 0;
for i = 2:1:nodes
   %indexes = t == i
   indexes =find( t == i);
   weightsTmp = to(indexes);
   previousTime = result(s(indexes), 1);
   
   sum = weightsTmp + previousTime.';
   value = max(sum);
   %sum =sum+max(weightsTmp);
    result(i,1) = value;
    
end



end

