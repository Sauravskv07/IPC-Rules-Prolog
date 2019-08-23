% duplicate(List1,List2)
% List1 is the list entered and list2 is the one without duplicates
duplicate([],[]).
duplicate([Item|Rest],List2):- member(Item,Rest),duplicate(Rest,List2).
duplicate([Item|Rest],[Item|List2]):- not(member(Item,Rest)),duplicate(Rest,List2).
