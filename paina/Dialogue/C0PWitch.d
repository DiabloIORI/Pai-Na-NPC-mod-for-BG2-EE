BEGIN C0PWITCH

CHAIN IF WEIGHT #-1
~See("C0Paina")
Global("C0PaiNaWitch","GLOBAL",2)~ THEN C0PWITCH encounter1
~好，好，好。看来那任性野性的孩子终于肯回家了，是吧？太久了，亲爱的。~ [C0BLANK]
DO ~SetGlobal("C0PaiNaWitch","GLOBAL",3)~
END
++ ~谁在那儿？~ EXTERN C0PAINAJ encounter2
++ ~那、那蜘蛛在说话？~ EXTERN C0PAINAJ encounter2
++ ~它是在跟你说话吗，派娜？~ EXTERN C0PAINAJ encounter2

CHAIN C0PAINAJ encounter2
~师父，你那点小把戏多年前就让我厌了。行行好，现身吧，免得我在<CHARNAME>面前让你难堪。~
== C0PWITCH ~如你所愿。~
DO ~ClearAllActions() StartCutsceneMode() StartCutscene("C0PWITCS")~ EXIT

CHAIN IF WEIGHT #-1
~Global("C0PaiNaWitch","GLOBAL",3)~ THEN C0PWITCH encounter3
~那么是什么把强大的群巢大师派娜，那个坚称已超越她卑微师父的人，带回她曾称为家的地方，嗯？是想我炖的汤了？盼着温馨重聚？~
= ~还是你又为那仪轨而来，孩子？我记得你走前那么拼命想找它。真可惜你没来道别。~
== C0PAINAJ ~我若留下，你会罚我，就像你一向那样。我离开是为我自己好。~
== C0PWITCH ~你这么以为。你总爱妄下结论，派娜。我教过你用脑子想，而不是用心，不是吗？~
== C0PAINAJ ~……~
== C0PWITCH ~你是个聪明的孩子，一向急着学。看来太急了……我原以为最后训练的远景会教你耐心，可它似乎给了你相反的。~
== C0PAINAJ ~它在哪，师父？我只要那个。你给我，我们可以平安分手。~
== C0PWITCH ~我倒想知道，你为了得到它愿意做什么？你会伤害你的师父，那个你曾当作母亲的人，来取走它吗？~
== C0PAINAJ ~我……我从没把你当母亲。我知道我母亲是谁。你连她一根蜡烛都比不上。~
== C0PWITCH ~确实。我无法指望与那位勇敢的灵魂相比——她临终之际，心里想的还是把你送到我怀里。~
== C0PWITCH ~可我敬重她，就像你一样，所以我收下了你，按我的方式训练你，好让你有所成就。~
== C0PAINAJ ~够了。我不是来听这些的。你不给我仪轨，我就用武力夺取。~
== C0PWITCH ~啊，可你不必。它……就……在这儿。~
END
++ ~那小瓶子真是它吗，派娜？~ EXTERN C0PAINAJ encounter4
+ ~CheckStatGT(Player1,14,INT)~ + ~有什么不对。女巫，我们说话这会儿，你好像越来越苍白。~ EXTERN C0PWITCH encounter5
++ ~那么？你给不给我们？~ EXTERN C0PAINAJ encounter4

CHAIN C0PAINAJ encounter4
~就是这个……这就是我追寻的东西，一定是！~
== C0PWITCH ~是吗？你确定这不是又一个圈套？~
== C0PAINAJ ~我了解你，师父。你有许多圈套，可你最会骗人的时候，恰恰是你最诚实的时候。你想让我以为那瓶子是假的，好让我起疑。我不会上当。~
== C0PWITCH ~好吧。你若仍想要，它就是你的。可是……你知道这仪轨真正意味着什么？~
== C0PAINAJ ~什么？这又是你的圈套之一吗，师父？~
== C0PWITCH ~没圈套，派娜。我再没工夫玩圈套了……啊！~
END
++ ~怎——怎么了？~ EXTERN C0PAINAJ encounter6
++ ~她在吐血……黑血！~ EXTERN C0PAINAJ encounter6

