% Judge(X)
% True if X is a registered Judge
% Judges Registered under My Government are Ram_Manohar_Lal, Radhe_Shyaam, Bansi_Thakur, Sri_Ranjani.
:- dynamic judge/1.
judge('Ram_Manohar_Lal').
judge('Radhe_Shyaam').
judge('Bansi_Thakur').
judge('Sri_Ranjani').
addJudge(X):- asserta(X).

verdict(Criminal):-write('Is_the_person_of_unsound_mind'),nl,read(Z),Z,nl,write('Exception_under_Section_84'),!.
verdict(Criminal):- judge(Criminal),write('Was_He_Acting_Judicially'),nl,read(Z),Z,write(Criminal),tab(5),write('Exception_By_Section_77'),!.
verdict(Criminal):-write('What_is_the_age_of_the_criminal'),nl,read(X),X<7,write('Exception_By_Section_82'),!.
