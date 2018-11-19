function [resultGraph] = calculateLastTime(s,t, to, resultGraph)
%CALCULATELASTTIME Summary of this function goes here
%   Detailed explanation goes here

[m n] = size(resultGraph);
nodes = m;
resultGraph(nodes,2) = resultGraph(nodes,1);

for i=nodes-1:-1:2
   indexes =find( s == i);
   weightsTmp = to(indexes);
   previousTime = resultGraph(t(indexes), 2);
   
   sum = previousTime.' - weightsTmp;
   value = min(sum);
   
   resultGraph(i,2) = value;
end

end

