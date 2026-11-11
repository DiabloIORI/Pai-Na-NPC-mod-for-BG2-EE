BEGIN C0Pai25

IF ~Global("C0PainaSummoned","GLOBAL",1)~ b1
SAY ~那么，你现在能随心所欲召唤我了？真麻烦。~
++ ~抱歉，派娜。~ DO ~SetGlobal("C0PainaSummoned","GLOBAL",2)~ + b1.1
++ ~你近来在做什么？~ DO ~SetGlobal("C0PainaSummoned","GLOBAL",2)~ + b1.1
END

IF ~~ b1.1
SAY ~分别之后，我一直想在精灵之城附近建一座新圣所。可惜你把我从森林里拉到……这不知何处，我只好放弃那计划了。~
= ~你若还需要我，我想换别人作伴只会更糟。我们这就走吗，<CHARNAME>？~
++ ~是。跟我来。~ + b1.2
++ ~先在这儿等我。~ + b1.3
END

IF ~~ b1.2
SAY ~如你所愿。~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ b1.3
SAY ~你把我从我的活计里拉出来，就为了……等。真叫人期待。（叹气）遵命。~
IF ~~ DO ~MoveToPointNoInterrupt([1717.1717]) Face(0)~ EXIT
END

IF ~Global("C0PainaSummoned","GLOBAL",2)~ b3
SAY ~嗯，这地方真是*无聊*透顶。我宁愿离开这儿。~
++ ~那就跟我来。~ + b1.2
++ ~再等一会儿。~ + b3.2
END 

IF ~~ b3.2
SAY ~说得好像我有得选。~
IF ~~ EXIT
END