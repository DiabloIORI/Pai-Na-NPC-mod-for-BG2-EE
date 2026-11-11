BEGIN C0PainaP

IF ~Global("C0PainaKickedOut","GLOBAL",0) HappinessLT(Myself,-299)~ b1
SAY ~我受够了！愿蜘蛛饱食你的内脏！~
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~Global("C0PainaKickedOut","GLOBAL",0)~ b2
SAY ~我们现在要分道扬镳？~
++ ~不，是我的错。~ DO ~JoinParty()~ EXIT
++ ~是，暂且如此。~ + b2.1
END

IF ~~ b2.1
SAY ~好。你回我的圣所找我吧。也许哪天我又愿意跟你同行了。~
+ ~!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")~ + ~好。我在那儿见你。~ DO ~SetGlobal("C0PainaKickedOut","GLOBAL",1) MoveGlobal("AR0804","C0Paina",[568.420])~ EXIT 
+ ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")~ + ~现在不行。就在这儿等我。~ DO ~SetGlobal("C0PainaKickedOut","GLOBAL",1)~ EXIT
END

// If you have kicked Branwen out and told her to wait right here or in the Bridge District, here's the dialogue she is going to have(remember, C0PainaKickedOut is at 1).

IF ~Global("C0PainaKickedOut","GLOBAL",1)~ b3
SAY ~哼，你回来了。走路看着点脚下，行吗？那么，你又来找我帮忙？~
++ ~是。请你跟我来。~ + b3.1
++ ~这会儿不用。~ + b3.2
END 

IF ~~ b3.1
SAY ~如你所愿。来，我的孩儿们。我们暂且陪<CHARNAME>走一趟。~
IF ~~ DO ~SetGlobal("C0PainaKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ b3.2
SAY ~那我建议你快走。~
IF ~~ EXIT
END
