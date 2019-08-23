% mother(Kid,Mother): Mother is the mother of Kid
mother(kajal, alka).
mother(damini, sunita).
mother(saurav, alka).

% father(Kid,Father): Father  is the father of Kid
father(kajal, rajesh).
father(saurav, rajesh).
father(damini, kishan).

% siblings(Brother,Sister) 
% ----bits of code-----
siblings(Brother, Sister) :- father( Brother, Father), father( Sister, Father), mother( Brother, Mother), mother( Sister, Mother),Brother =\= Sister.



