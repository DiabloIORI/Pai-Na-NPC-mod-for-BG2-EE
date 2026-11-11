BEGIN BC0PAI25

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaAerieToB","GLOBAL",0)~ THEN BAERIE25 C0PAINAAERIEToB
~你还会觉得……自己不属于这里吗，派娜？我开始觉得你……已经接受我们了。~
DO ~SetGlobal("C0PainaAerieToB","GLOBAL",1)~
== BC0PAI25 ~什么？胡说。我从没那样想过。~
== BAERIE25 ~你确定？你不再像从前那样跟我们保持距离了。昨晚吃饭时你还坐到我旁边。~
== BC0PAI25 ~那、那是……是你一个人坐着，不是我。我那是出于怜悯。~
== BAERIE25 ~*咯咯笑* 你心里其实很善良，对吧？也许一开始不是，可交朋友会让人变成这样。不过承认一下也无妨。~
== BC0PAI25 ~*哼鼻* 我才不会承认，艾黎。~
== BAERIE25 ~哦！~
== BC0PAI25 ~嗯……怎么？~
== BAERIE25 ~你、你刚才叫了我的名字。~
== BC0PAI25 ~那……那是一时说漏了嘴。~
== BAERIE25 ~嘻嘻……当然。不过我想，这说明我们现在真的能做朋友了。~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaAnomenToB","GLOBAL",0)~ THEN BANOME25 C0PAINAANOMENToB
~我在想，派娜。你若真如你所说，不侍奉任何神明、不为任何更高的目标，那是什么驱使你向前？没有目标，你理当没有前进的动因。~
DO ~SetGlobal("C0PainaAnomenToB","GLOBAL",1)~
== BC0PAI25 ~我有目标，铁脑袋。我只是怀疑它太简单，你领会不了。~
== BANOME25 ~至少迁就我一下。我总该知道我同行者的动机。~
== BC0PAI25 ~现在问这个有点晚了吧？不过，好吧，我就成全你。首要的，是保护和养育我照护的孩儿们。可除此之外……~
== BANOME25 ~是什么？~
== BC0PAI25 ~我厌倦了对外面的世界……一无所知，这么说吧。我想亲眼看看你们这类人所谓的生活。~
== BANOME25 ~好吧。这目标我能体会。我不会再追问你这个。~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaCerndToB","GLOBAL",0)~ THEN BCERND25 C0PAINACERNDToB
~派娜，你若不再远远地观察我，而是直接来求教，你能学到的东西会多得多。凡我精通的知识，我随时愿意教人。~
DO ~SetGlobal("C0PainaCerndToB","GLOBAL",1)~
== BC0PAI25 ~*哼鼻* 谁、谁说需要指点了？我只是好奇我们的做法是否不同。~
== BCERND25 ~说真的，派娜，我看不出你为何这么反感被教导。对你这样把职责看得极重的人来说，这更显得幼稚。~
== BC0PAI25 ~……我小时候也有过一位导师。她的功课……苦得很。那不是我人生中愉快的一段。~
== BCERND25 ~这无疑影响了你对别的德鲁伊的印象。但我向你保证，我们并非都一样。我的学生从没说过我是严厉的老师。~
== BC0PAI25 ~但我肯定你被人说过无聊无数次。好吧……既然我别无选择，我就来找你……“老师”。~
EXIT

