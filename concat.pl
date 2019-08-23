% concata(List1,List2,List3)
% List3 is the concatanition of List1 and List2
concata([],List2,List2).
concata([Item|Tail],List2,[Item|List3]):- concata(Tail,List2,List3).
