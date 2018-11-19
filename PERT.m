function [variation] = PERT(s ,t ,tc, tp, criticalNodes)
%s - poczatek zadania
%t-koniec zadania
%tc - czas optymistyczny
%tp - czas pesymistyczny
%criticalNodes - wezly sciezki krytycznej z ktorych polaczen jest liczona
%wariancja

%output:
%variation - suma wariancji na wezlach sciezki krytycznej, po
%pierwiastkowaniu

[mtc ntc] = size(tc);

[mtp ntp] = size(tp);

if(mtc == 0 || mtp == 0)
    f = msgbox('Uzupelnij tc i tp')
end

[m n] = size(criticalNodes) 
   %wyszukiwanie ktore indexy uzyc do wyciagniecia tc i tp
   for i=1:1:m-1
      
       tmpCriticalFirst = criticalNodes(i)
       tmpCriticalSecond = criticalNodes(i+1)
       
       sIndex = find(s == tmpCriticalFirst)
       tIndex = find(t == tmpCriticalSecond)
       
       index(i) = intersect(sIndex, tIndex)
       
   end
variation = ((tp(index) - tc(index))/6);
variation = variation.^2;
variation = sum(variation);
variation = sqrt(variation);
end