CHAIN C0PWITCH encounter5
~你不必操心，巴尔之子。这是……一次实验出了岔子的后果。~
EXTERN C0PAINAJ encounter4

CHAIN C0PAINAJ encounter6
~这是什么？你对自己做了什么，师父？！~
== C0PWITCH ~看来我……犯了个可怕的错误。我……啊！我骗了你，亲爱的。~
== C0PWITCH ~我告诉你我多年前做过仪轨。我……我没有。~
== C0PAINAJ ~你……你没有？这所谓的仪轨到底存在吗？！~
== C0PWITCH ~哦，它存在。可——可我……失败了。~
== C0PWITCH ~这药水……不是药水。是毒，用许多致命成分调成……其中最危险的……呃！比贝利斯毒液。~
== C0PAINAJ ~比——比贝利斯……毒液？~
END
+ ~CheckStatLT(Player1,16,INT)~ + ~比贝利斯毒液是什么？~ EXTERN C0PAINAJ encounter7
+ ~CheckStatGT(Player1,15,INT)~ + ~怎么可能？比贝利斯毒液一接触空气几乎立刻失效！~ EXTERN C0PWITCH encounter8

CHAIN C0PAINAJ encounter7
~比贝利斯是……一种魔蛛，<CHARNAME>，一种不自然的掠食者。连群巢大师的抗性也未必够撑过它的毒……谁能熬过这样的仪轨？~
== C0PWITCH ~有些人……有那份力量。我……没有。~
== C0PAINAJ ~你对自己做了那仪轨？你疯了，师父？看看它把你变成了什么！~
== C0PWITCH ~也许吧。可我……必须知道。若有一线可能……我能活下来，那我……就得试一试。这样我才知道你……你也能成功。~
== C0PWITCH ~我要死了，派娜……橡树之父借我时间警告你，可……那也快到头了。我拦不住你去做这仪轨……但你必须知道，这……这也可能发生在你身上。~
== C0PAINAJ ~我……~
== C0PWITCH ~可你该知道，我……我错了。我不该……不给你这个选择。我后悔……让这事把我们分开。~
== C0PAINAJ ~师父……？~
== C0PWITCH ~你于我不过是个学生，跟许多别人一样，可你……特别。你那时只是个孩子……我教你越多，就越……在乎你。~
== C0PWITCH ~我用最严苛的训练磨你，想跟你拉开距离，可是……当你来到我面前，眼里闪着那光，说你准备好了，我……我下不了手。~
== C0PWITCH ~所以我拒绝让你喝那毒。我把它藏起来，对自己说：“再一次考验，等她准备好之前再一次。”我想不出那会在你心里积下多少怒火。~
== C0PAINAJ ~可——可我……我以为你……~
== C0PWITCH ~你以为我拒绝是因为我看不起你？恰恰相反，孩子。你真的是比我所能成为的更伟大的德鲁伊。我为你骄傲得不能再骄傲……知道我没辜负你母亲，我很高兴。~
== C0PWITCH ~你若有生你的那个女人同样的力量，那么……我相信你能活下来。现在……现在我明白了。那么……你要怎么做，派娜？~
== C0PAINAJ ~我……我要怎么做？我不知道……~
== C0PWITCH ~想一想。你跟我不同，你有时间……可现在我……该告别了。终于，我体内这灼痛要……结束了。~
== C0PAINAJ ~我……再见了，师父。~
== C0PWITCH ~我回归自然了……啊，要是我能听你叫我一声“母亲”……~
DO ~Kill(Myself)~ EXIT

CHAIN C0PWITCH encounter8
~那是……一个秘密，只有诸国度少数制毒大师和……群巢大师知道。正因如此，这……这仪轨才如此罕见……如此危险。~
EXTERN C0PAINAJ encounter7