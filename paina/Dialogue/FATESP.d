EXTEND_TOP FATESP 6 #2
+ ~!Dead("C0Paina") !InMyArea("C0Paina") Global("C0PainaSummoned","GLOBAL",0)~ + ~把半卓尔群巢大师派娜带来见我。~
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("C0Pai25",[1999.1228],0) 
SetGlobal("C0PainaSummoned","GLOBAL",1)~ GOTO 8
END
