BEGIN C0PainaJ

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("C0PaiNa",LastTalkedToBy)~ EXTERN TRGYP02 g1
END

CHAIN TRGYP02 g1
~灰色者，你体内住着一个矛盾的灵魂。你寻找一个愿意接纳你的地方，却找不到。继续找，终会找到你真正的归属。~
== C0PainaJ ~我*知道*我的归属在哪。你不过是个骗子……钱还是拿去。它对我无所谓。~
EXIT

I_C_T YOSHJ 113 C0PaiNaYOSHJ113
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~贼，你从我这儿得不到怜悯。我的蜘蛛会把你撕碎！~
END

INTERJECT Player1 3 C0PaiNaSpellholdDizzy0
== C0PainaJ IF ~InParty("C0PaiNa") Range("C0PaiNa",15) !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN
~<CHARNAME>，你的身体看上去快垮了。~
END
++ ~我很高兴你注意到了。~ EXTERN C0PainaJ pl1.1
++ ~你觉得你能做点什么吗？~ EXTERN C0PainaJ pl1.2
++ ~我没事。~ EXTERN C0PainaJ pl1.3

CHAIN C0PainaJ pl1.1
~我一向以留意细节为荣，<CHARNAME>。~
EXIT

CHAIN C0PainaJ pl1.2
~不，可惜。我能治肉体的伤，多少能治，可我看不出你有何病症。也许没什么，但我也不敢说。~
EXIT

CHAIN C0PainaJ pl1.3
~也许吧，可你要是在带我们离开这鬼地方时死了，我不会原谅你。~
EXIT

// Salvanas

CHAIN IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Name("C0PaiNa",LastTalkedToBy)~ THEN SALVANAS C0PaiNaSalvanas
~哦，天！好一个暮色肌肤的美人标本！~
== C0PainaJ ~为你好，我希望你说的不是我。~
== SALVANAS ~还能是谁，可爱的人？~
== C0PainaJ ~你不会说通用语吗，畜生？滚！~
== SALVANAS ~是，一头畜生……在你面前我不过是头野兽，也许你想让我证明给你看……~
== C0PainaJ ~你要我放蜘蛛咬你，也许你会重新考虑。~
== SALVANAS ~等——等一下。（咽口水）蜘蛛？~
== C0PainaJ ~哦，是啊。就拿这位美人来说。她不可爱吗？最妙的是她的咬。无药可治，致命，死者咽气前还要受灼烧般的剧痛。~
== C0PainaJ ~你想凑近看看吗？~
== SALVANAS ~呀——！~
DO ~ApplySpellRES("runrun",Myself)
EscapeArea()~
EXIT

// Belmin

