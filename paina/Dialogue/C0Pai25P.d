BEGIN C0Pai25P

IF ~Global("C0PainaToBKickedOut","GLOBAL",0)~ b1
SAY ~那么，事情就到这儿了？我承认，我几乎开始享受你的陪伴，甚至愿意给你一个重新考虑的机会。~
++ ~是我的错。求你，别走。~ DO ~JoinParty()~ EXIT
+ ~AreaCheck("AR4500")~ + ~就在这儿等我。~ DO ~SetGlobal("C0PainaToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([1717.1717]) Face(0)~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~就在这儿等我。~ DO ~SetGlobal("C0PainaToBKickedOut","GLOBAL",1)~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~我把你送到口袋位面。在那儿等我。~ DO ~SetGlobal("C0PainaToBKickedOut","GLOBAL",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1717.1717],0)~ EXIT
END

IF ~Global("C0PainaToBKickedOut","GLOBAL",2)~ b2
SAY ~嗯，这地方真是*无聊*透顶。我宁愿离开这儿。~
++ ~那就跟我来。~ + b2.1
++ ~再等一会儿。~ + b2.2
END 

IF ~~ b2.1
SAY ~如你所愿。~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ b2.2
SAY ~说得好像我有得选。~
IF ~~ EXIT
END