CHAIN 
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaEdwinToB","GLOBAL",0)~ THEN BC0PAI25 C0PAINAEDWINToB
~什么？你为什么盯着我，法师？你要是又想要一份毒液样本，我给你的已经超过你应得的，所以……~
DO ~SetGlobal("C0PainaEdwinToB","GLOBAL",1)~
== BEDWIN25 ~哦，不，你尽管继续无视我，若你愿意。（并不是说你该这样……）~
== BC0PAI25 ~这可稀罕。平常你缠着我要法术材料停不下来。有话就吐出来，免得我连你的舌头一起扯下来！~
== BEDWIN25 ~好吧……（说话小心些……）自从我们穿过幽暗地域那些阴惨的隧道，我一直在琢磨你。~
== BC0PAI25 ~阴惨，这个说法我同意。这到底跟我有什么关系？~
== BEDWIN25 ~那黑暗叫人难受，但我不能否认那些黑暗精灵有一种……超凡的魅力。可惜你只有一半血统，可正因如此，你身上有几样我欣赏的、熟悉的人类特征。~
== BC0PAI25 ~啧……你的话我越听越不喜欢……~
== BEDWIN25 ~我不需要你听我说。（不过不听就是蠢。）不，我只需要一个方便的角度看你的侧影，好……细看。我们彼此都不必说一个字。~
== BC0PAI25 ~*嘶* 果然，你的心思跟其他那些猪猡一样！记住我的话，你会为你的盯视后悔，你这恶心……下贱的……人类！~
EXIT

CHAIN 
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaHaerdalisToB","GLOBAL",0)~ THEN BC0PAI25 C0PAINAHAERDToB
~呸，这安静的气氛，连我这偏好也很快受不住了。你，那边，诗人！弹你的琴。~
DO ~SetGlobal("C0PainaHaerdalisToB","GLOBAL",1)~
== BHAERD25 ~……~
== BC0PAI25 ~你聋了？我的话没传到你耳里？~
== BHAERD25 ~请恕罪，我幽暗的寡妇，可我记得，上次说话时你要求我做的，顶多就是彻底安静。那么，如今你又要我做什么？~
== BC0PAI25 ~哦，真机灵，乐师。拿我自己的话来堵我，是吧？也许往你耳朵里滴点毒，你会更愿意听。~
== BHAERD25 ~正相反，亲爱的，我非常乐意奏一支欢快的曲子。毕竟那是我的天职。不过得有个……报酬。~
== BC0PAI25 ~报酬？！*嘶* 我会后悔问的，可你到底想从我这儿要什么？~
== BHAERD25 ~嗯，要什么呢……也许一个友好的吻？让这只麻雀咬一口耳朵？我的许多仰慕者都挺受用。~
== BC0PAI25 ~*不*。~
== BHAERD25 ~*笑* 好吧，我的黑寡妇，我只是逗你。作为我的服务，我想只要说出那句魔法话就够了。~
== BC0PAI25 ~魔法话——呃，我知道你要什么了。好吧——请。~
== BHAERD25 ~哎呀，你几乎不必开口，亲爱的！~
== BC0PAI25 ~总有一天，诗人，我会亲手杀了你，我发誓……~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaImoenToB","GLOBAL",0)~ THEN BIMOEN25 C0PAINAIMOENToB
~嘿，你知道吧，派——~
DO ~SetGlobal("C0PainaImoenToB","GLOBAL",1)~
== BC0PAI25 ~什么？！这回你又想干什么，你这蠢材？~
== BIMOEN25 ~哇，脾气真大！你又是在床的另一边醒来的？*咯咯笑*~
== BC0PAI25 ~你若是指又一次在蜜糖和蚂蚁铺的床上醒来，那我算是。顺便说，这事你会付出代价。~
== BIMOEN25 ~嘻嘻。你没证据那是我干的。~
== BC0PAI25 ~我相信只要动机合适，你会招认的。还有那次你偷我内衣、把我的草药换成陈茶叶、往我包里塞那只假蜘蛛……~
== BIMOEN25 ~哦，那次太棒了！你真该看看你发现它为什么不动时的表情！哈哈！~
== BC0PAI25 ~对你也许好笑，可那是我见过最恐怖的东西。~
== BIMOEN25 ~好，我明白了，对不起。不再拿你的蜘蛛癖开玩笑了，派。对了，我差点忘了我为什么叫住你。~
== BC0PAI25 ~呃……什么？~
== BIMOEN25 ~这只……大蜘蛛是你的？~
== BC0PAI25 ~你——！马上放了它！~
== BIMOEN25 ~好，好。可我看不出还能是谁把它藏在我枕头底下。这是你报复我的手段，对吧？~
== BC0PAI25 ~……~
== BC0PAI25 ~至少希望她让你尖叫了……呸……~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaJaheiraToB","GLOBAL",0)~ THEN BJAHEI25 C0PAINAJAHEIRAToB
~我们的旅行结束后，你会回森林里的家吗，派娜？~
DO ~SetGlobal("C0PainaJaheiraToB","GLOBAL",1)~
== BC0PAI25 ~我为什么要回去？那里什么也没剩下。~
== BJAHEI25 ~我以为，既然你的导师过世了，你会接替她留下的位置。至少，那比回阿斯卡特拉地下的墓穴更能施展你的才能。~
== BC0PAI25 ~那儿还有许多同伴留在我身后。再说，这趟任务之后我做什么，是我自己的事。~
== BJAHEI25 ~也许我无权指使你的行动，派娜，但作为你的长辈，我觉得有责任给你忠告，好让你的才能最终有益于自然。~
== BC0PAI25 ~我想那也就是说，我至少没有义务听？~
== BJAHEI25 ~你尽可抛弃我的意见，但我怀疑你在别处找不到真正的归宿，除了你真正的家。趁还有时间，想想吧。~
== BC0PAI25 ~哼。我会……考虑的。再在自然中生活，也许真不是坏主意……~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaJanToB","GLOBAL",0)~ THEN BJAN25 C0PAINAJANToB
~我说，派娜——~
DO ~SetGlobal("C0PainaJanToB","GLOBAL",1)~
== BC0PAI25 ~走开。~
== BJAN25 ~哦，别这样，这就是你对待你最爱的侏儒的方式？~
== BC0PAI25 ~你们这类人里没有我最爱的；就算有，你也不会被考虑在内。~
== BJAN25 ~哼，真无礼！我到底做了什么，让你这么不愿看见我？~
== BC0PAI25 ~你*做了什么*？还不够多！跟你在一起，永远不够。每次我倒霉跟你开口，你就长篇大论萝卜，或者某个不知名的亲戚，或者租我孩儿们的胡话，或者……呃，我干嘛还跟你说话？~
== BJAN25 ~嗯，那些我大概都干过一次。也许两次。也许再多几次。可这次，我真的只有一个简短、诚实、无辜的问题。看见我诚实的笑容了吗？你可以信那笑容，派。~
== BC0PAI25 ~有话就说，快点了结！我倒想知道这回你那张烂嘴要扇多久？！~
== BJAN25 ~你要不要来点腌萝卜？我们上回吃饭有一阵了，我好像听见你走路时肚子在叫，所以……~
== BC0PAI25 ~……~
== BJAN25 ~你从没吃过吧？你连尝一口都不肯就拒绝？~
== BC0PAI25 ~*咕噜噜* 呃！好吧！~
EXIT

