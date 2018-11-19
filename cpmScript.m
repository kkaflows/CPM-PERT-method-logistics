clear
close all

%resultGraph (Nodes x 3)
%s - start of task
%t - end of task
%weights - time between s and t

s = [ 1 2 2 3 5 4 4 6 7 8];
t = [ 2 3 4 5 7 7 6 7 8 9 ];
weights = [3 4 6 7 1 2 3 4 1 2];

s = [ 1 1 2 2 3 3 4 5 5 6 7];
t = [ 2 3 3 5 4 5 6 6 7 7 8];
weights = [6 10 6 12 5 8 8 7 8 6 7];
                
%graphMatrix = prepareGraph(taskOrder)


%G = digraph(graphMatrix);
G = digraph(s,t, weights)

resultGraph = calculateEarliestTime(s,t,weights)
resultGraph = calculateLastTime(s,t, weights, resultGraph)
resultGraph = calculateLoose(s,t,weights,resultGraph)
criticalPathNodes = calculateCriticalPath(resultGraph)

h = plot(G, 'EdgeLabel', G.Edges.Weight, 'Layout', 'layered');
highlight(h,criticalPathNodes,'EdgeColor','r','LineWidth',2);
