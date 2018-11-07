function [graph, resultGraph, criticalPathNodes] = CPM(s,t,weights)
%graph - obiekt z grafem do narysowania
%graphResult - macierz wynikow, rozmiar (iloscWezlow x 3), zawiera kolumny
%1 - najkrotszy czas wykonania
%2 - najpozniejszy czas wykonania
%3 - luz (roznica miedzy dwoma powyzej

clc
close all

graph = digraph(s,t, weights)

resultGraph = calculateEarliestTime(s,t,weights)
resultGraph = calculateLastTime(s,t, weights, resultGraph)
resultGraph = calculateLoose(s,t,weights,resultGraph)
criticalPathNodes = calculateCriticalPath(resultGraph)

%wysietlanie i zaznaczenie sciezki krytycznej
h = plot(graph, 'EdgeLabel', graph.Edges.Weight, 'Layout', 'layered');
highlight(h,criticalPathNodes,'EdgeColor','r','LineWidth',2);

end