CHAIN 
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaKeldornToB","GLOBAL",0)~ THEN BC0PAI25 C0PAINAKELDORNToB
~你……还好吧，老骑士？我想自上次治疗之后，没有突然的疼痛吧？~
DO ~SetGlobal("C0PainaKeldornToB","GLOBAL",1)~
== BKELDO25 ~我尽量好着，派娜。你在担心？~
== BC0PAI25 ~担心？呸。你若因治疗不足而倒下，多少也算我的责任。~
== BKELDO25 ~哈！别怕，姑娘，这些老骨头哪天不行了，责任是我的，不是你的。~
== BC0PAI25 ~别……这么说。你这话听起来像你随时会死。~
== BKELDO25 ~我怕我的时辰快到了，前后差不了几年。哪天你听说我过世，希望你还念着我的好。~
== BC0PAI25 ~闭嘴，老头……有我在，你不会死。只要我还能做主。~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaKorganToB","GLOBAL",0)~ THEN BKORGA25 C0PAINAKORGANToB
~蜘蛛婆娘！过来，我靴子底下有些蛛网，我得找人帮我清掉，嘿！~
DO ~SetGlobal("C0PainaKorganToB","GLOBAL",1)~
== BC0PAI25 ~自己弄，你这矮小的巨魔。我会站远些，好压住惩罚你亵渎蛛网的冲动。~
== BKORGA25 ~哈！我本来就是开玩笑，姑娘。我想我要是辱你的小宝贝们，你会跳起来发火。~
== BC0PAI25 ~你的笑话跟你的人一样粗陋，矮人。我看你还是那么脏。~
== BKORGA25 ~我以满身油污和血为荣。*打嗝*~
== BC0PAI25 ~奇怪。你是城里人最坏的样子，可我们之中头一个进澡堂的却是我。这讽刺怕是要在你那臭味熏死我之前先噎死我。~
== BKORGA25 ~啊，继续骂，姑娘。你要不骂，我倒想念。~
== BC0PAI25 ~乐意之至，矮崽子。~
== BKORGA25 ~爱害虫的。~
EXIT

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaMazzyToB","GLOBAL",0)~ THEN BC0PAI25 C0PAINAMAZZYToB
~你的身高似乎是你羞愧的大源，半身人。为什么？~
DO ~SetGlobal("C0PainaMazzyToB","GLOBAL",1)~
== BMAZZY25 ~我得让你知道，我并无此羞愧，派娜。我想不出你为何这么想。~
== BC0PAI25 ~是吗？那么是我误会了你那显而易见的、迎战远大于你的敌人的热切？~
== BMAZZY25 ~我选择战斗，是出于必要，也为了保护他人，派娜，包括你自己。~
== BC0PAI25 ~我说过不是？我只是把你对身高的不安称作误会。~
== BMAZZY25 ~我再说一次，派娜，我坚持我并无此种不安……你刚是说“误会”？~
== BC0PAI25 ~你听得没错。蜘蛛可以很小，但它的精准与致命足以放倒巨人。我看你并无不同。在两条腿的里面，你就是蜘蛛。小，却危险。~
== BMAZZY25 ~嗯，我不能说这比喻是我头一个想到的，但从你嘴里出来，派娜，我就当是夸奖。~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaMinscToB","GLOBAL",0)~ THEN BMINSC25 C0PAINAMINSCToB
~派娜，我们——敏斯克和布布——一直在想……~
DO ~SetGlobal("C0PainaMinscToB","GLOBAL",1)~
== BC0PAI25 ~这对你准是新鲜体验。我猜这跟我有关？~
== BMINSC25 ~我们一起谈过我们的朋友，布布建议你该养一只仓鼠。~
== BC0PAI25 ~仓——我要一只恶心的小毛兽有什么用？！~
== BMINSC25 ~布布觉得派娜对付小生灵很有一套。他看见派娜和她的蜘蛛之间的友谊，就想也许仓鼠也能成为朋友。~
== BC0PAI25 ~我对仓鼠唯一的用处，就是给我孩儿们当点心，你这蠢货。你可知照料它们多麻烦？你该知道，毕竟你满脑子都是它们。~
== BMINSC25 ~怎么？派娜有养小仓鼠朋友的经验？~
== BC0PAI25 ~呃……我说多了。我师父养过许多品种的啮齿类，当蜘蛛的食。我得用手清它们的粪。恶心透了。~
== BMINSC25 ~原来如此。所以派娜只能把仓鼠看成食物。正因如此，你才该跟一只交朋友，看看它们是多么勇猛的小战士！~
== BC0PAI25 ~不！别再说什么……仓鼠！你的疯病快要传染了！~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaNaliaToB","GLOBAL",0)~ THEN BNALIA25 C0PAINANALIAToB
~我们同行有一阵了，派娜。我一直在想，你对“城里人”的看法有没有变一点。我们并非全是不看脚下路的无知粗人。~
DO ~SetGlobal("C0PainaNaliaToB","GLOBAL",1)~
== BC0PAI25 ~*哼鼻* 无论如何，我已看到证据，证明你至少聪明到愿意听、愿意学。再多就是得寸进尺了。~
== BNALIA25 ~想改变现状的不只你一个。我们都想把这个社会改得更好。~
== BC0PAI25 ~我早就对改变人类的行事方式不抱希望。照顾好我和我的人，就够了。~
== BNALIA25 ~可你不想要一个你的信念被听见的世界吗？人们学会尊重自己以外的生命，包括你照护的那些弱小动物？~
== BC0PAI25 ~那是你的乐观在说话。我怀疑人们不会像你命令的那样轻易改变。也许等你得到你追求的权力地位，那……但那不会落到我身上。我能为我关心的人做多少就做多少。再多就是痴心妄想。~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaSarevokToB","GLOBAL",0)~ THEN BSAREV25 C0PAINASAREVOKToB
~我看见<CHARNAME>这伙不成体统的队伍里多了张新面孔。你的故事是什么，半卓尔？又一个被马戏团赶出来、走投无路攀着<CHARNAME>脚跟的人？~
DO ~SetGlobal("C0PainaSarevokToB","GLOBAL",1)~
== BC0PAI25 ~你是在说你自己，还是说我，行尸？~
== BSAREV25 ~哈！说得好，德鲁伊。我竟无言以对。你似乎既不怕我，也不疑我，跟<CHARNAME>其他同伴不同。~
== BC0PAI25 ~我为何要？我对你一无所知。~
== BSAREV25 ~一无所知？不知道我在剑湾的统治，直到<CHARNAME>终结我的计划？也不知道<PRO_HISHER>梦中我的幻象？我很失望，我的名字竟没更大影响。~
== BC0PAI25 ~我听说过北方什么毒铁的胡话。我才不在乎那种事。若我想把那些城里人类拉下几分，我会想出更好的计划。~
== BSAREV25 ~是吗？那也许你好心指点我一下，我的计划哪里错了。~
== BC0PAI25 ~我若讲出我的计划，就不太可能成功了，对吧？蠢货。~
== BSAREV25 ~哈！你是个有趣的婆娘。我想我会享受认识这位新相识……~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaValygarToB","GLOBAL",0)~ THEN BC0PAI25 C0PAINAVALYGARToB
~游侠！我要你去采的那些材料，采到了吗？~
DO ~SetGlobal("C0PainaValygarToB","GLOBAL",1)~
== BVALYG25 ~我叫瓦里格，派娜。你若这样称呼我，我会自在得多。不过，是——你要的菌类和野草，我都采来了。~
== BC0PAI25 ~好。我想我该谢你帮忙。~
== BVALYG25 ~真的？我想我不常听见你谢别人，派娜。我有什么特别？~
== BC0PAI25 ~你是人类普遍愚蠢这一定律的例外之一。这话从我嘴里出来，已是极高的赞誉。你值得称赞……也值得感谢。~
== BVALYG25 ~是吗？我不能说我对你那种对人类的态度感到舒服，不过我想我该高兴你至少会开例外。~
== BC0PAI25 ~哪怕外表看不出来，我也并非全无心肝。我相信有人类值得敬重……把我带到这世上的那个女人就是例子。你若继续讨人喜欢、办事得力，也许你也会是另一个。~
== BVALYG25 ~*哼鼻* 我想我该领这个情。我力求让人满意。~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaViconiaToB","GLOBAL",0)~ THEN BVICON25 C0PAINAVICONIAToB
~……~
DO ~SetGlobal("C0PainaViconiaToB","GLOBAL",1)~
== BC0PAI25 ~……~
== BVICON25 ~我们非得互相瞪眼到天黑，还是谁说点有分量的话换换？这较量起初有趣，如今让我厌了。~
== BC0PAI25 ~闭嘴。你的话对我毫无意义。~
== BVICON25 ~我们已在这座桥上往来一次又一次。你除了恨我，就没有别的？若真如此，你的人生可真乏味。~
== BC0PAI25 ~你们这类人注定我活一场毁掉的人生。单凭这个，我就够恨你一辈子。~
== BVICON25 ~你以为这方面你是独一无二的？如今我们都经历过幽暗地域，不是吗，tu'rilthiir？我在自己族里并不比你更受欢迎。你若只因我的黑皮肤而恨我，你就不过是个伪君子。~
== BC0PAI25 ~那你现在想怎样？要我们开始互相照看后背？别逗我笑。~
== BVICON25 ~我是在*建议*我们结束这种幼稚行径。我不怀疑我们免不了继续互相憎恶，可这于我们双方都无益。~
== BC0PAI25 ~……呸。你不值得我恨，维康妮亚。~
== BVICON25 ~看来这回我们彼此多懂了一点。~
EXIT

