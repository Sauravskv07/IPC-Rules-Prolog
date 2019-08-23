processFile:-read(Item),verify(Item),Item \== end_of_file,processFile.
processFile:-!.
verify([]).
:- dynamic flag/1.
verify([X|Rest]):-verifyAtom(X,Rest),verify(Rest),retract(flag(0)).
verifyAtom(X,[]).
verifyAtom(Atom,Rest):-not(flag(0)),Atom ='Bound_By_Law',member('No_Criminal',Rest),assert(flag(0)),!,nl,write('Exempted_Under_Section_76').
verifyAtom(Atom,Rest):-not(flag(0)),Atom ='judge',member('judicially',Rest),member('No_Criminal',Rest),assert(flag(0)),!,nl,write('Exempted_Under_Section_77').
verifyAtom(Atom,Rest):-not(flag(0)),Atom ='Age',assert(flag(0)),!,nl,write('Exempted_Under_Section_82').

