BEGIN C0Paina

IF WEIGHT #-1 ~Global("C0PainaMet","GLOBAL",0)~ THEN b1
SAY ~你在此有何事，擅入者？我的孩儿们不喜你的存在，我劝你快走。~
++ ~你的孩儿们？你在这儿做什么？~ EXTERN C0Paina b1.1
++ ~没什么。我这就走。~ EXTERN C0Paina b1.2
++ ~我是来取你性命的！~ EXTERN C0Paina b0
END

IF WEIGHT #-1 ~Global("C0PainaMet","GLOBAL",1)~ THEN b2
SAY ~你又*回来*了？快滚，免得我让孩子对付你！~
++ ~你的孩儿们？你在这儿做什么？~ EXTERN C0Paina b1.1
++ ~没什么。我这就走。~ EXTERN C0Paina b1.2
++ ~我是来取你性命的！~ EXTERN C0Paina b0
END

APPEND C0Paina

IF ~~ b0
SAY ~你竟敢？！~
= ~我的蜘蛛，停止进食！新的猎物来了！守住你们的家！~
IF ~~ DO ~ActionOverride("SPBene",ReallyForceSpell(Myself,SPIDER_CHANGE))
ActionOverride("SPPhil",ReallyForceSpell(Myself,SPIDER_CHANGE))
ActionOverride("SPSamar",ReallyForceSpell(Myself,SPIDER_CHANGE))
ActionOverride("SPTredd",ReallyForceSpell(Myself,SPIDER_CHANGE))
Enemy()~ EXIT
END

IF ~~ b1.1
SAY ~这不关你的事。不过……我今天有耐心，就破例迁就你一次。~
= ~我叫派娜。我是群巢大师德鲁伊。换句话说，我的职责是照料在这座恶心城市深处安家的蛛形类。~
++ ~你为*蜘蛛*建了一座圣所？~ + b1.3
++ ~既如此，我便不打扰你。~ + b1.10
++ ~话够了。该死了！~ + b0
END

IF ~~ b1.2
SAY ~那就快点！快到喂食时辰了，你若还留着，我就拿你的尸体上菜。~
IF ~~ DO ~SetGlobal("C0PainaMet","GLOBAL",1)~ EXIT
END

IF ~~ b1.3
SAY ~没错。我这群可怜的孩子，被这城里成群的白痴人类只当成害兽与害虫。总得有人为它们尽这份职责。~
= ~你是来清剿我孩儿们的？还是另有别的事才来？~
++ ~你就在这儿照料蜘蛛？从不出去？~ + b1.4
++ ~你的肤色好怪……你是卓尔？~ + b1.5
++ ~不。我不打扰你。~ + b1.10
++ ~话够了。该死了！~ + b0
END

IF ~~ b1.4
SAY ~不。就算我不是因半卓尔的血就身处险境，我也没有理由离开。这地方是我的家，也是我孩儿们的家。~
++ ~听起来是个孤独的活法。~ + b1.6
++ ~我不打扰你。~ + b1.10
++ ~话够了。该死了！~ + b0
END

IF ~~ b1.5
SAY ~是*半*卓尔。我本想要求你记住这一点，可这对我没多要紧。不像你们那些带偏见的地面亲族，蜘蛛毫不在乎我的血统。~
++ ~你就在这儿照料蜘蛛？从不出去？~ + b1.4
++ ~不。我不打扰你。~ + b1.10
++ ~话够了。该死了！~ + b0
END

IF ~~ b1.6
SAY ~这……这对你来说意味着什么，<PRO_RACE>？~
++ ~你可以跟我走。我用得上一个娴熟的德鲁伊，而且你在我身边时，我能保护你。~ + b1.7
++ ~不。我不打扰你。~ + b1.10
++ ~话够了。该死了！~ + b0
END

IF ~~ b1.7
SAY ~我为何要加入你们的队伍？我在此地很满足。~
++ ~我不觉得你满足。你若不要人作伴，早该攻击我，或者叫我滚了。~ + b1.8
++ ~你若走进更大的世界，而不是留在这儿，能为你的孩儿们做更多。~ + b1.8
++ ~既如此，我不打扰你。~ + b1.10
++ ~话够了。该死了！~ + b0
END

IF ~~ b1.8
SAY ~（叹气）你既固执又烦人。可我不能否认你的话有几分道理……~
= ~好吧。你若不惧一个半卓尔和她的蜘蛛在场，我就跟你走。这也许能帮我照料我的孩儿们……而且我承认，我也厌倦了与世隔绝。~
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + ~也许我该先告诉你，我要去救一位被兜帽法师扣作人质的老朋友。这可能有相当大的风险。~ + b1.9
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + ~你该知道，我在追捕一个名叫艾瑞尼卡斯的强大法师。其中会有不小的危险。~ + b1.9
++ ~那我们就走。~ DO ~JoinParty()~ EXIT
END

IF ~~ b1.9
SAY ~你的目标与打算于我无关。我觉得合适多久，就跟你多久。走吧。~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ b1.10
SAY ~你很明智。这回我原谅你的闯入。现在滚吧。~
IF ~~ DO ~SetGlobal("C0PainaMet","GLOBAL",2)~ EXIT
END

IF ~Global("C0PainaMet","GLOBAL",2)~ b3
SAY ~你回来了。我的孩儿们过得不错，可你的存在让它们不安。你想要什么？~
++ ~我想让你跟我走。~ + b2.1
++ ~没什么。~ + b2.2
END 

IF ~~ b2.1
SAY ~好吧。我的蜘蛛暂且能自理。我们快点让它们安宁。~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ b2.2
SAY ~那就别来烦我。~
IF ~~ EXIT
END

END