APPEND BC0PAI25

IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaToBTalk","GLOBAL",0)~ t1
SAY ~这无尽的赶路与拼命，早就烦透了。你还能忍得下，真叫人惊奇，<CHARNAME>。~
++ ~你厌倦了，随时可以走。~ + t1.1
++ ~路才是我归属之处。~ + t1.2
++ ~我们现在没工夫谈这个，派娜。~ + t1.0
END

IF ~~ t1.0
SAY ~好吧。就当我说过，若你乐意。我肯定你的脑袋会喜欢少想一点。~
IF ~~ DO ~SetGlobal("C0PaiNaToBTalk","GLOBAL",1)~ EXIT
END

IF ~~ t1.1
SAY ~*哼鼻* 把可怜的你丢下自生自灭？那太残忍了。~
IF ~~ + t1.3
END

IF ~~ t1.2
SAY ~*哼鼻* 你有时真叫人无法理解。这又是文明生活的病症？不过随你说。~
IF ~~ + t1.3
END

IF ~~ t1.3
SAY ~我担心的不只是麻烦。你正准备去对付你自己的……兄弟姐妹，对吧？那让你什么感觉？~
++ ~别那样叫他们。他们不是我的亲族。~ + t1.4
++ ~我只知道他们挡在我和本该属于我的力量之间。~ + t1.5
++ ~我宁愿了结这一切，回去过平静的生活。~ + t1.6
END

