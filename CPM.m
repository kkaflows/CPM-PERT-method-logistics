function [graph, resultGraph, criticalPathNodes] = CPM(s,t,to)

%potrzebuje tylko to

%input:
%s - wezly poczatkowy czynnosci
%t - wezly koncowe czynnosci
%to - czasy optymalne wykonania czynnosci
%czynnosci wpisuje sie wierszami


%graph - obiekt z grafem do narysowania
%graphResult - macierz wynikow, rozmiar (iloscWezlow x 3), zawiera kolumny
%1 - najkrotszy czas wykonania
%2 - najpozniejszy czas wykonania
%3 - luz (roznica miedzy dwoma powyzej

%clc


graph = digraph(s,t, to)

resultGraph = calculateEarliestTime(s,t,to)
resultGraph = calculateLastTime(s,t, to, resultGraph)
resultGraph = calculateLoose(s,t,to,resultGraph)
criticalPathNodes = calculateCriticalPath(resultGraph)

h = plot(graph, 'EdgeLabel', graph.Edges.Weight, 'Layout', 'layered');
highlight(h,criticalPathNodes,'EdgeColor','r','LineWidth',2);

%wysietlanie i zaznaczenie sciezki krytycznej

%h = plot(graph, 'EdgeLabel', graph.Edges.Weight, 'Layout', 'layered');
%highlight(h,criticalPathNodes,'EdgeColor','r','LineWidth',2);

end

