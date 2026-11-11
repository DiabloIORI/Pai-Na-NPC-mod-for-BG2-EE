// Dorn

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaDorn1","GLOBAL",0)~ THEN BDORN C0PainaDorn1
~半卓尔，你对那些无用害虫的痴迷是浪费天分。我劝你重新考虑你的路。~
DO ~SetGlobal("C0PainaDorn1","GLOBAL",1)~
== BC0PAINA ~无用？我若让它们啃你的眼睛，你就不会这么想。~
== BDORN ~你尽可试试。我不像你，对把你这小宠物踩在脚下毫无那些可怜情绪。~
== BC0PAINA ~半兽人，你敢伤我任何一个孩儿，我必让你死得又慢又痛。~
== BDORN ~你的威胁吓不到我。跟所有德鲁伊一样，你软弱又愚蠢。~
== BC0PAINA ~你该怕。连你也终归要睡。我的蜘蛛不睡。~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaDorn2","GLOBAL",0)~ THEN BDORN C0PainaDorn2
~半卓尔，我不否认你的畜生对付我们面前的弱者有些……效率。可你一辈子缩在可怜茧里，浪费了它们的天分？~
DO ~SetGlobal("C0PainaDorn2","GLOBAL",1)~
== BC0PAINA ~那你又要我做什么，嗯？接管整座城？~
== BDORN ~那样总比你过的这浪费的一生更有目的。~
== BC0PAINA ~呸。我既没兴趣，也没蠢到去试。~
== BDORN ~那不过是说你没那个胆子的另一种说法。这等事会让我刮目相看，也许改变我对你那些虫子的看法。~
== BC0PAINA ~多恩，你目光短浅得可怜。我的蜘蛛掌控的东西，比你那双猪眼能看见的多得多。你若能明白这一点，多恩，也许你会让*我*刮目相看。~
EXIT

// ToB

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaToBDorn1","GLOBAL",0)~ THEN BDORN25 C0PainaToBDorn1
~你和你的虫子竟还活着。~
DO ~SetGlobal("C0PainaToBDorn1","GLOBAL",1)~
== BC0PAI25 ~你对此感到意外？~
== BDORN25 ~意外，而且失望。我原以为我们的敌人更有本事。~
== BC0PAI25 ~蜘蛛是万兽中最聪慧的。脆弱精巧，却能压垮任何挡路的东西。~
== BDORN25 ~你爱信什么幻想就信吧。也许法师火球那亮焰能把你从无知中唤醒，不过我怀疑。~
== BC0PAI25 ~你真是个可怜的东西，多恩。你明白蛛类之威的那一天，就是你的末日。~
EXIT

// Hexxat

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaHexxat1","GLOBAL",0)~ THEN BHEXXAT C0PainaHexxat1
~我意外竟有人活着把家安在墓穴里。连我都住厌了。~
DO ~SetGlobal("C0PainaHexxat1","GLOBAL",1)~
== BC0PAINA ~那是我履行职责最方便的地方。我许多孩儿生在那里，而人类蠢货很少擅入。~
== BHEXXAT ~<CHARNAME>就入了。~
== BC0PAINA ~确实。可总有例外。~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaHexxat1","GLOBAL",0)~ THEN BHEXXAT C0PainaHexxat1
~你不像别的德鲁伊那样反对我。我的存在不违背自然秩序吗？~
DO ~SetGlobal("C0PainaHexxat1","GLOBAL",1)~
== BC0PAINA ~也许违背。我师父若见了你，准要发作。~
== BHEXXAT ~可你不会？~
== BC0PAINA ~我未必喜欢……你这样的东西。可你是幸存者，跟我一样。我看不出有什么理由怕你。~
== BHEXXAT ~那你是头一个。多数人都怕我饥饿一来，就不声不响吸干他们的血。~
== BC0PAINA ~哦，别弄错——我的蜘蛛时刻盯着。你要乱来，我*必*取你性命。可我不怀疑你聪明到能明白这点。~
== BHEXXAT ~别担心，派娜。我无此意。~
== BC0PAINA ~你这么说。可我从不信波迪，也不信你……吸血鬼。~
EXIT

// ToB

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaToBHexxat1","GLOBAL",0)~ THEN BC0PAI25 C0PainaToBHexxat1
~你来自楚尔特丛林，对吧？~
DO ~SetGlobal("C0PainaToBHexxat1","GLOBAL",1)~
== BHEXXA25 ~是。~
== BC0PAI25 ~那里蜘蛛受敬重吗？~
== BHEXXA25 ~我不确定。我已久与自然断了联系。~
== BC0PAI25 ~可惜。我本考虑亲自去一趟，看看还有没有我没见过的品种。~
== BHEXXA25 ~有的。你也许会喜欢它们，不过我怀疑它们不会同样看你。~
== BC0PAI25 ~你或许没注意，我有一套对付蜘蛛的本事。我不觉得我会有什么危险。~
EXIT