CHAIN IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Name("C0PaiNa",LastTalkedToBy)~ THEN BELMIN C0PaiNaBelmin
~恶心的孽物！你的存在就是对自然的侮辱！~
== C0PainaJ ~这就是城里垃圾给我的关注。~
== BELMIN ~傲慢的巫婆！亵渎结合的后代！我要把你们全部从大地上清除！~
== C0PainaJ ~到别处去胡言乱语，蠢汉。我没工夫理他们。~
== BELMIN ~你的话像毒液灌进我耳朵！我一句也不听！一句也不，明白吗？！~
== C0PainaJ ~你再逼我，我可以让你看看真正的毒液！~
== BELMIN ~你周身绕着杀意像件斗篷！我要终结你这被诅咒的存在！~
== BELMIN ~大家！看哪，真正的邪恶就在我们眼前！一个卓尔崽子！~
== C0PainaJ ~闭嘴，蠢货！~
== BELMIN ~我要把这魔鬼从我们中间清除！啊啊啊啊——~
== C0PainaJ ~我说了闭嘴！~
DO ~ReallyForceSpell("BELMIN",FIGURINE_SPIDER_WEB)
ReallyForceSpell("BELMIN",FIGURINE_SPIDER_WEB)
ReallyForceSpell("BELMIN",FIGURINE_SPIDER_WEB)
ActionOverride("BELMIN",EscapeArea()~
EXIT

// Player becomes the Slayer for the first time.

I_C_T PLAYER1 5 C0PaiNaFirstSlayerChange1 
== C0PainaJ IF ~InParty("C0PaiNa") See("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~怪物！你变成了什么东西？！~
END

// This is the dialogue for the Tree of Life.
// Non-romanced Branwen:

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID) Global("C0PaiNaTreeOfLife","GLOBAL",0)~ EXTERN PLAYER1 pl2
END

CHAIN PLAYER1 pl2
~派娜，那位答应离开阿斯卡特拉寂寞圣所、随你同行的半卓尔德鲁伊，带着她的蜘蛛以惊人的忠诚跟随你。~
DO ~SetGlobal("C0PaiNaTreeOfLife","GLOBAL",1)~
END
++ ~派娜，你做得够多了。回家去吧。~ EXTERN C0PainaJ pl2.1
++ ~你还有职责要尽，派娜。离开吧，保住你的命。~ EXTERN C0PainaJ pl2.1
++ ~你准备好了吗，派娜？这是终局。~ EXTERN C0PainaJ pl2.1

CHAIN C0PainaJ pl2.1
~我不喜欢欠任何人情，<CHARNAME>，可我觉得我欠你一份，因为你接纳了我。你待我比任何人都好……我想该是我报答你的时候了，哪怕这冲动来得古怪。~
END
COPY_TRANS PLAYER1 33 

// Tree of Life, Irenicus is dead.

I_C_T PLAYER1 16 C0PaiNaIrenicusIsDead1
== C0PainaJ IF ~InParty("C0PaiNa") Range("C0PaiNa",15) !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~哼。他倒了，跟任何男人一样。也许他的血尝起来比胜利更叫人满足。~
END

// Entering Hell

I_C_T PLAYER1 25 C0PaiNaEnteringHell1
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~嗯……好古怪的地方。这里不是魔网深渊，可看样子也好不到哪去。是你把我带到这儿的，对吧，<CHARNAME>？看来我除了帮你到底别无选择。~
END

// Battling Irenicus

I_C_T HELLJON 7 C0PaiNaThirdBattleWithIrenicus1
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~法师，你该死了！我的孩儿们会喜欢把你撕开！~
END

I_C_T HELLJON 8 C0PaiNaThirdBattleWithIrenicus1
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~法师，你该死了！我的孩儿们会喜欢把你撕开！~
END

I_C_T HELLJON 9 C0PaiNaThirdBattleWithIrenicus1
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~法师，你该死了！我的孩儿们会喜欢把你撕开！~
END

I_C_T HELLJON 10 C0PaiNaThirdBattleWithIrenicus1
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~法师，你该死了！我的孩儿们会喜欢把你撕开！~
END

// Viconia

I_C_T VICG1 2 C0PaiNaVICG12
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~哼。别管她，<CHARNAME>。她死我也不会掉一滴泪。~
END

// Faldorn

REPLACE_TRIGGER_TEXT CEFALDOR
~!Name("Cernd",Player2)~
~!Name("Cernd",Player2)
!Name("C0Paina",Player2)~

REPLACE_TRIGGER_TEXT CEFALDOR
~!Name("Cernd",Player3)~
~!Name("Cernd",Player3)
!Name("C0Paina",Player3)~

REPLACE_TRIGGER_TEXT CEFALDOR
~!Name("Cernd",Player4)~
~!Name("Cernd",Player4)
!Name("C0Paina",Player4)~

REPLACE_TRIGGER_TEXT CEFALDOR
~!Name("Cernd",Player5)~
~!Name("Cernd",Player5)
!Name("C0Paina",Player5)~

REPLACE_TRIGGER_TEXT CEFALDOR
~!Name("Cernd",Player6)~
~!Name("Cernd",Player6)
!Name("C0Paina",Player6)~

EXTEND_TOP CEFALDOR 2
+ ~OR(2)
!Class(Player1,DRUID_ALL)
Class(Player1,SHAMAN)
InParty("C0Paina")
!Dead("C0Paina")
!StateCheck("C0Paina",CD_STATE_NOTVALID)~ + ~晋升的仪轨仍统辖此地！身为德鲁伊，派娜将向你挑战领导之位！~ EXTERN C0PAINAJ PAINA-FALDORN-FIGHT
END

CHAIN C0PAINAJ PAINA-FALDORN-FIGHT
~我不在乎什么正式仪轨，但你若选择吸吮大地的元气，就要付出代价！我唾弃你那所谓的不可战胜，我要看着你的尸体成为我孩儿们的腐肉！~
== CEFALDOR ~你自然是想错了。我正爱这仪轨中的厮杀，也欢迎这个终结你悲惨存在的机会。来受死吧！~ [CEFALD12]
END
IF ~Name("C0Paina",Player2)~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Cut35d",FALSE)~ EXIT
IF ~Name("C0Paina",Player3)~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Cut35e",FALSE)~ EXIT
IF ~Name("C0Paina",Player4)~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Cut35f",FALSE)~ EXIT
IF ~Name("C0Paina",Player5)~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Cut35g",FALSE)~ EXIT
IF ~Name("C0Paina",Player6)~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Cut35h",FALSE)~ EXIT

I_C_T CEFALD04 3 C0PaiNaCEFALD043
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~你这*蠢货*！你要把这片林苑里的所有生灵都毒死？如此无礼，你会付出代价！~
DO ~LeaveParty()
Enemy()~
END

// Spider Hosts

I_C_T SPBENE 0 C0PAINABENE
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID) Global("C0PainaHosts","GLOBAL",0)~ THEN ~哼。我劝你别碰他，<CHARNAME>。如今他不过是供我幼蛛取食的空壳，他活该如此。~
== C0PainaJ ~这些蠢货每一个都对我圣所里的神圣生灵犯下暴行，他们正在偿债。他们不值得同情。~
DO ~SetGlobal("C0PainaHosts","GLOBAL",1)~
END

