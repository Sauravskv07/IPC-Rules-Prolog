% FLAG DENOTES WHETHER ANY EXEMPTION HAS BEEN ENCOUNTERED OR NOT
:- dynamic flag/1.

% TO PROCESS A FILE JUST USE THE PREDICATE IN THE QUERY WITH THE FILE NAME 
% IF IN SAME FOLDER NO NEED OF USING QUOTES
% IF NOT IN SAME FOLDER QUOTES WHILE SPECIFYING THE FILE NAME SHOULD BE THERE

processFile(FileName):-flag(0),retract(flag(0)),see(FileName),read(X),verify(X).
processFile(FileName):-not(flag(0)),see(FileName),read(X),verify(X).

% TAKING ZERO AGED PERSON TO BE IMPLICITLY AN EXCEPTION OF ALL CRIMES
small(0).

% TAKING THE AGE OF MINOR TO BE EXCLUDED FROM ALL CRIMES
ageminor(7).

% TAKING THE UPPER LIMIT AND LOWER LIMIT OF A MINOR WHO IS IMMATURE AND EXLUDED FROM ALL CRIMES
agemajor1(6).
agemajor2(13).


% INTIALIZATION OF EXCEPTION OF DIFFERENT VARIABLE NUMBERS


ruleexmp(ha,ha).
ruleexmp(ha,ha,ha).
ruleexmp(ha,ha,ha,ha).
ruleexmp(ha,ha,ha,ha,ha).
ruleexmp(ha,ha,ha,ha,ha,ha).
ruleexmp(ha,ha,ha,ha,ha,ha,ha).
ruleexmp(ha,ha,ha,ha,ha,ha,ha,ha).
ruleexmp(ha,ha,ha,ha,ha,ha,ha,ha,ha).
ruleexmp(ha,ha,ha,ha,ha,ha,ha,ha,ha,ha).
ruleexmp(ha,ha,ha,ha,ha,ha,ha,ha,ha,ha,ha).
ruleexmp(ha,ha,ha,ha,ha,ha,ha,ha,ha,ha,ha,ha).


% FACTS CONTAINTING ALL THE EXCEPTION
% rule(var X..., CRIME_UNDER, REASON): CONTAINS THE KEYWORDS, ACTS, REASON FOR EXCEPTION

