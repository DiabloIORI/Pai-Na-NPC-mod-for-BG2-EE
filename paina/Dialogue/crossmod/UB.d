INTERJECT SPPAIN 20 C0UBPAINA1
== SPPAIN IF ~Global("C0UBPainaQuest","GLOBAL",0)~ THEN ~我想你们这些城里人，多半会想要一份报酬作为效劳的回报。我没多少可给，不过你们也许觉得这东西有用。拿去，走吧。~
DO ~TakePartyItem("U!SPBANE")
SetGlobal("ReturnedSpiderBane","GLOBAL",1)
EraseJournalEntry(190454)
EraseJournalEntry(190456)
AddexperienceParty(15000)
SetGlobal("C0UBPainaQuest","GLOBAL",1)
SetGlobal("C0PainaMet","GLOBAL",1)
SetDialog("C0Paina")
GiveItemCreate("wand14",LastTalkedToBy,10,0,0)~ EXIT

// Cromwell

EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("u!spbane")~ THEN GOTO CROMWELL1
END
  
CHAIN WSMITH01 CROMWELL1
~那么，这是什么，嗯？~
  = ~啧。这剑刃经历过苦日子。把剑糟蹋成这样的蠢货真可耻。两千金币，我把“蜘蛛克星”重铸一遍，比从前更好。~
  END
	+ ~PartyGoldLT(2000)~ + ~我没有足够的金币。~ EXTERN WSMITH01 CROMWELLNO
	+ ~PartyGoldGT(1999) InParty("C0Paina")~ + ~听起来不错。动手吧。~ EXTERN C0PAINAJ SPBANE1
	+ ~PartyGoldGT(1999) !InParty("C0Paina")~ + ~听起来不错。动手吧。~ DO ~SetGlobal("C0PainaSpiderBaneReforge","ar0334",1)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(2000)
                                                 TakePartyItemNum("u!spbane",1)
                                                 DestroyItem("u!spbane")
                                                 DestroyGold(2000)~ EXTERN WSMITH01 56
	+ ~PartyGoldGT(1999)~ + ~这回不了。还有别的吗？~ EXTERN WSMITH01 CROMWELLNO


APPEND WSMITH01

  IF WEIGHT #-1 ~GlobalGT("C0PaiNaCromwell","ar0334",0)~ THEN BEGIN CROMWELL2 SAY ~好了，成了，我的朋友。好好用它。你若遇上别的有趣东西，知道往哪儿送，是吧？~
    IF ~~ THEN DO ~SetGlobal("C0PaiNaCromwell","ar0334",0)~ EXIT
  END

  IF ~~ THEN BEGIN CROMWELLNO SAY ~嗯，随你……~
   COPY_TRANS WSMITH01 13
  END
END

CHAIN C0PAINAJ SPBANE1
~什么？！你要把那受诅咒的凶器重铸，<CHARNAME>？别犯蠢。~
END
+ ~CheckStatGT(Player1,15,CHR)~ + ~派娜，你不信我能明智地用它？~ EXTERN C0PAINAJ SPBANE2
+ ~CheckStatLT(Player1,16,CHR)~ + ~派娜，你不信我能明智地用它？~ EXTERN C0PAINAJ SPBANE3
++ ~说了算的是我，派娜。把碎片交出来。~ EXTERN C0PAINAJ SPBANE3
++ ~你说得对。反正我也不需要这剑刃。~ EXTERN C0PAINAJ SPBANE4

CHAIN C0PAINAJ SPBANE2
~……~
= ~呸。随你。只要确保它永不落入错误的手中。~
DO ~SetGlobal("C0PainaSpiderBaneReforge","ar0334",1)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(2000)
                                                 TakePartyItemNum("u!spbane",1)
                                                 DestroyItem("u!spbane")
                                                 DestroyGold(2000)~ EXTERN WSMITH01 56
												 
CHAIN C0PAINAJ SPBANE3
~不。想都别想。~
EXTERN WSMITH01 CROMWELLNO

CHAIN C0PAINAJ SPBANE4
~好。你没我想的那么蠢。~
EXTERN WSMITH01 CROMWELLNO