I_C_T SPPHIL 0 C0PAINAPHIL
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID) Global("C0PainaHosts","GLOBAL",0)~ THEN ~哼。我劝你别碰他，<CHARNAME>。如今他不过是供我幼蛛取食的空壳，他活该如此。~
== C0PainaJ ~这些蠢货每一个都对我圣所里的神圣生灵犯下暴行，他们正在偿债。他们不值得同情。~
DO ~SetGlobal("C0PainaHosts","GLOBAL",1)~
END

I_C_T SPSAMAR 0 C0PAINASAMAR
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID) Global("C0PainaHosts","GLOBAL",0)~ THEN ~哼。我劝你别碰他，<CHARNAME>。如今他不过是供我幼蛛取食的空壳，他活该如此。~
== C0PainaJ ~这些蠢货每一个都对我圣所里的神圣生灵犯下暴行，他们正在偿债。他们不值得同情。~
DO ~SetGlobal("C0PainaHosts","GLOBAL",1)~
END

I_C_T SPTREDD 0 C0PAINATREDD
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID) Global("C0PainaHosts","GLOBAL",0)~ THEN ~哼。我劝你别碰他，<CHARNAME>。如今他不过是供我幼蛛取食的空壳，他活该如此。~
== C0PainaJ ~这些蠢货每一个都对我圣所里的神圣生灵犯下暴行，他们正在偿债。他们不值得同情。~
DO ~SetGlobal("C0PainaHosts","GLOBAL",1)~
END

// Bodhi

I_C_T BODHI 1 C0PaiNaBODHI1
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~波迪。~
== BODHI ~派娜？真意外……我以为你从不离开墓穴下你那个小洞。~
== C0PainaJ ~事情会变。我现在跟着<CHARNAME>。~
END

I_C_T BODHI 6 C0PaiNaBODHI6
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~哼。波迪不可信，<CHARNAME>。希望你聪明到肯听我一句。~
END

I_C_T C6BODHI 0 C0PaiNaC6BODHI0
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~就算你听到了，我的孩儿们也会找到你。波迪，希望你准备好为你的背叛付出代价。~
END

// Temple District

I_C_T CSGAAL 1 C0PaiNaGAAL1
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~哼。又一个蠢货兼伪君子，鼓吹自己的信仰比别人的真。听他胡扯倒也有趣。~
END

I_C_T GAAL 22 C0PaiNaGAAL22
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~一个瞎了眼、又丢了唯一拐杖的人。真可悲。~
END
// Maevar, Renal, Aran Linvail 

I_C_T MAEVAR 25 C0PaiNaMAEVAR25
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~法师。我多恨他们妄用魔法，毁了我许多孩儿。我宁可他跟我蜘蛛认识认识，可若非得跟他打交道……~
END

I_C_T EDWIN 16 C0PaiNaEDWIN16
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~真烦人。我们要一整天干这种跑腿的蠢事？~
END

I_C_T RENAL 22 C0PaiNaRENAL22
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~（哼鼻）这是想逗笑？我待在圣所里也知道你们和对手公会的战争。不然你何必要我们？~
END

I_C_T RENAL 45 C0PaiNaRENAL45
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~很好。我很乐意看那傲慢的渣滓死掉。~
END

I_C_T ARAN 0 C0PaiNaARAN0
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~哼。他显得温顺可怜，这多半说明他恰恰相反。别小看他，<CHARNAME>，我们所有人的命都在此一举。~
END

// Slums District

I_C_T LEHTIN 17 C0PaiNaLEHTIN17
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~我想不出这些粗汉眼里的消遣有什么可诱人的。这是浪费时间。~
END

I_C_T HENDAK 2 C0PaiNaHendakInt2
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~呸。我不羡慕那些被关在小牢里的人。我不管这些人，不过看他们反咬主人，也许倒有趣。~
END

// Bridge District

I_C_T TANNER 8 C0PaiNaTanner8
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~你真是可怜的东西。我孩儿们接下来要吃你的肉，有什么遗言？~
END

I_C_T INSPECT 13 C0PaiNaINSPECT13
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~哼。这种事我概不承认。我的孩儿们更爱血肉。~
END

I_C_T RAELIS 17 C0PaiNaRAELIS17
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~我猜你永远也不会去试。照旧把我们的善心当理所当然。~
END

I_C_T2 PBHUNT01 6 C0PaiNaPBHUNT016
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~蠢货们，你们全都会是我孩儿们的一顿好食！~
END

// Imnesvale-related

I_C_T UHMAY01 18 C0PaiNaUHMAY18
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~食人魔、女巫还是野狼……干脆全找出来一锅端了，岂不省事？~
END

// Windspear-related

I_C_T VAELASA 7 C0PaiNaVAELASA7
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~哼。她们倒算好看，可跟蛛形类的美比，什么都不是。~
END

I_C_T FIRKRA02 0 C0PaiNaFIRKRA020
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~一个强大的存在……我们也许毫无胜算。~
END

// de'Arnise-related

