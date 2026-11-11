// SoA

CHAIN
IF ~InParty("L0Will")
See("L0Will")
!StateCheck("L0Will",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaWill1","GLOBAL",0)~ THEN BC0PAINA C0PainaWill1
~那么，灵体，你真的自死后就一直待在那石窟里？~
DO ~SetGlobal("C0PainaWill1","GLOBAL",1)~
== L0WILLB ~对。~
== BC0PAINA ~听起来……不错。你身处懂你的人中间，远离无知粗人的影响。我甚至要说，你离开的决定很蠢。~
== L0WILLB ~我想念视界蜂巢的灵体们，可我觉得我能对<CHARNAME>有用。你离开不也是同样的理由吗，派娜？~
== BC0PAINA ~呸。你似乎把我误当成慷慨之人，鬼魂。~
== L0WILLB ~那你为何离开？当然，若你不介意我问。~
== BC0PAINA ~无聊，灵体。是无聊把我从家和同族的安全中拉了出来……不过我猜，对你这样无时限的存在，那是个陌生的概念。~
EXIT

CHAIN
IF ~InParty("L0Will")
See("L0Will")
!StateCheck("L0Will",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaWill2","GLOBAL",0)~ THEN BC0PAINA C0PainaWill2
~怎、怎么了，灵体？！你干嘛非盯着我看个不停？你看不出我正忙？~
DO ~SetGlobal("C0PainaWill2","GLOBAL",1)~
== L0WILLB ~我——我很抱歉。我没意识到自己多无礼。我只是被你的活计迷住了。~
== BC0PAINA ~哼，你该如此。与毒打交道是精细又危险的手艺。我不指望你这种人能懂。~
== L0WILLB ~精细那部分也许不懂，可我对毒有多危险再熟悉不过。毕竟，夺走我性命的就是它。~
== BC0PAINA ~我明白了。~
== L0WILLB ~希望我没太打搅你。其实，我敬重你所做的事，派娜。若我活着时有你这么多学问，也许我就活下来了。~
== BC0PAINA ~哼。我看死亡给你的智慧比生前多。好吧。你若觉得能学到什么，就看着。只是别打断。~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("L0Will",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaWill3","GLOBAL",0)~ THEN L0WILLB C0PainaWill2
~你对我们遇见的每个人类都敌视，哪怕你不认识他们。你为什么这么怕人？~
DO ~SetGlobal("C0PainaWill3","GLOBAL",1)~
== BC0PAINA ~我不是“怕”人。我只是不喜欢他们。~
== L0WILLB ~因为他们不懂你？~
== BC0PAINA ~他们若能听，耳朵和脑子够清楚，就能懂。他们只是不肯，因为他们无知。~
== L0WILLB ~我不确定我离家前周围那些人真的懂我。可我也不会说他们无知。只是……不同。~
== BC0PAINA ~哼。在他们眼里，“不同”的是我们。我们是怪物，我们的看法古怪，因此不值得听。我说：随他们怎么想，见鬼去吧。~
== L0WILLB ~你说“我们”。那是不是说你觉得我们的处境相似？~
== BC0PAINA ~我从没那样说。~
EXIT