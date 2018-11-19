function [graph, resultGraph, criticalPathNodes, overallTime] = CPM(s,t,tc, tm, tp,to)

%potrzebuje tylko to

%input:
%s - wezly poczatkowy czynnosci
%t - wezly koncowe czynnosci
%to - czasy optymalne wykonania czynnosci
%czynnosci wpisuje sie wierszami

%output
%graph - obiekt z grafem do narysowania
%graphResult - macierz wynikow, rozmiar (iloscWezlow x 3), zawiera kolumny
%1 - najkrotszy czas wykonania
%2 - najpozniejszy czas wykonania
%3 - luz (roznica miedzy dwoma powyzej

%criticalPathNodes - vector z numerami wezlow w sciezce krytycznej
%overallTime - czas wykonania sciezki krytycznej

%clc

[mto nto] = size(to);
[mtc ntc] = size(tc);
[mtm ntm] = size(tm);
[mtp ntp] = size(tp);

if(mto == 0 && nto == 0)
    if(mtc == 0 || mtm == 0 || mtp ==0)
        f = msgbox('Uzupelnij tc, tm, tp lub to');
    else
   to = calculateExpectedTime(tc, tm,tp) 
    end
end


graph = digraph(s,t, to)

resultGraph = calculateEarliestTime(s,t,to)
resultGraph = calculateLastTime(s,t, to, resultGraph)
resultGraph = calculateLoose(s,t,to,resultGraph)
criticalPathNodes = calculateCriticalPath(resultGraph)
overallTime = max(resultGraph(:,2))

h = plot(graph, 'EdgeLabel', graph.Edges.Weight, 'Layout', 'layered');
highlight(h,criticalPathNodes,'EdgeColor','r','LineWidth',2);

%wysietlanie i zaznaczenie sciezki krytycznej

%h = plot(graph, 'EdgeLabel', graph.Edges.Weight, 'Layout', 'layered');
%highlight(h,criticalPathNodes,'EdgeColor','r','LineWidth',2);

end