I_C_T DELCIA 0 C0PaiNaDELCIA0
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~不知感恩的婊子。她若没了，没人会想她。~
END

I_C_T DELCIA 17 C0PaiNaDELCIA17
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~不知感恩的婊子。她若没了，没人会想她。~
END

I_C_T KPGLAI01 1 C0PaiNaKPGLAI011
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~（哼鼻）意志薄弱的蠢货。看来他的心不难动摇。~
END

I_C_T TORGAL 0 C0PaiNaTORGAL0
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~这些粗汉里最大也最蠢的一个。他准是头目。~
END

I_C_T TORGAL 15 C0PaiNaTORGAL15
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~这些粗汉里最大也最蠢的一个。他准是头目。~
END

// Trademeet has been here for generations...

I_C_T NEEBER 7 C0PaiNaNEEBER7
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~够了！*够了*！他再说一个字，我就让蜘蛛用蛛网封住他的嘴！~
END

// Spellhold

I_C_T PPCOWLED 1 C0PaiNaPPCOWLED1
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~一个疯子。我以为这些人只关押疯子，没想到自己成了疯子。~
END

I_C_T PPSIME 6 C0PaiNaPPSIME6
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~（低吼）波迪。~
END

I_C_T PPSAEM2 19 C0PaiNaPPSAEM219
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~（低吼）我不去幽暗地域，<CHARNAME>！呸，可我看也没别的法子……随你吧，不过我望你选那条船。~
END

I_C_T PPSAILOR 1 C0PaiNaPPSAILOR1
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~……我当初干嘛要答应这些？~
END

// Sahuagin City

I_C_T SAHKNG01 1 C0PaiNaSAHKNG011
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~（嗅）这些鱼兽是照谁的蠢和口臭来选头目的吗？~
== SAHKNG01 ~呃？那是什么？~
== C0PainaJ ~我什么也没说，'哦伟大的国王'。~
END

I_C_T SAHPR1 1 C0PaiNaSAHPR11
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~哼。这些鲨兽我略知一二。我记得叫“沙华鱼人”。至于它们的语言，我一窍不通。~
END

I_C_T SAHPR2 12 C0PaiNaSAHPR112
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~帮这场冲突的哪一边我不在乎，<CHARNAME>，不过这一方似乎能打仗。顺这个计划走会省事些。~
END

INTERJECT SAHBEH01 27 C0PaiNaSAHBEH0127
== C0PainaJ IF ~IfValidForPartyDialog("C0PaiNa")~ THEN ~（哼鼻）只要在字眼上下点功夫，就能找出漏洞。你肯定早找着了，胖眼珠？~
== SAHBEH01 ~*眼珠子*？！你这厚脸皮的婆娘！~
== C0PainaJ ~闭嘴听我说。他让你看守这箱子。那里面装的呢？他提过吗？~
== SAHBEH01 ~嗯。据我回想，他喊的是“我的箱子”。不过当时有柄长矛正捅穿他自己的胸口，所以他也许是指那个。~
== SAHBEH01 ~不过我猜他说的是*这个*箱子。也就是说我不能让你打开它……也不能对它做什么……哪怕我并不看守里面的东西。~
== C0PainaJ ~那你自己打开，让我们把里面的东西拿走。这念头就没在你脑子里转过？~
== SAHBEH01 ~嗯。嗯……~
EXTERN SAHBEH01 35

// The Underdark 

I_C_T UDSVIR03 9 C0PaiNaUDSVIR039
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~话里有话。你最好说清楚，别浪费我们的时间。~
END

I_C_T UDSILVER 0 C0PaiNaUDSILVER0
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~我在这深处最没指望见到的，就是一条银龙。~
== UDSILVER ~一个半卓尔？我可怜你，小东西。~
== C0PainaJ ~你不认识我。你这话什么意思？~
== UDSILVER ~我说的是实话。你们这类人值得可怜，你若不知道，就更可怜。~
END

I_C_T UDOGRE 3 C0PaiNaUDOGRE3
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~*嘶* 夺心魔？我们被夺心魔抓了？！我当初干嘛要跟你蹚这浑水？~
END

I_C_T2 UDDROW04 8 C0PaiNaUDDROW048
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~*哼鼻* 跑吧，懦夫。~
END

I_C_T2 UDDROW15 2 C0PaiNaUDDROW152
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~啧，多浪费。我们非得站在旁边看这种蠢事？~
END

I_C_T2 UDDROW36 2 C0PaiNaUDDROW362
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~说真的，<CHARNAME>，你若要这么蠢地暴露我们，至少先提个醒！~
END

I_C_T MINSCJ 171 C0PaiNaMINSCJ171
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~哦，真是……这该死的蠢货！~
END

I_C_T UDDROW24 0 C0PaiNaUDDROW240
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~这倒有意思……商人，你的毒药品种不少。~
== UDDROW24 ~你眼光不错，尊敬的女士。我有别的卓尔聚居地都没有的药剂，连切德·纳萨德也没有。也许你有兴趣买点？~
== C0PainaJ ~那要看情况。这些可怜破烂就是你的全部存货？你若没有有趣的东西，我想我们上别处轻易就能找到更好的。~
== UDDROW24 ~我向你保证，这城里没有比我的炼金货更好的。也许你该亲自看看？~
END