// Neera

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaNeera1","GLOBAL",0)~ THEN BNEERA C0PainaNeera1
~呃，你好，派娜。我们还没说过话吧？~
DO ~SetGlobal("C0PainaNeera1","GLOBAL",1)~
== BC0PAINA ~没有，我也宁愿如此。~
== BNEERA ~唉，别这样。我们俩都是半精灵姑娘，总有共同之处吧？~
== BC0PAINA ~我是*半*卓尔，蠢货。我们毫无共同之处。离我远点。~
== BNEERA ~什么？我一点也不吓人啊。呃，我身上很臭吗？~
== BC0PAINA ~你的狂野魔法威胁我的孩儿们。它们脆弱，你让它们害怕。你要用你的法术伤到它们任何一个，我会让你后悔。~
== BNEERA ~哦。那，呃，我想我就离它们远点吧。~
EXIT

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaNeera2","GLOBAL",0)~ THEN BNEERA C0PainaNeera2
~嘿……派娜。你能过来看看这个吗？~
DO ~SetGlobal("C0PainaNeera2","GLOBAL",1)~
== BC0PAINA ~我对你那些法师玩意没兴趣，狂法师。保持距离。~
== BNEERA ~呃，那也算合理，可这不是我的。事实上，它也许是你的。看它现在这模样，很难说。~
== BC0PAINA ~你——！你把它怎么了？！~
== BNEERA ~我完全不知道，真的！本来只是个给锅加热的法术，我猜这小家伙刚好在锅边爬。~
== BC0PAINA ~那是母的，你这笨蛋！~
== BNEERA ~对。你最懂。可总之，我不是故意把它的腿变成……呃，反正是那样了。它们有点像小鳍……~
== BC0PAINA ~马上把它变回去，不然我就从你喉咙里扯出你的肠子喂我的子嗣！~
== BNEERA ~呀！好，好，冷静点，我来，呃……这样如何！“Hex-o presto kazoo-ey”！~
== BNEERA ~……呃，还真行。居然成了。呼，看来今晚我的肠子还能留在肚子里……~
== BC0PAINA ~呃……~
EXIT

// ToB 

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaNeeraToB1","GLOBAL",0)~ THEN BC0PAI25 C0PainaNeeraToB1
~*嗅* 有什么东西闻着像烧焦了……~
DO ~SetGlobal("C0PainaNeeraToB1","GLOBAL",1)~
== BNEERA25 ~真的？……是，我也闻到了。从哪儿来的？~
== BC0PAI25 ~你的袍子。~
== BNEERA25 ~呃，你说得对。里面有什么？~
== BNEERA25 ~哦。哦，天。~
== BC0PAI25 ~什么？~
== BNEERA25 ~呃，没什么。~
== BC0PAI25 ~我不信。你手里藏着什么？~
== BNEERA25 ~没什么！真的！~
== BC0PAI25 ~我警告你，法师，那若是你烧死的蜘蛛，我必让你付出惨重代价。~
EXIT

// Rasaad

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaRasaad1","GLOBAL",0)~ THEN BC0PAINA C0PainaRasaad1
~他们说武僧训练有素，能在指间夹住一只蚂蚁而不捏死它。~
DO ~SetGlobal("C0PainaRasaad1","GLOBAL",1)~
== BRASAAD ~确实，我们许多人能做到这般灵巧的动作。~
== BC0PAINA ~那我希望你时刻留神，确保永不无意中踩死蜘蛛。~
== BRASAAD ~我会留心它们的。~
== BC0PAINA ~好。顺便，替我收些昆虫。我的蜘蛛更爱吃活的。~
== BRASAAD ~呃，如你所愿，我的朋友。~
EXIT

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaRasaad2","GLOBAL",0)
LevelGT("Rasaad",10)~ THEN BC0PAINA C0PainaRasaad2
~有意思。武僧，你练出了不亚于群巢大师的抗毒。你的秘诀是什么？~
DO ~SetGlobal("C0PainaRasaad2","GLOBAL",1)~
== BRASAAD ~没有秘诀，我的朋友。这只是武僧训练的一个阶段。我可以凭意志将进入血液的毒素逐出。~
== BC0PAINA ~嗯，真有意思。我要求你演示给我看。~
== BRASAAD ~你是在建议我让你下毒，派娜？~
== BC0PAINA ~哦，别慌。我的收藏里有……大多数毒的解毒剂。再说，你若真如你所说的绝对免疫，这对你该像喝水一样。我必须亲眼看看你这门技法。~
== BRASAAD ~嗯。我年轻时绝不会回避这样大胆的挑战。我接受。~
== BC0PAINA ~好。别弄错，武僧——我会配出一种连*你*也化不了的毒。~
== BRASAAD ~我……期待这个挑战。~
EXIT

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaToBRasaad1","GLOBAL",0)~ THEN BRASAA25 C0PainaToBRasaad1
~是什么驱使你留在我们身边，派娜？原谅我的疑虑，可你并不欠<CHARNAME>什么，却仍愿拿性命冒险。~
DO ~SetGlobal("C0PainaToBRasaad1","GLOBAL",1)~
== BC0PAI25 ~比我的四肢还多，武僧。这与你何干？~
== BRASAA25 ~尽管你……孤僻，我已渐渐了解你。我看到一个女人，外表酸刻，心却摆在对的地方。我这样揣度错了吗？~
== BC0PAI25 ~那要紧吗？你若确信我不会走，我的理由自然毫无意义。~
== BRASAA25 ~我想知道。你的执着已赢得我的敬重，可我对你知道的还是太少。我想，也许我们可以从敬重走到友谊。~
== BC0PAI25 ~哼。你揣度得太多，秃头……可我留下，是因为我觉得你的存在……还能忍受。换别人作伴只会更糟。这对你够了吗？~
== BRASAA25 ~够了。谢谢你肯说出来。~
EXIT