IF ~~ t1.4
SAY ~随你喜欢，可这改不了事实，是吧？他们是与你共享神性的人——换句话说，你的同类。~
IF ~~ + t1.7
END

IF ~~ t1.5
SAY ~对……这一切就是为了这个，对吧？*哼鼻* 看来人真能为了权力做任何事，*任何事*。真有意思。~
IF ~~ + t1.7
END

IF ~~ t1.6
SAY ~没有“回去”这回事，<CHARNAME>。我以为这早该砸进你脑子里了。你以为你能就这么忘掉你体内的神血？~
IF ~~ + t1.7
END

IF ~~ t1.7
SAY ~说到这个，你那神血近来如何？你注意到它变得更强……更显？还是你已经习以为常？~
++ ~是更强了，可我能控制，就像我能控制杀戮者。~ + t1.8
++ ~这跟你有什么关系，派娜？我想不出你会担心。~ + t1.9
++ ~我们不能不谈这个吗？~ + t1.0
END

IF ~~ t1.8
SAY ~哦，*当然*。你对“控制”的定义可真宽，<CHARNAME>。~
IF ~~ + t1.9
END

IF ~~ t1.9
SAY ~你就算因控制不住的力量发疯，也不见得会影响到我。可你那“东西”若让我陷入险境，那么……事情就不好看了。确保别发生，明白？~
IF ~~ DO ~SetGlobal("C0PaiNaToBTalk","GLOBAL",1)~ EXIT
END

IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaToBTalk","GLOBAL",1)~ t2
SAY ~（派娜手里拿着形状古怪的瓶子，正小心蒸馏一种难看又黏稠的黑色液体）~
++ ~玩得开心？~ + t2.1
++ ~那看着真恶心。~ + t2.1
++ ~（静静看着她）~ + t2.2
END

IF ~~ t2.1
SAY ~哎！呃，小心点，你这蠢货。你可不想知道这东西流到不该去的地方会怎样。~
IF ~~ + t2.2
END

IF ~~ t2.2
SAY ~别分散我的注意，我在弄些相当危险的成分。这东西往伤口里滴一滴，你就要求死。~
++ ~那种东西真有必要？~ + t2.3
++ ~你干得挺卖力。我很意外你这么有干劲。~ + t2.4
END

IF ~~ t2.3
SAY ~你是想要我处于最佳状态，还是不要，<CHARNAME>？你要愿意，我可以停止试验，不过我猜你承担不起少了这点额外优势。~
IF ~~ + t2.4
END

IF ~~ t2.4
SAY ~你真该感激，<CHARNAME>。若由我自己做主，我绝不会这么卖力。我这样做只因我心情宽厚。~
= ~同时，这也是我的好练习。若我还缩在旧圣所里，几乎不会有任何进展。也许这种“亲身实践”终究有点价值。~
++ ~我看你还在否认你在乎。~ + t2.5
++ ~我感激你付出的所有努力。谢谢你。~ + t2.5
++ ~嗯，继续吧。这东西会有用的。~ + t2.6
END