I_C_T UDSILVER 34 C0PaiNaUDSILVER34
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~我觉得……想吐。这是噩梦，一定是。~
END

I_C_T UDSOLA01 0 C0PaiNaUDSOLA010
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~你说我们弱？你是什么东西，敢这样说我们，雄性渣滓？~
== UDSOLA01 ~这里不是切德·纳萨德，女人，你不能像在自己城里那样放肆。注意你的舌头。~
END

I_C_T UDSOLA01 117 C0PaiNaUDSOLA01117
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~这蠢货连我们的意图都看不穿。杀了他，了事。~
== UDSOLA01 ~你在嘟囔什么，女人？这是什么意思？！~
END

I_C_T2 UDPHAE01 161 C0PaiNaUDPHAE01161
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~烧吧，在剧痛里扭吧，婊子。愿你在魔网深渊里永世受苦。~
END

// Chapter 6 and 7, Elhan and Demin

INTERJECT C6ELHAN2 8 C0PaiNaC6ELHAN28
== C6ELHAN2 IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID) OR(4)
Dead("Viconia")
!InParty("Viconia")
!See("Viconia")
StateCheck("Viconia",STATE_SLEEPING)~ THEN ~他们会仔细听你下一句话，尤其他已经因带着一个卓尔同行而遭咒。~
== C0PainaJ ~是*半*卓尔，虽然我怀疑这对你没多大改变；我若发誓我跟你一样憎恶卓尔，你也不会信。~
== C6WARSA1 ~（点头）她说的是实话。~
== C6ELHAN2 ~好吧。我不再追究。~
EXTERN C6ELHAN2 10

INTERJECT C6ELHAN2 8 C0PaiNaC6ELHAN28
== C6ELHAN2 IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID) !Dead("VICONIA")
InParty("Viconia")
See("Viconia")~ THEN ~他们会仔细听你下一句话，尤其他已经因带着两个卓尔同行而遭咒。~
== C0PainaJ ~是*半*卓尔，虽然我怀疑这对你没多大改变；我若发誓我跟你一样憎恶卓尔，你也不会信。~
== C6WARSA1 ~（点头）她说的是实话。~
== C6ELHAN2 ~好吧。我不再追究。至少对你。~
EXTERN C6ELHAN2 10

// Kitthix

CHAIN IF WEIGHT #-1 ~Global("C0PaiNaKitthix","GLOBAL",1)~ THEN C0PAINAJ kitthix
~你好，基帝克斯。睡得好吗？抱歉打搅你。~
DO ~SetGlobal("C0PaiNaKitthix","GLOBAL",2)~
== SPIDFGSU ~*吱吱* *咔哒*~
== C0PAINAJ ~是，是，我也高兴见你。有一阵没召唤你了，是吧？~
END
++ ~把那东西拿开！~ EXTERN C0PAINAJ kitthix1
++ ~你在……跟蜘蛛说话？~ EXTERN C0PAINAJ kitthix2
++ ~（无视她）~ EXTERN C0PAINAJ kitthix3

CHAIN C0PAINAJ kitthix3
~那么，你睡了这么久，一定饿了。我们去找点猎物让你吃个饱，如何？~
== SPIDFGSU ~*兴奋地咔哒*~
== C0PAINAJ ~是，当然，我亲爱的朋友。听见了吗，<CHARNAME>？她饿得厉害。最好在她缠上你之前，先找几个蠢货喂她。~
EXIT

APPEND C0PainaJ

IF ~~ kitthix1
SAY ~哦，闭嘴。我看她也不比你更乐意待在你身边。她肯理你的召唤，你就该高兴了。~
IF ~~ + kitthix3
END

IF ~~ kitthix2
SAY ~我一直这么干，<CHARNAME>。只是你不够敏锐，什么都听不见。~
IF ~~ + kitthix3
END

IF ~Global("C0PaiNaKitthix","GLOBAL",4)~ kitthix4
SAY ~嗯……我在想……可要是出了错，把它毁了呢——不，我得仔细想想……嗯。~
++ ~你已经盯着那雕像看了一个钟头。~ + kitthix5
++ ~你在干什么？~ + kitthix5
END

IF ~~ kitthix5
SAY ~我一直在想。我师父曾说基帝克斯有大量未被激发的力量。我还没摸到解锁的门道，可是……~
= ~……嗯，我不能否认跟你同行教会了我一些东西。我想我或许有足够的力量，从自然中汲取，让我的朋友更强。~
++ ~你怎么会有这样的东西？~ + kitthix6
++ ~可你说过你担心它会被毁。~ + kitthix7
END

