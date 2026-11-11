BEGIN C0Pai25J

EXTEND_TOP SARVOLO 9 #2
+ ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID) !Global("C0PainaRomanceActive","GLOBAL",2)~ + ~跟我说说派娜。~ + C0PainaVoloBio1
END

CHAIN SARVOLO C0PainaVoloBio1
~蛛之女主，群巢女大师派娜是诸国度最致命的德鲁伊之一，麾下有无数的八足同族。胆敢触她怒火的人，很快就会学会畏惧并敬重蛛类的杀伐。~
== C0Pai25J IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN ~好听的话，可对我没什么意义。~
EXTERN SARVOLO 9

I_C_T FINSOL01 27 C0PainaSolarFriend1
== C0Pai25J IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN ~那么，你的旅程快要结束了。挑你最想要的东西，让那些想劝你改变主意的人都见鬼去。命运握在自己手里，这样的机会难得。~
END

I_C_T AMMERC02 0 C0PainaAMMERC020
== C0Pai25J IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN ~哦，真是可喜的意外。我的蜘蛛对这一个记得清清楚楚。它们想跟他的血肉认识认识。~
END 

I_C_T2 BAZDRA01 5 C0PainaBAZDRA015
== C0Pai25J IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN ~蠢货，在我同族之威面前，你不过是一条蜥蜴！~
END

I_C_T SARMEL01 7 C0PainaSARMEL017
== C0Pai25J IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN ~那你是头一个。我们怎么知道你可信？~
END

I_C_T YAGA01 2 C0PainaYAGA012
== C0Pai25J IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN ~畜生，你尽管笑。等你死了，会是一顿好食！~
END

I_C_T HGNYA01 1 C0PainaHGNYA011
== C0Pai25J IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN ~这老妪让我想起养我的那个女巫，只是她眼里有一种古怪的空洞。~
END

I_C_T HGNYA01 29 C0PainaHGNYA0129
== C0Pai25J IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN ~哼，看来她的心一回来，感情也回来了。我早知道该让我的蜘蛛把它吃下去。~
END

INTERJECT SENGUA01 4 C0PainaSENGUA014
== C0Pai25J IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN ~那么这一带有卓尔？好。杀他们我会很享受。~
== SENGUA01 ~等等。一个半卓尔？！这种杂种见到就该砍！~
== C0Pai25J ~什么？~
== SENGUA01 ~管他什么伪装，你来这儿就是错了！凭珊黛的意志，你该死！~
DO ~Enemy()
SetGlobal("DrowRevealed","AR6100",1)
EraseJournalEntry(67464)~
EXIT

I_C_T SENDAI 13 C0PainaSENDAI13
== C0Pai25J IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN ~真可悲。我的蜘蛛仍渴着卓尔的血肉。~
END

I_C_T BALTH 6 C0PainaBalth6
== C0Pai25J IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN ~他打发我们走的口气，像在送人去死。他打的什么主意？~
END