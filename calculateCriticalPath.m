function [criticalPathNodes] = calculateCriticalPath(resultGraph)
%CALCULATECRITICALPATH Summary of this function goes here
%   Detailed explanation goes here
criticalPathNodes = find(resultGraph(:,3) == 0);
end