IF ~~ kitthix6
SAY ~当然是我偷来的。我离开时从师父那儿偷的。也就是说它几乎算我的，她一向许我拿它玩。再说基帝克斯也更喜欢我。~
= ~不过，当我玩着以为只是一只普通蜘蛛玩偶的东西时，竟召唤出一只活的、有智识的蜘蛛，着实让我吃了一惊。~
IF ~~ + kitthix7
END

IF ~~ kitthix7
SAY ~这雕像若承受不住我要灌入的德鲁伊魔法，有小可能化为尘土……毕竟它很旧了。不过只是小可能。~
= ~可失去我召唤朋友的唯一法子，终究叫人难过，所以……哪怕只是小可能，我从前也不愿冒险。~
++ ~那你现在有信心它能成了？~ + kitthix8
END

IF ~~ kitthix8
SAY ~嗯，要是不成，我会对自己很失望。我准备了几样预防措施，以防万一。~
= ~现在闭嘴，替我拿一会儿。你敢摔了它！我要开始了……首先，滴一滴我的血……~
IF ~~ DO ~SetGlobal("C0PaiNaKitthix","GLOBAL",5)~ EXIT
END

IF ~Global("C0PaiNaKitthix","GLOBAL",6)~ kitthix9
SAY ~啊哈！成了，正如我所料。我干嘛要怀疑自己？这不美吗？~
++ ~它……看着……像是沾满了血。~ + kitthix10
++ ~那它有什么不同？~ + kitthix11
END

IF ~~ kitthix10
SAY ~细节，细节。反正又不是给你的。~
IF ~~ + kitthix11
END

IF ~~ kitthix11
SAY ~我朋友的力量大增了，我知道……可究竟是哪些方面，我倒想知道？哦，我迫不及待要弄明白，诶嘿嘿嘿嘿嘿……~
= ~怎么样？！你还张着嘴傻站着干什么？去找一两个敌人来！我得马上试这召唤！~
IF ~~ DO ~SetGlobal("C0PaiNaKitthix","GLOBAL",7)~ EXIT
END

// Underdark

IF ~Global("C0PaiNaUnderdark","GLOBAL",1)~ ch5
SAY ~呸！我本希望不必来幽暗地域，可我们到了。~
++ ~对不起。我们会尽快找到出去的路。~ + ch5.1
++ ~我们还得找艾瑞尼卡斯和波迪。~ + ch5.2
++ ~我以为你更喜欢地下。~ + ch5.3
++ ~我们走吧。~ EXIT
END

IF ~~ ch5.1
SAY ~你最好守住这承诺，<CHARNAME>。~
IF ~~ + ch5.2
END

IF ~~ ch5.2
SAY ~我想我们还得去找你的敌人，不然你会日渐消沉。（叹气）可一想到待在这儿……~
++ ~你怕这地方吗，派娜？~ + ch5.4
++ ~我以为你更喜欢地下。~ + ch5.3
++ ~我们试着找路出去。~ EXIT
END

IF ~~ ch5.3
SAY ~这有区别，<CHARNAME>。地下是家。幽暗*地域*不是任何人的家。~
IF ~~ + ch5.5
END

IF ~~ ch5.4
SAY ~你不害怕才怪，<CHARNAME>。只要还在这里，我们的死也许比你想的来得早。~
IF ~~ + ch5.5
END

IF ~~ ch5.5
SAY ~若有什么可期待的，就是把我的蜘蛛放到我们遇上的卓尔渣滓身上。也许它们死前会懂这讽刺。~
IF ~~ DO ~SetGlobal("C0PaiNaUnderdark","GLOBAL",2)~ EXIT
END

IF ~Global("C0PaiNaUstNatha","GLOBAL",1)~ ustnatha
SAY ~*哼鼻* 我原以为外面的臭气已够糟。如今我怕是我处境的讽刺要先把我噎死。~
= ~我们非得陪那条过大的闪亮蜥蜴演这场闹剧？我宁可把这城夷平，也不愿走在里头。~
++ ~小声点！你不想我们被抓吧？~ + ustnatha1
++ ~我同你一样想。可要逃出去，我们就得这么做。~ + ustnatha2
++ ~你真以为我们能对抗一整座卓尔城？~ + ustnatha3
++ ~（无视她）~ + ustnatha4
END

IF ~~ ustnatha1
SAY ~你傻了，<CHARNAME>？那正是我要的。那会给我借口，把复仇倾泻在这些渣滓身上。~
IF ~~ + ustnatha5
END

IF ~~ ustnatha2
SAY ~呃……我驳不了这道理，虽然我很想。真该死，我干嘛非得离开平静的家，陪你干这蠢任务？~
IF ~~ + ustnatha5
END

IF ~~ ustnatha3
SAY ~我毫不怀疑我们迟早会被发现。至少我们先动手。~
IF ~~ + ustnatha5
END

IF ~~ ustnatha4
SAY ~……至少蜘蛛是自由的。这总算点什么。~
IF ~~ + ustnatha5
END

IF ~~ ustnatha5
SAY ~就……快点做……你在这儿打算做的任何事。你要在这恶臭的巢里害死我们，我下辈子一定来找你。~
IF ~~ DO ~SetGlobal("C0PaiNaUstNatha","GLOBAL",2)~ EXIT
END