IF ~~ t2.5
SAY ~（她的手因惊吓一抖，一滴药液落在她手指上）~
= ~哎！*嘶* 该死！~
= ~啊……呃……这回怪你，<CHARNAME>，是你分散了我的注意！~
++ ~我是想夸你。~ + t2.7
++ ~对不起。~ + t2.8
END

IF ~~ t2.6
SAY ~*哼鼻* 我力求让人满意。现在，除非你有个铁胃，最好转过头去。这过程的臭味可能会……叫人受不了。~
IF ~~ DO ~SetGlobal("C0PaiNaToBTalk","GLOBAL",2)~ EXIT
END

IF ~~ t2.7
SAY ~谁、谁问了？*哼鼻*~
IF ~~ + t2.8
END

IF ~~ t2.8
SAY ~管它呢，我晚点再弄完，等没有这些*烦人的干扰*时。现在你能不能闭嘴，赶紧走？~
IF ~~ DO ~SetGlobal("C0PaiNaToBTalk","GLOBAL",2)~ EXIT
END

IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaToBTalk","GLOBAL",2)
Global("SaradushSacked","GLOBAL",1)~ t3
SAY ~两个了，还剩三个。嗯哼，不错，不错。你说不定真能撑过去。~
++ ~你怀疑过我？~ + t3.1
++ ~萨拉杜什呢？你就没什么可说的？~ + t3.2
++ ~那就动手吧。~ + t3.0
END

IF ~~ t3.0
SAY ~是，我们继续，赶紧了结。~
IF ~~ DO ~SetGlobal("C0PaiNaToBTalk","GLOBAL",3)~ EXIT
END

IF ~~ t3.1
SAY ~这么说吧：我若没有怀疑，就只会对你失望。所以你该把我的怀疑当成好事。~
IF ~~ + t3.4
END

IF ~~ t3.2
SAY ~（耸肩）事情总会发生。~
++ ~就这样？连一句给死去的无辜者的好话都没有？~ + t3.3
++ ~好吧。~ + t3.4
END

IF ~~ t3.3
SAY ~你还指望什么？“哦，不，那些可怜人。我们摧毁一切根源的时候，又能做些什么呢？”~
= ~巴尔之子死了。不再有战争。还活着的都高兴走开。你见我为我所有同胞、为每天被踩死的蜘蛛哀号过吗？我当然生气。可那样没法活。~
IF ~~ + t3.4
END

IF ~~ t3.4
SAY ~我承认，我多半对我们的胜算有信心。若我觉得你毫无希望，我也不会在这儿。~
= ~不过，我们才走了一半。你还有大把时间让我失望。~
++ ~天，派娜，你真可怕。~ + t3.5
++ ~我会确保不会的。~ + t3.6
++ ~你就不能说一句好话吗，哪怕一次？~ + t3.7
END

IF ~~ t3.5
SAY ~我就当这是夸奖。~
IF ~~ DO ~SetGlobal("C0PaiNaToBTalk","GLOBAL",3)~ EXIT
END

