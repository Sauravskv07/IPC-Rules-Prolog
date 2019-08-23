% cost(Item,Cost)
cost(cornflakes, 230).
cost(cocacola, 210).
cost(chocolate, 250).
cost(crisps, 190).

% total_cost([], 0).                % trivial branch
% total_cost([Item|Rest], Cost) :-  % recursive branch
    % cost(Item, ItemCost),
   % total_cost(Rest, CostOfRest),
  %  Cost is ItemCost + CostOfRest.


total_cost([Item|Rest], Cost) :-
    total_cost(Rest, CostOfRest),
    cost(Item, ItemCost),
    Cost is ItemCost + CostOfRest.