// Search for witch

IF ~Global("C0PaiNaWitch","GLOBAL",1)~ witch
SAY ~嗯。我们钻出地面的这地方……我有点眼熟。我们一定在泰希尔森林，或者离它不远。~
= ~若真如此……<CHARNAME>，我有件事求你。~
++ ~什么事？~ + witch1
++ ~现在不说。~ + witch2
END

IF ~~ witch1
SAY ~我也许跟你说过，我在泰希尔森林里由一位森林女巫养大。这……是我很久以来离家乡最近的一次。~
= ~我想回去。那里有……一样我留下的东西，我得取回。~
++ ~你确定你不只是思乡？~ + witch3
++ ~你要找的是什么东西？~ + witch4
++ ~好，有时间我们就去。~ + witch5
++ ~也许以后。我们现在有更要紧的事。~ + witch6
END

IF ~~ witch2
SAY ~无论如何，听我说完。之后你也许能决定这事是否让你感兴趣。~
IF ~~ + witch1
END

IF ~~ witch3
SAY ~什么？胡说。只不过有件力量强大的物件，我离开时带不走，如今想得到它。~
IF ~~ + witch4
END

IF ~~ witch4
SAY ~详情我不知。那是一件魔法……物品，本是为了让进入训练最后阶段的群巢大师获得我前辈的知识。~
= ~那女巫用领我得到那力量的承诺钓着我，可到了时候又拒绝给我。我曾在深夜试着找到并偷走它，听见她醒来，我就逃了。~
= ~不过如今，我有足够的力量回去，取回我训练的最后一块……必要时用武力。希望你能看到手边多一份力量的价值，帮我这一把。~
++ ~你要为了一点力量去伤害你的养母？~ + witch7
++ ~可你连那东西是什么都不知道。~ + witch8
++ ~有机会我们就去泰希尔森林找。~ + witch5
END

IF ~~ witch5
SAY ~好。我宁愿不在这事上脏了自己的手。~
IF ~~ DO ~SetGlobal("C0PaiNaWitch","GLOBAL",2)~ UNSOLVED_JOURNAL @100001 EXIT
END

IF ~~ witch6
SAY ~哼。你这么快就推开这样的机会，真是蠢。可我宁愿不独自面对我旧日的师父……所以我只能指望你快点想通。~
IF ~~ DO ~SetGlobal("C0PaiNaWitch","GLOBAL",2)~ UNSOLVED_JOURNAL @100001 EXIT
END

IF ~~ witch7
SAY ~只有必要时才动手。这就是你想听的，对吧？我还没无知到不感激她教过我的东西。~
= ~可背叛我的是她。她把力量吊在我眼前，让我吃尽苦头成为真正的群巢大师，然后在我准备好时把它拿走。~
= ~你有一手好口才，<CHARNAME>。你不知怎么说服了我，让我相信离开地下安全的圣所来参加这趟疯险是个好主意。也许你甚至能说服她交出那东西。~
++ ~好吧。有机会我们就去。~ + witch5
++ ~我们现在没时间。~ + witch6
END

IF ~~ witch8
SAY ~我有个猜测……它一定很小，便于藏匿携带……我师父提过，是她和一圈群巢大师一同造出，并从高森林带回来的……也许是个小饰物之类。~
= ~可我见到就会认得。这对你够了吗，<CHARNAME>？~
++ ~你要为了一点力量去伤害你的养母？~ + witch7
++ ~好，有时间我们就去。~ + witch5
++ ~也许以后。我们现在有更要紧的事。~ + witch6
END

// Has Bebilith Extract

IF ~Global("C0PaiNaBebilithVenom","GLOBAL",1)~ b1
SAY ~终于。成为真正群巢大师的最后一道试炼，就在我手里……直到今天，我每天都在梦见这一刻。~
++ ~你师父的死一点都没影响到你？~ DO ~SetGlobal("C0PaiNaBebilithVenom","GLOBAL",2)~ + b1.1
++ ~你确定要喝那东西？看看它把你师父变成了什么。~ DO ~SetGlobal("C0PaiNaBebilithVenom","GLOBAL",2)~ + b1.2
++ ~那么？你打算拿它怎么办？~ DO ~SetGlobal("C0PaiNaBebilithVenom","GLOBAL",2)~ + b1.3
END

IF ~~ b1.1
SAY ~哼。她知道接受这试炼的风险。她死是因为她没有撑过去的毅力。那与我无关。~
= ~可是……我不能否认我感激她多年教导养育我。若她没做那个选择，那么……~
IF ~~ + b1.4
END

IF ~~ b1.2
SAY ~这是群巢大师德鲁伊抵达力量巅峰的试炼。我若要成为我能成为的最强的蜘蛛守护者，就必须做。别无选择。~
= ~虽然……我并不羡慕我故去师父的命运。哪怕活下来，那痛苦据说也永不彻底消失。我不知道我能否接受……~
IF ~~ + b1.4
END