ruleexmp(bound,law,no,criminal,intention,exemption_under_section_76,'Act done by a person bound, or by mistake of fact believing himself bound, by law.').
ruleexmp(judge,judicially,no,criminal,intention,exemption_under_section_77,'Act of Judge when acting judicially.').
ruleexmp(judicially,judgement,valid,bound,law,exemption_under_section_78,'Act done pursuant to the judgment or order of Court.').
ruleexmp(bound,law,no,criminal,intention,exemption_under_section_79,'Act done by a person justified, or by mistake of fact believing himself justified, by law.').
ruleexmp(no,criminal,intention,lawful,accident,exemption_under_section_80,'Accident in doing a lawful act.').
ruleexmp(no,criminal,intention,harm,prevent,exemption_under_section_81,'Act likely to cause harm, but done without criminal intent, and to prevent other harm.').
ruleexmp(child,age,exemption_under_section_82,'Act of a child under seven years of age.').
ruleexmp(immature,age,exemption_under_section_83,'Act of a child above seven and under twelve of immature understanding.').
ruleexmp(unsound,mind,exemption_under_section_84,'Act of a person of unsound mind.').
ruleexmp(incapable,judgement,intoxication,against,will,exemption_under_section_85,'Act of a person incapable of judgment by reason of intoxication caused against his will.').
ruleexmp(no,intention,intoxication,against,will,exemption_under_section_86,'Offence requiring a particular intent or knowledge committed by one who is intoxicated.').
ruleexmp(no,knowledge,intoxication,against,will,exemption_under_section_86,'Offence requiring a particular intent or knowledge committed by one who is intoxicated.').
ruleexmp(consent,no,criminal,intention,likely,death,hurt,exemption_under_section_87,'Act not intended and not known to be likely to cause death or grievous hurt, done by consent.').
ruleexmp(benefit,no,criminal,intention,consent,exemption_under_section_88,'Act not intended to cause death, done by consent in good faith for person benefit.').
ruleexmp(benefit,child,consent,guardian,exemption_under_section_89,'Act done in good faith for benefit of child or insane person, by or by consent of guardian.').
ruleexmp(benefit,insane,consent,guardian,exemption_under_section_89,'Act done in good faith for benefit of child or insane person, by or by consent of guardian.').
ruleexmp(consent,fear,misconception,child,exemption_under_section_90,'Consent known to be given under fear or misconception.
Consent of insane person.
Consent of child.').
ruleexmp(consent,fear,misconception,insane,exemption_under_section_90,'Consent known to be given under fear or misconception.
Consent of insane person.
Consent of child.').
ruleexmp(consent,benefit,without,exemption_under_section_92,'Act done in good faith for benefit of a person without consent.').
ruleexmp(communication,good,faith,exemption_under_section_93,'Communication made in good faith.').
ruleexmp(compel,threat,exemption_under_section_94,'Act to which a person is compelled by threats.').
ruleexmp(slight,harm,exemption_under_section_95,'Act causing slight harm.').
ruleexmp(defence,exemption_under_section_96,'Things done in private defence.').
ruleexmp(defence,body,property,exemption_under_section_97,'Right of private defence of the body and of property.').
ruleexmp(defence,against,unsound,mind,exemption_under_section_98,'Right of private defence against the act of a person of unsound mind. etc.').
ruleexmp(public,servant,good,faith,no_exemption_under_section_99,'Acts against which there is no right of private defence.Extent to which the right may be exercised.').
ruleexmp(defence,death,assault,exemption_under_100,'When the right of private defence of the body extends to causing death .').
ruleexmp(defence,assault,hurt,exemption_under_100,'When the right of private defence of the body extends to causing death .').
ruleexmp(defence,assault,rape,exemption_under_100,'When the right of private defence of the body extends to causing death .').
ruleexmp(defence,assault,unnatural,lust,exemption_under_100,'When the right of private defence of the body extends to causing death .').
ruleexmp(defence,assault,kidnap,exemption_under_100,'When the right of private defence of the body extends to causing death .').
ruleexmp(defence,assault,confine,exemption_under_100,'When the right of private defence of the body extends to causing death .').
ruleexmp(defence,assault,acid,attack,exemption_under_100,'When the right of private defence of the body extends to causing death .').
ruleexmp(defence,attack,body,after,commencement,threat,exemption_under_section_102,'When the right of private defence of property extends to causing death.').
ruleexmp(defence,property,death,robery,exemption_under_section_103,'When the right of private defence of property extends to causing death.').
ruleexmp(defence,property,death,house-breaking,night,exemption_under_section_103,'When the right of private defence of property extends to causing death.').
ruleexmp(defence,property,death,fire,mischief,exemption_under_section_103,'When the right of private defence of property extends to causing death.').
ruleexmp(defence,property,death,theft,exemption_under_section_103,'When the right of private defence of property extends to causing death.').
ruleexmp(defence,property,death,robery,exemption_under_section_103,'When the right of private defence of property extends to causing death.').
ruleexmp(defence,property,mischief,exemption_under_section_104,'When such right extends to causing any harm other than death.').
ruleexmp(defence,property,theft,exemption_under_section_104,'When such right extends to causing any harm other than death.').
ruleexmp(defence,attack,property,after,commencement,threat,exemption_under_section_105,'Commencement and continuance of the right of private defence of property').
ruleexmp(defence,assault,innocent,harm,exemption_under_section_106,'Right of private defence against deadly assault when there is risk of harm to innocent person.').

% INTIALIZATION OF RULES OF DIFFERENT VARIABLE NUMBERS

rule(ha,ha).
rule(ha,ha,ha).
rule(ha,ha,ha,ha).
rule(ha,ha,ha,ha,ha).
rule(ha,ha,ha,ha,ha,ha).
rule(ha,ha,ha,ha,ha,ha,ha).
rule(ha,ha,ha,ha,ha,ha,ha,ha).
rule(ha,ha,ha,ha,ha,ha,ha,ha,ha).
rule(ha,ha,ha,ha,ha,ha,ha,ha,ha,ha).
rule(ha,ha,ha,ha,ha,ha,ha,ha,ha,ha,ha).
rule(ha,ha,ha,ha,ha,ha,ha,ha,ha,ha,ha,ha).
rule(ha,ha,ha,ha,ha,ha,ha,ha,ha,ha,ha,ha,ha).

% FACTS CONTAINTING ALL THE RULES
% rule(var X..., CRIME_UNDER, PUNISHMENT, REASON): CONTAINS THE KEYWORDS, ACTS, PUNISHMENT AND THE REASON

rule(abetment,crime_under_section_107,'','Abetment of a thing.').
rule(abettor,crime_under_section_108,'','Abettor').
rule(abetment,committed,punishement_under_section_109,'Punishment:  punishment is same as the punishment for offence','Punishment of a abetment if the act abetted is committed in consequence and when no express
provision is made for its punishment.').
rule(abetment,different,intention,crime_under_section_110,'Punishment:	punished with the punishment provided for
the offence','Punishment of abetment if person abetted does act with different intention from that of abet tor.').
rule(abetment,different,act,crime_under_section_111,'Punishment:  the abettor is liable for the act done, in the same manner and to the same extent as if he had directly abetted it','Liability of abettor when one act abetted and different act done.').
rule(abettor,act,done,abetted,crime_under_section_112,'Punishment:	abettor is liable to punishment for each of the offences.','Abettor when liable to cumulative punishment for act abetted and for act done.').
rule(abettor,effect,different,intention,crime_under_section_113,'Punishment:	abettor is liable for the effect caused, in the same manner and to the same extent as if he had abetted the act with the intention of causing that effect','Liability of abettor for an effect caused by the act abetted different from that intended by the abettor.').
rule(abettor,present,crime_under_section_114,'Punishment:	Same Punishment as if he has committed the offence','Abettor present when offence is committed.').
rule(abetment,death,imprisonment,not-committed,crime_under_section_115,'Punishment:	punished with imprisonment of either description for a term which may extend to seven years, and shall also be liable to fine','Abetment of offence punishable with death or imprisonment for life').
rule(abetment,imprisonment,not-committed,crime_under_section_116,'Punishment:	punished with imprisonment of any description provided for that offence for a term which may extend to one-fourth part of the longest term provided for that offence; or with such fine as is provided for that offence, or with both','Abetment of offence punishable with imprisonment. — if offence be not committed.
if abettor or person abetted be a public servant whose duty it is to prevent offence').
rule(abetment,public,crowd,crime_under_section_117,'Punishment:		punished with imprisonment of either description for a term which may extend to three years, or with fine, or with both.','Abetting commission of offence by the public or by more than ten persons.').
rule(hiding,punishable,death,committed,crime_under_section_118,'Punishment:	punished with imprisonment of either description for a term which may extend to seven years','Concealing design to commit offence punishable with death or imprisonment for life.').
rule(hiding,punishable,imprisonment,committed,crime_under_section_118,'Punishment:	punished with imprisonment of either description for a term which may extend to seven years','Concealing design to commit offence punishable with death or imprisonment for life.').
rule(hiding,not-committed,death,crime_under_section_118,'Punishment:	with imprisonment of either description, for a term which may extend to three years','Concealing design to commit offence punishable with death or imprisonment for life.').
rule(hiding,not-committed,imprisonment,crime_under_section_118,'Punishment:	with imprisonment of either description, for a term which may extend to three years','Concealing design to commit offence punishable with death or imprisonment for life.').
rule(public,servant,hiding,duty,prevent,committed,crime_under_section_119,'Punishment:	punished with imprisonment of any description provided for the offence, for a term which may extend to one-half of the longest term of such imprisonment, or with such fine as is provided for that offence, or with both','Public servant concealing design to commit offence which it is his duty to prevent.').
rule(public,servant,hiding,duty,prevent,death,crime_under_section_119,'Punishment:	imprisonment of either description for a term which may extend to ten years','Public servant concealing design to commit offence which it is his duty to prevent.').
rule(public,servant,hiding,duty,prevent,imprisonment,crime_under_section_119,'Punishment:	imprisonment of either description for a term which may extend to ten years','Public servant concealing design to commit offence which it is his duty to prevent.').
rule(public,servant,hiding,duty,prevent,committed,crime_under_section_119,'Punishment:	punished with
imprisonment of any description provided for the offence for a term which may extend to one-fourth part
of the longest term of such imprisonment or with such fine as is provided for the offence, or with both','Public servant concealing design to commit offence which it is his duty to prevent.').
rule(hiding,punishable,commited,imprisonment,crime_under_section_120,'Punishment:   punished with imprisonment of the description provided for the offence, for a term which may extend to one-fourth','Concealing design to commit offence punishable with imprisonment.').
rule(hiding,punishable,not-commited,imprisonment,crime_under_section_120,'Punishment:    to one-eight, of the longest term of such imprisonment, or with such fine as is provided for the offence, or with both','Concealing design to commit offence punishable with imprisonment.').
rule(waging,war,government,india,crime_under_section_121,'Punishment:	punished with death, or [imprisonment for life] [and shall also be liable to fine]','Waging, or attempting to wage war, or abetting waging of war, against the Government of India.').
rule(attempting,wage,war,government,india,crime_under_section_121,'Punishment:	punished with death, or [imprisonment for life] [and shall also be liable to fine]','Waging, or attempting to wage war, or abetting waging of war, against the Government of India.').
rule(abetting,wage,war,government,india,crime_under_section_121,'Punishment:	punished with death, or [imprisonment for life] [and shall also be liable to fine]','Waging, or attempting to wage war, or abetting waging of war, against the Government of India.').
rule(arms,intention,wage,war,government,india,crime_under_section_122,'Punishment:    punished with [imprisonment for life] or imprisonment of either description for a term not exceeding ten years,  [and shall also be liable to fine]','Collecting arms, etc., with intention of waging war against the Government of India.').
rule(concealing,intent,wage,war,crime_under_section_123,'Punishment:	punished with imprisonment of either description for a term which may extend to ten years, and shall also be liable to fine','Concealing with intent to facilitate design to wage war.').
rule(assault,president,crime_under_section_124,'Punishment:	punished with imprisonment of either description for a term which may extend to seven years, and shall also be liable to fine','Assaulting President. Governor, etc., with intent to compel or restrain the exercise of any lawful power.').
rule(assault,governor,crime_under_section_124,'Punishment:	punished with imprisonment of either description for a term which may extend to seven years, and shall also be liable to fine','Assaulting President. Governor, etc., with intent to compel or restrain the exercise of any lawful power.').
rule(wage,war,against,asiatic,alliance,government,crime_under_section_125,'Punishment:    punished
with  [imprisonment for life], to which fine may be added, or with imprisonment of either description for
a term which may extend to seven years, to which fine may be added, or with fine','Waging war against any Asiatic power in alliance with the Government of India.').
rule(attack,territory,peace,government,crime_under_section_126,'Punishment:	punished with imprisonment of
either description for a term which may extend to seven years, and shall also be liable to fine and to
forfeiture of any property used or intended to be used in committing such depredation, or acquired by
such depredation','Committing depredation on territories of power at peace with the Government of India').
rule(property,war,attack,crime_under_section_127,'Punishment:	punished with imprisonment of either description
for a term which may extend to seven years, and shall also be liable to fine and to forfeiture of the
property so received','Receiving property taken by war or depredation mentioned in sections 125 and 126.').
rule(public,servant,voluntarily,prisoner,escape,crime_under_section_128,'Punishment:	punished with
[imprisonment for life], or imprisonment of either description for a term which may extend to ten years,
and shall also be liable to fine','Public servant voluntarily allowing prisoner of State or war to escape.').
rule(public,servant,negligently,prisoner,escape,crime_under_section_129,'Punishment:	punished with
simple imprisonment for a term which may extend to three years, and shall also be liable to fine','Public servant negligently suffering such prisoner to escape.').
rule(aiding,escape,prisoner,war,crime_under_section_130,'Punishment:	punished with
[imprisonment for life], or with imprisonment of either description for a term which may extend to ten
years, and shall also be liable to fine','Aiding escape of, rescuing or harbouring such prisoner.').
rule(resquing,prisoner,war,crime_under_section_130,'Punishment:	punished with [imprisonment for life], or with imprisonment of either description for a term which may extend to ten years, and shall also be liable to fine','Aiding escape of, rescuing or harbouring such prisoner.').
rule(harbouring,prisoner,war,crime_under_section_130,'Punishment:	punished with [imprisonment for life], or with imprisonment of either description for a term which may extend to ten years, and shall also be liable to fine','Aiding escape of, rescuing or harbouring such prisoner.').
rule(aiding,escape,prisoner,government,crime_under_section_130,'Punishment:	punished with [imprisonment for life], or with imprisonment of either description for a term which may extend to ten years, and shall also be liable to fine','Aiding escape of, rescuing or harbouring such prisoner.').
rule(resquing,prisoner,government,crime_under_section_130,'Punishment:	punished with [imprisonment for life], or with imprisonment of either description for a term which may extend to ten years, and shall also be liable to fine','Aiding escape of, rescuing or harbouring such prisoner.').
rule(harbouring,prisoner,government,crime_under_section_130,'Punishment:	punished with
[imprisonment for life], or with imprisonment of either description for a term which may extend to ten
years, and shall also be liable to fine','Aiding escape of, rescuing or harbouring such prisoner.').
rule(abetting,mutiny,soldier,crime_under_section_131,'Punishment:	punished with [imprisonment for life], or with imprisonment of either description for a term which may extend to ten years, and shall also be liable to fine','Abetting mutiny, or attempting to seduce a soldier, sailor or airman from his duty.').
rule(abetting,mutiny,sailor,crime_under_section_131,'Punishment:	punished with [imprisonment for life], or with imprisonment of either description for a term which may extend to ten years, and shall also be liable to fine','Abetting mutiny, or attempting to seduce a soldier, sailor or airman from his duty.').
rule(abeting,mutiny,airman,crime_under_section_131,'Punishment:	punished with [imprisonment for life], or with imprisonment of either description for a term which may extend to ten years, and shall also be liable to fine','Abetting mutiny, or attempting to seduce a soldier, sailor or airman from his duty.').
rule(attempting,seduce,soldier,crime_under_section_131,'Punishment:	punished with [imprisonment for life], or with imprisonment of either description for a term which may extend to ten years, and shall also be liable to fine','Abetting mutiny, or attempting to seduce a soldier, sailor or airman from his duty.').
rule(attempting,seduce,sailor,crime_under_section_131,'Punishment:	punished with [imprisonment for life], or with imprisonment of either description for a term which may extend to ten years, and shall also be liable to fine','Abetting mutiny, or attempting to seduce a soldier, sailor or airman from his duty.').
rule(attempting,seduce,airman,crime_under_section_131,'Punishment:	punished with [imprisonment for life], or with imprisonment of either description for a term which may extend to ten years, and shall also be liable to fine','Abetting mutiny, or attempting to seduce a soldier, sailor or airman from his duty.').
rule(abetment,mutiny,by,officer,crime_under_section_132,'Punishment:	be punished with
death or with  [imprisonment for life], or imprisonment of either description for a term which may
extend to ten years, and shall also be liable to fine','Abetment of mutiny, if mutiny is committed in consequence thereof.').
rule(abetment,mutiny,by,sailor,crime_under_section_132,'Punishment:	be punished with
death or with  [imprisonment for life], or imprisonment of either description for a term which may
extend to ten years, and shall also be liable to fine','Abetment of mutiny, if mutiny is committed in consequence thereof.').
rule(abetment,mutiny,by,airman,crime_under_section_132,'Punishment:	be punished with
death or with  [imprisonment for life], or imprisonment of either description for a term which may
extend to ten years, and shall also be liable to fine','Abetment of mutiny, if mutiny is committed in consequence thereof.').
rule(abetment,mutiny,by,soldier,crime_under_section_132,'Punishment:	be punished with
death or with  [imprisonment for life], or imprisonment of either description for a term which may
extend to ten years, and shall also be liable to fine','Abetment of mutiny, if mutiny is committed in consequence thereof.').
rule(abetment,assault,soldier,superior,officer,crime_under_section_133,'Punishment:	punished with imprisonment of either description for a term which may extend to three years, and shall also be liable to fine','Abetment of assault by soldier, sailor or airman on his superior officer, when in execution of his office.').
rule(abetment,assault,sailor,superior,officer,crime_under_section_133,'Punishment:	punished with imprisonment of either description for a term which may extend to three years, and shall also be liable to fine','Abetment of assault by soldier, sailor or airman on his superior officer, when in execution of his office.').
rule(abetment,assault,airman,superior,officer,crime_under_section_133,'Punishment:	punished with imprisonment of either description for a term which may extend to three years, and shall also be liable to fine','Abetment of assault by soldier, sailor or airman on his superior officer, when in execution of his office.').
rule(abetment,assault,soldier,superior,officer,committed,crime_under_section_134,'Punishment:	punished with imprisonment of either description for a term which may extend to seven years, and shall also be liable to fine','Abetment of such assault, if the assault is committed.').
rule(abetment,assault,sailor,superior,officer,committed,crime_under_section_134,'Punishment:	punished with imprisonment of either description for a term which may extend to seven years, and shall also be liable to fine','Abetment of such assault, if the assault is committed.').
rule(abetment,assault,airman,superior,officer,committed,crime_under_section_134,'Punishment:	punished with imprisonment of either description for a term which may extend to seven years, and shall also be liable to fine','Abetment of such assault, if the assault is committed.').
rule(abetment,desertion,soldier,crime_under_section_135,'Punishment:	punished with imprisonment of either description for a term which may extend to two years, or with fine, or with both','Abetment of desertion of soldier, sailor or airman.').
rule(abetment,desertion,airman,crime_under_section_135,'Punishment:	punished with imprisonment of either description for a term which may extend to two years, or with fine, or with both','Abetment of desertion of soldier, sailor or airman.').
rule(abetment,desertion,sailor,crime_under_section_135,'Punishment:	punished with imprisonment of either description for a term which may extend to two years, or with fine, or with both','Abetment of desertion of soldier, sailor or airman.').
rule(harbouring,deserter,officer,crime_under_section_136,'Punishment:	punished with imprisonment of either description for a term which may extend to two years, or with fine or with both','Harbouring deserter.').
rule(harbouring,deserter,soldier,crime_under_section_136,'Punishment:	punished with imprisonment of either description for a term which may extend to two years, or with fine or with both','Harbouring deserter.').
rule(harbouring,deserter,sailor,crime_under_section_136,'Punishment:	punished with imprisonment of either description for a term which may extend to two years, or with fine or with both','Harbouring deserter.').
rule(harbouring,deserter,airman,crime_under_section_136,'Punishment:	punished with imprisonment of either description for a term which may extend to two years, or with fine or with both','Harbouring deserter.').
rule(deserter,vessel,concealed,negligence,crime_under_section_137,'Punishment:	liable to a penalty not exceeding five hundred rupees','Deserter concealed on board merchant vessel through negligence of master.').
rule(abetment,insubordination,soldier,crime_under_section_138,'Punishment:	punished with imprisonment of either description for a term which may extend to six months, or with fine, or with both','Abetment of act of insubordination by soldier, sailor or airman.').
rule(abetment,insubordination,sailor,crime_under_section_138,'Punishment:	punished with imprisonment of either description for a term which may extend to six months, or with fine, or with both','Abetment of act of insubordination by soldier, sailor or airman.').
rule(abetment,insubordination,airman,crime_under_section_138,'Punishment:	punished with imprisonment of either description for a term which may extend to six months, or with fine, or with both','Abetment of act of insubordination by soldier, sailor or airman.').
rule(wearing,garb,soldier,crime_under_section_140,'Punishment:	punished with imprisonment of either description for a term which may extend to three months, or with fine which may extend to five hundred rupees, or with both','Wearing garb or carrying token used by soldier, sailor or airman.').
rule(wearing,garb,sailor,crime_under_section_140,'Punishment:	punished with imprisonment of either description for a term which may extend to three months, or with fine which may extend to five hundred rupees, or with both','Wearing garb or carrying token used by soldier, sailor or airman.').
rule(wearing,garb,airman,crime_under_section_140,'Punishment:	punished with imprisonment of either description for a term which may extend to three months, or with fine which may extend to five hundred rupees, or with both','Wearing garb or carrying token used by soldier, sailor or airman.').
rule(carrying,token,soldier,crime_under_section_140,'Punishment:	punished with imprisonment of either description for a term which may extend to three months, or with fine which may extend to five hundred rupees, or with both','Wearing garb or carrying token used by soldier, sailor or airman.').
rule(carrying,token,sailor,crime_under_section_140,'Punishment:  	punished with imprisonment of either description for a term which may extend to three months, or with fine which may extend to five hundred rupees, or with both','Wearing garb or carrying token used by soldier, sailor or airman.').
rule(carrying,token,airman,crime_under_section_140,'Punishment: 	punished with imprisonment of either description for a term which may extend to three months, or with fine which may extend to five hundred rupees, or with both','Wearing garb or carrying token used by soldier, sailor or airman.').
rule(unlawful,assembly,criminal,force,public,servant,exercise,lawful,crime_under_section_141,'Punishment:	punished with imprisonment of either description for a term which may extend to six months, or with fine, or with both under Section 143','Unlawful assembly.').
rule(unlawful,assembly,resist,execution,law,legal,crime_under_section_141,'Punishment:	punished with imprisonment of either description for a term which may extend to six months, or with fine, or with both under Section 143','Unlawful assembly.').
rule(unlawful,assembly,commit,mischief,criminal,trespass,crime_under_section_141,'Punishment:	punished with imprisonment of either description for a term which may extend to six months, or with fine, or with both under Section 143','Unlawful assembly.').
rule(unlawful,assembly,criminal,force,possesion,property,crime_under_section_141,'Punishment:	punished with imprisonment of either description for a term which may extend to six months, or with fine, or with both under Section 143','Unlawful assembly.').
rule(unlawful,assembly,criminal,force,compel,crime_under_section_141,'Punishment:	punished with imprisonment of either description for a term which may extend to six months, or with fine, or with both under Section 143','Unlawful assembly.').
rule(member,unlawful,assembly,crime_under_section_142,'Punishment:	punished with imprisonment of either description for a term which may extend to six months, or with fine, or with both under Section 143','Being member of unlawful assembly.').
rule(joining,unlawful,assembly,armed,crime_under_section_144,'Punishment:	punished with imprisonment of either description for a term which may extend to two years, or with fine, or with both','Joining unlawful assembly armed with deadly weapon.').
rule(joining,unlawful,assembly,disperse,crime_under_section_145,'Punishment:	punished with imprisonment
of either description for a term which may extent to two years, or with fine, or with both','Joining or continuing in unlawful assembly, knowing it has been commanded to disperse.').
rule(continuing,unlawful,assembly,disperse,crime_under_section_145,'Punishment:	 punished with imprisonment
of either description for a term which may extent to two years, or with fine, or with both','Joining or continuing in unlawful assembly, knowing it has been commanded to disperse.').
rule(rioting,crime_under_section_146,'Punishment:	punished with imprisonment of either description for a term which may extend to two years, or with fine, or with both under Section 147','Rioting.').
rule(rioting,armed,crime_under_section_148,'Punishment:	punished with imprisonment of either description for a term which may extend to three years, or with fine, or with both','Rioting, armed with deadly weapon.').
rule(unlawful,assembly,member,committed,common,object,crime_under_section_149,'Punishment:	','Every member of unlawful assembly guilty of offence committed in prosecution of common object.').
rule(hiring,join,unlawful,assembly,crime_under_section_150,'Punishment:	   punishable as a member of such unlawful assembly, and for any offence which may be committed by any such person as a member of such unlawful assembly in pursuance of such hiring, engagement or employment, in the same manner as if he had been a member of such unlawful assembly, or himself had committed such offence','Hiring, or conniving at hiring, of persons to join unlawful assembly.').
rule(conspiring,hiring,join,unlawful,assembly,crime_under_section_150,'Punishment:	punishable as a member of such unlawful assembly, and for any offence which may be committed by any such person as a member of such unlawful assembly in pursuance of such hiring, engagement or employment, in the same manner as if he had been a member of such unlawful assembly, or himself had committed such offence','Hiring, or conniving at hiring, of persons to join unlawful assembly.').
rule(knowingly,joining,unlawful,assembly,disperse,crime_under_section_151,'Punishment:	  punished with imprisonment of either description for a term which may extend to six months, or with fine, or with both','Knowingly joining or continuing in assembly of five or more persons after it has been commanded to disperse.').
rule(knowingly,continuing,unlawful,assembly,disperse,crime_under_section_151,'Punishment:	punished with imprisonment of either description for a term which may extend to six months, or with fine, or with both','Knowingly joining or continuing in assembly of five or more persons after it has been commanded to disperse.').
rule(assaulting,public,servant,disperse,unlawful,assembly,crime_under_section_152,'Punishment:	punished with
imprisonment of either description for a term which may extend to three years, or with fine, or with both','Assaulting or obstructing public servant when suppressing riot, etc.').
rule(assaulting,public,servant,supress,riot,crime_under_section_152,'Punishment:	punished with
imprisonment of either description for a term which may extend to three years, or with fine, or with both','Assaulting or obstructing public servant when suppressing riot, etc.').
rule(obstructing,public,servant,disperse,unlawful,assembly,crime_under_section_152,'Punishment:	punished with
imprisonment of either description for a term which may extend to three years, or with fine, or with both','Assaulting or obstructing public servant when suppressing riot, etc.').
rule(obstructing,public,servant,supress,riot,crime_under_section_152,'Punishment:	punished with imprisonment of either description for a term which may extend to three years, or with fine, or with both','Assaulting or obstructing public servant when suppressing riot, etc.').
rule(intent,provocation,riot,committed,crime_under_section_153,'Punishment:	punished with imprisonment of either description for a term which may extend to one year, or with fine, or with both; and if the offence of rioting be not committed, with imprisonment of either description for a term which may extend to six months, or with fine, or with both','Wantonly giving provocation, with intent to cause riot —
if rioting be committed; if not committed.').
rule(intent,provocation,riot,not-committed,crime_under_section_153,'Punishment:	  punished with imprisonment of either description for a term which may extend to one year, or with fine, or with both; and if the offence of rioting be not committed, with imprisonment of either description for a term which may extend to six months, or with fine, or with both','Wantonly giving provocation, with intent to cause riot —
if rioting be committed; if not committed.').
rule(owner,land,unlawful,assembly,crime_under_section_154,'Punishment:	punishable with fine not exceeding one thousand rupees','Owner or occupier of land on which an unlawful assembly is held.').
rule(occupier,land,unlawful,assembly,crime_under_section_154,'Punishment:	punishable with fine not exceeding one thousand rupees','Owner or occupier of land on which an unlawful assembly is held.').
rule(benefit,person,riot,crime_under_section_155,'Punishment:	punishable with fine','Liability of person for whose benefit riot is committed.').
rule(owner,riot,benefit,committed,crime_under_section_156,'Punishment:	punishable with fine','Liablility of agent of owner or occupier for whose benefit riot is committed.').
rule(occupier,riot,benefit,committed,crime_under_section_156,'Punishment:	punishable with fine','Liablility of agent of owner or occupier for whose benefit riot is committed.').
rule(harbouring,hired,unlawful,assembly,crime_under_section_157,'Punishment:	punished with imprisonment of
either description for a term which may extend to six months, or with fine, or with both','Harbouring persons hired for an unlawful assembly').
rule(hired,unlawful,assembly,crime_under_section_158,'Punishment:	punished with imprisonment of either description for a term which may extend to six months, or with fine, or with both','Being hired to take part in an unlawful assembly or riot; or to go armed.').
rule(public,peace,distrub,fighting,place,crime_under_section_159,'Punishment:	punished with imprisonment of either description for a term which may extend to one month, or with fine which may extend to one hundred rupees, or with both under Section 160','Affray.').



% AGE LIMIT OF THE KID TO BE EXEMPTED FROM ANY CRIME
small(Y):-ageminor(X),Y<X.

% AGE LIMIT OF AN IMMATURE KID TO BE EXEMPETED FROM ANY CRIME
medium(Y):-agemajor1(Z),agemajor2(L),Y>Z,Y<L.


% RULE ENGINE STARTED
% RULE FOR CHECKING THE EXCEPTIONS

verify(X):-not(flag(0)),ruleexmp(Member1,Member2,Conclusion,Reason),member(Y,X),number(Y),small(Y),member(Member1,X),member(Member2,X),write(Conclusion),nl,write(Reason),nl,assert(flag(0)).
verify(X):-not(flag(0)),ruleexmp(Member1,Member2,Conclusion,Reason),member(Y,X),number(Y),medium(Y),member(Member1,X),member(Member2,X),write(Conclusion),nl,write(Reason),nl,assert(flag(0)).
verify(X):-not(flag(0)),ruleexmp(Member1,Conclusion,Reason),member(Member1,X),write(Conclusion),nl,write(Reason),nl,assert(flag(0)).
verify(X):-not(flag(0)),ruleexmp(Member1,Member2,Conclusion,Reason),member(Member1,X),member(Member2,X),write(Conclusion),nl,write(Reason),nl,assert(flag(0)).
verify(X):-not(flag(0)),ruleexmp(Member1,Member2,Member3,Conclusion,Reason),member(Member1,X),member(Member2,X),member(Member3,X),write(Conclusion),nl,write(Reason),nl,assert(flag(0)).
verify(X):-not(flag(0)),ruleexmp(Member1,Member2,Member3,Member4,Conclusion,Reason),member(Member1,X),member(Member2,X),member(Member3,X),member(Member4,X),write(Conclusion),nl,write(Reason),nl,assert(flag(0)).
verify(X):-not(flag(0)),ruleexmp(Member1,Member2,Member3,Member4,Member5,Conclusion,Reason),member(Member1,X),member(Member2,X),member(Member3,X),member(Member4,X),member(Member5,X),write(Conclusion),nl,write(Reason),nl,assert(flag(0)).
verify(X):-not(flag(0)),ruleexmp(Member1,Member2,Member3,Member4,Member5,Member6,Conclusion,Reason),member(Member1,X),member(Member2,X),member(Member3,X),member(Member4,X),member(Member5,X),member(Member6,X),write(Conclusion),nl,write(Reason),nl,assert(flag(0)).
verify(X):-not(flag(0)),ruleexmp(Member1,Member2,Member3,Member4,Member5,Member6,Member7,Conclusion,Reason),member(Member1,X),member(Member2,X),member(Member3,X),member(Member4,X),member(Member5,X),member(Member6,X),member(Member7,X),write(Conclusion),nl,write(Reason),nl,assert(flag(0)).

% RULE FOR CHEKING THE CRIME

verify(X):-not(flag(0)),rule(Member1,Member2,Conclusion,Punishment,Reason),member(Y,X),number(Y),small(Y),member(Member1,X),member(Member2,X),write(Conclusion),nl,write(Reason),nl,write(Punishment),nl.
verify(X):-not(flag(0)),rule(Member1,Member2,Conclusion,Punishment,Reason),member(Y,X),number(Y),medium(Y),member(Member1,X),member(Member2,X),write(Conclusion),nl,write(Reason),nl,write(Punishment),nl.
verify(X):-not(flag(0)),rule(Member1,Conclusion,Punishment,Reason),member(Member1,X),write(Conclusion),nl,write(Reason),nl,write(Punishment),nl.
verify(X):-not(flag(0)),rule(Member1,Member2,Conclusion,Punishment,Reason),member(Member1,X),member(Member2,X),write(Conclusion),nl,write(Reason),nl,write(Punishment),nl.
verify(X):-not(flag(0)),rule(Member1,Member2,Member3,Conclusion,Punishment,Reason),member(Member1,X),member(Member2,X),member(Member3,X),write(Conclusion),nl,write(Reason),nl,write(Punishment),nl.
verify(X):-not(flag(0)),rule(Member1,Member2,Member3,Member4,Conclusion,Punishment,Reason),member(Member1,X),member(Member2,X),member(Member3,X),member(Member4,X),write(Conclusion),nl,write(Reason),nl,write(Punishment),nl.
verify(X):-not(flag(0)),rule(Member1,Member2,Member3,Member4,Member5,Conclusion,Punishment,Reason),member(Member1,X),member(Member2,X),member(Member3,X),member(Member4,X),member(Member5,X),write(Conclusion),nl,write(Reason),nl,write(Punishment),nl.
verify(X):-not(flag(0)),rule(Member1,Member2,Member3,Member4,Member5,Member6,Conclusion,Punishment,Reason),member(Member1,X),member(Member2,X),member(Member3,X),member(Member4,X),member(Member5,X),member(Member6,X),write(Conclusion),nl,write(Reason),nl,write(Punishment),nl.
verify(X):-not(flag(0)),rule(Member1,Member2,Member3,Member4,Member5,Member6,Member7,Conclusion,Punishment,Reason),member(Member1,X),member(Member2,X),member(Member3,X),member(Member4,X),member(Member5,X),member(Member6,X),member(Member7,X),write(Conclusion),nl,write(Reason),nl,write(Punishment),nl.