IF ~~ t3.6
SAY ~对，就这么办。~
IF ~~ DO ~SetGlobal("C0PaiNaToBTalk","GLOBAL",3)~ EXIT
END

IF ~~ t3.7
SAY ~什么？哦，是啊。我挺喜欢你此刻这副愤愤的表情。你该多露露。~
IF ~~ DO ~SetGlobal("C0PaiNaToBTalk","GLOBAL",3)~ EXIT
END

IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaToBTalk","GLOBAL",3)
Dead("sendai")~ t4
SAY ~哦，我多享受那个。看卓尔死时那副傲慢模样消散，我从不厌倦。~
= ~更好的是看着近一打的她化为尘土。这样的戏可不常有。~
++ ~你真残忍。~ + t4.1
++ ~我同意。~ + t4.2
END

IF ~~ t4.1
SAY ~别告诉我她不该遭这一切，<CHARNAME>。你没那么蠢——而且这话是我说的。~
IF ~~ + t4.2
END

IF ~~ t4.2
SAY ~哼。只可惜我再没机会尝到像珊黛之死那样甜美的胜利。不过话说回来，跟你同行总有热闹，谁知道呢。~
= ~呃，我真刚说了那种话？当我没说。~
++ ~太迟了。~ + t4.3
++ ~你开始喜欢我了。承认吧。~ + t4.4
++ ~我会试试。~ + t4.5
END

IF ~~ t4.3
SAY ~现在忘掉，不然我放一群虫来清你的耳朵！相信我，那不会舒服。~
IF ~~ + t4.6
END

IF ~~ t4.4
SAY ~不！不，不不。绝对不行。我绝不承认这种事。~
IF ~~ + t4.6
END

IF ~~ t4.5
SAY ~你可要做到。~
IF ~~ DO ~SetGlobal("C0PaiNaToBTalk","GLOBAL",4)~ EXIT
END

IF ~~ t4.6
SAY ~*叹气* 我恨你，<CHARNAME>。我就是想让你知道。~
IF ~~ DO ~SetGlobal("C0PaiNaToBTalk","GLOBAL",4)~ EXIT
END

IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaToBTalk","GLOBAL",4)
Dead("CHALRV01")~ t5
SAY ~嗯。那就这样了。我们快到终点了。我没想到——好吧，这回我诚实一次。我们成功了。我本就没指望别的。~
++ ~真的？那你以前那些居高临下都是装的？~ + t5.1
++ ~我很高兴你一直陪我到如今。~ + t5.2
END

IF ~~ t5.1
SAY ~不——嗯……呃，是。是，是装的。现在你知道了，满意了？~
IF ~~ + t5.2
END

IF ~~ t5.2
SAY ~我不撒谎——尽管你给我带来那么多痛苦、压力和气人的处境，我……不后悔经历这一切。我一点也不想收回。~
= ~我还没无知到不知道我们的同行即将结束。到那时……我想我会回我的家。那处我离开的地方，如今我师父也走了……总得有人替她照料。~
= ~好了。我把心掏给你了。都记住了？因为我不会再重复。呸，这全是你那该死的影响。我变软了。~
++ ~你不必重复。我很高兴终于知道你把我当朋友，派娜。~ + t5.3
++ ~你是谁，你把派娜怎么了？~ + t5.4
++ ~好，好。~ + t5.5
END

IF ~~ t5.3
SAY ~友谊……？对，朋友。我们是……朋友。嗯，也没我想的那么难听。~
IF ~~ + t5.5
END

IF ~~ t5.4
SAY ~真滑稽。我跟你讲过上一个滑稽的人怎样了吗？不，你大概不想知道。~
IF ~~ + t5.5
END

IF ~~ t5.5
SAY ~*咳* 嗯，不管怎样，我们还得对付那个妄想成神的梅丽珊。要是我还想到什么该说的，那么……希望那时我们都还活着。~
IF ~~ DO ~SetGlobal("C0PaiNaToBTalk","GLOBAL",5)~ EXIT
END
END