IF ~~ b1.3
SAY ~耐心。我想再欣赏它一会儿。~
IF ~~ + b1.5
END

IF ~~ b1.4
SAY ~呸！这无关紧要。这事我只能信自己的力量。我为这一刻准备了一辈子……难道我注定不该成功？~
IF ~~ + b1.5
END

IF ~~ b1.5
SAY ~我不能否认这危险。这试炼据说危险到多数群巢大师连试都不敢试。我师父的命运就是前车之鉴。~
= ~不过，我几乎确信我能活下来。你怎么看，<CHARNAME>？虽然羞于承认，我敬重你到愿意考虑你的意见。~
++ ~我觉得你该喝。你若有信心，我相信你能活着撑过去。~ + b1.6
++ ~不，这太危险。你不该只为一点力量拿命去赌。~ + b1.7
++ ~我没法替你决定。~ + b1.8
END

IF ~~ b1.6
SAY ~是……我不该怀疑自己。如我所说，我为这一刻准备了一辈子。我若相信自己能成，就没有理由犹豫。~
= ~我准备好了。我若真从里面化掉，给我留点尊严，转过头去。~
IF ~~ DO ~TakePartyItem("c0ppotn") UseItem("c0ppotn",Myself)~ SOLVED_JOURNAL @100002 EXIT
END

IF ~~ b1.7
SAY ~哼。那你又要我怎么办？~
++ ~你不必用这么危险的方式追求力量。你还有无数年去找别的法子。毁了它。~ + b1.9
++ ~也许你该先留着。等你更强了，活下来的可能更大。~ + b1.10
++ ~再想想，你若确信自己不会死，那就喝吧。~ + b1.6
END

IF ~~ b1.8
SAY ~*哼鼻* 我不该指望你能给个有用的答案。我想也不必急。~
= ~也许我先留着。等我把身体练到能承受它的药力，再喝下去，得到我天职的真正力量。~
= ~够了。我们在这儿浪费够多了。~
IF ~~ DO ~TakePartyItem("c0ppotn")~ SOLVED_JOURNAL @100002 EXIT
END

IF ~~ b1.9
SAY ~啧……我想我不必拿命去赌。我还得为我蜘蛛着想……*哼鼻* 再说没我帮忙，你也没法自理，尤其他现在这副惨状。~
= ~没有它我也会胜过师父。也许将来，我会按我自己的条件接受这最后试炼。~
= ~……好了。现在后悔也晚了。我们走。~
IF ~~ DO ~DestroyItem("c0ppotn")~ SOLVED_JOURNAL @100003 EXIT
END

IF ~~ b1.10
SAY ~哼。说得对。我可以再等等，等我更强。那时我必有把握成功。~
= ~那我就先留着它。现在干你的活，带我们这伙乌合之众走吧。~
IF ~~ DO ~TakePartyItem("c0ppotn")~ SOLVED_JOURNAL @100002 EXIT
END

// Drank Bebilith Extract, survived

IF ~Global("C0PVENOM","GLOBAL",3)~ p1
SAY ~唔……唔唔唔嗯嗯嗯——！~
++ ~你还好吗？~ DO ~SetGlobal("C0PVENOM","GLOBAL",4)~ + p2
END

IF ~~ p2
SAY ~不……不好，你这蠢货！我的血……我的血像在*烧*！呃……这痛，好痛，太痛了……~
++ ~你该听你导师的。~ + p3
++ ~我能做点什么帮你吗？~ + p4
++ ~至少它让你更强了？~ + p5
END

IF ~~ p3
SAY ~闭嘴！你什么都不懂，<CHARNAME>！她……她知道我要付的代价，如果我……我……~
IF ~~ + p6
END

IF ~~ p4
SAY ~不！闭嘴，你的话像木槌敲锣砸在我头上！我需要……安静……~
IF ~~ + p6
END

IF ~~ p5
SAY ~力量……？是，这……这一切都是为了力量。可是……~
IF ~~ + p6
END

IF ~~ p6
SAY ~我——我能感觉到……知识与力量在我体内奔流。我的蜘蛛……它们跟我说话，一如往常，可我现在听得更清楚了……~
= ~我师父，她……她太弱，没过试炼。可我强。所以我……所以我还活着。可是……这不像是胜利。~
= ~我现在该怎么办？我终于得到了我想要的，可是……我觉得我再也不会是从前的我了。~
++ ~你该留在我身边。至少等你感觉好些。~ + p7
++ ~我可以利用你得到的力量。~ + p7
++ ~那由你决定。~ + p7
END

IF ~~ p7
SAY ~我想除了暂时跟着你，也别无可做。毕竟没我的力量，你也没法自理。~
= ~呃……血管里的灼烧在退，却仍在啃噬我。快点领路，<CHARNAME>。也许拿我新得的力量做点试验，能压住这痛。~
IF ~~ DO ~AddXPObject("C0PaiNa",50000)~ EXIT
END
END

BEGIN SPIDFGSU