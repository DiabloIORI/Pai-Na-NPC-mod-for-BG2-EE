BEGIN BC0PAINA 

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaAerie1","GLOBAL",0)~ THEN BAERIE C0PainaAerie1
~呀！我、我身上有只蜘蛛！下去！啊——！~
DO ~SetGlobal("C0PainaAerie1","GLOBAL",1)~
== BC0PAINA ~别乱扑腾，蠢货！你会把它弄死的！~
== BAERIE ~可、可它在我袍子里乱爬！~
== BC0PAINA ~你要再乱动，它就会惊慌，把毒牙扎进你的肉里。你想那样？~
== BAERIE ~不、不！可是……好难受……~
== BC0PAINA ~我看那蜘蛛在你皮肤上爬，也不见得有多快活。~
== BAERIE ~派娜，你、你能把它弄下去吗？求你。~
== BC0PAINA ~呸！别动。~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaAerie2","GLOBAL",0)~ THEN BAERIE C0PainaAerie1
~派、派娜……你以前住在阿斯卡特拉墓园下面，对吧？那儿不……不孤单吗？~
DO ~SetGlobal("C0PainaAerie2","GLOBAL",1)~
== BC0PAINA ~你为何在意？~
== BAERIE ~我……我只是想知道。当年在马戏团，我还被当成……当成展品的时候，那简直像酷刑……可折磨我的不是疼。是那种彻底孤身一人的感觉，没人把我当——当人看。~
== BC0PAINA ~*嗤* 我不知孤单为何物。我的蜘蛛、我的同族，时刻与我作伴。~
== BAERIE ~我——我猜那挺不错，虽然有点瘆人。你走到哪儿都能把朋友带在身边，我几乎有点羡慕。~
== BC0PAINA ~你到底想说什么，无翼的精灵？~
== BAERIE ~我只是想，我们或许可以……做朋友，既然已经在<CHARNAME>麾下同为同伴。~
== BC0PAINA ~我为何会想要那种东西？~
== BAERIE ~你、你不必现在就答应。也许你会慢慢习惯这个念头。你要是想找人倾诉，我随时愿意听。~
== BC0PAINA ~哼。我会……记着的。~
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaAnomen1","GLOBAL",0)~ THEN BC0PAINA C0PainaAnomen1
~（哼鼻）骑士。傲慢又自以为是……我们非得带着这家伙吗？~
DO ~SetGlobal("C0PainaAnomen1","GLOBAL",1)~
== BANOMEN ~我与你同行所得的乐趣，并不比你多，半卓尔。你不可信；但既然<CHARNAME>容得下你，我也只能容下。~
== BC0PAINA ~我该感到受宠若惊吗？你吐出的每个字都滴着偏见。再明显一点，你每口气都要把它喷出来了。~
== BANOMEN ~你的辱骂对我毫无作用。我宁可跟一头野兽交谈，还能听出些意思。~
== BC0PAINA ~是啊，我想你太死脑筋，我说进去的话你都听不进去。~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaAnomen2","GLOBAL",0)~ THEN BANOMEN C0PainaAnomen2
~派娜，我相信你这种原始的生活方式，正是你缺乏信仰与教养的根源。为你好，趁还有时间，把这两样都找齐吧。~
DO ~SetGlobal("C0PainaAnomen2","GLOBAL",1)~
== BC0PAINA ~*嗤* 至少我敢打赌，我的学问比你多。~
== BANOMEN ~是吗？那你倒说说，你有什么学问？~
== BC0PAINA ~我是毒物与草药的大师。我读过师父给我的泰希瑞亚史书，虽然枯燥；而且……我自己的衣服是我做的。你只会扯着嗓子大吼，拿一根棍子抡一块铁。除此之外呢，嗯？~
== BANOMEN ~骑士团的成员，心智与体魄一样要经受考验。我有专门的导师，教我诸国度的各种信仰、神职，以及其他一切。~
== BC0PAINA ~哦，是啊。你们这些铁罐头，连一只*夜壶*都能扯出信仰来。我们这辈子都在杀人，这可真有用。~
== BANOMEN ~我……你竟敢……你是在用无聊的辱骂回避话题！~
== BC0PAINA ~嗯，至少你能看出这一点，算不错了。~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaCernd1","GLOBAL",0)~ THEN BCERND C0PainaCernd1
~派娜，你是从某处林苑来的吗？~
DO ~SetGlobal("C0PainaCernd1","GLOBAL",1)~
== BC0PAINA ~林苑？不，我从没住过那种地方。我连它是什么样都不知道。~
== BCERND ~这倒奇怪。你很有纪律，也认真对待职责。你从未受过训练？~
== BC0PAINA ~既然你非要知道——我有过一位导师。她教我怎么照料蛛形类，怎么用魔法。就这些。~
== BCERND ~要是你有兴趣，哪天我可以带你去我的林苑。你也许会喜欢跟我的同伴交流经验。~
== BC0PAINA ~我想我还是算了。我没兴趣跟别的德鲁伊交际。~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaCernd2","GLOBAL",0)~ THEN BCERND C0PainaCernd2
~别的德鲁伊也许会责备你专精于庇护养育蛛群，派娜，但我不会。自然需要你这样的本领，不亚于需要任何人的。~
DO ~SetGlobal("C0PainaCernd2","GLOBAL",1)~
== BC0PAINA ~我不在乎。~
== BCERND ~我并没有说你应该在乎。你无论抱着什么目的，都在侍奉自然。这才是要紧的。~
== BC0PAINA ~既然这样，那我要是不想再听这些，你也不会介意。你太让我想起那个女巫了。~
== BC0PAINA ~“你是自然的仆从。你在循环中担有一职，虽微不足道，等等等等。”我按我认为合适的做。~
== BCERND ~好吧。你对职责的忠诚显而易见，哪怕你不承认。~
EXIT

CHAIN 
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaCernd3","GLOBAL",0)~ THEN BC0PAINA C0PainaCernd3
~哼……~
DO ~SetGlobal("C0PainaCernd3","GLOBAL",1)~
== BCERND ~你有什么需要吗，派娜？你盯着我看了好一会儿，那副表情憋得厉害。你不舒服？不，你是高明的医者，早该治好了自己。你到底怎么了？~
== BC0PAINA ~呃……没有。不，什么也没有。~
== BCERND ~我明白了。~
== BC0PAINA ~……~
== BCERND ~嗯。顺便一提，我听说松脂加热之后涂在其他物件上，能很好地防水。~
== BC0PAINA ~是啊。我——*咳* 我早知道。我没问。~
== BCERND ~当然。毕竟你受的教导足够你在外独自活这么多年。也许只是昨夜你想给蜘蛛挡雨时，那点学问一时从脑子里滑走了。~
== BC0PAINA ~我迟早会想出来——我是说，想起来。~
== BCERND ~我相信你会的。不过，我随时都在，可以帮你。~
EXIT

CHAIN
IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaEdwin1","GLOBAL",0)~ THEN BC0PAINA C0PainaEdwin1
~我只警告你一次，红袍法师。看好你的火球和毒云。你要是烧死我任何一个孩儿，我就让它们把你活活吃掉。~
DO ~SetGlobal("C0PainaEdwin1","GLOBAL",1)~
== BEDWIN ~你若以为我在意你那群虫子的死活，那可真有趣。我的法术我爱怎么使就怎么使；你的畜生挡了我的路，那是你自己的错。~
== BC0PAINA ~蛛形类与昆虫不是一回事，蠢货。你若真有那么聪明，就该知道。~
== BEDWIN ~害兽，全都一样。怎么分都没差别。现在滚开，别浪费我的时间。~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaEdwin2","GLOBAL",0)~ THEN BEDWIN C0PainaEdwin2
~（嗯……她多半不肯，可我时间紧得很，也只能去问。）你，那边。~
DO ~SetGlobal("C0PainaEdwin2","GLOBAL",1)~
== BC0PAINA ~……~
== BEDWIN ~咳。你听见了吗，半卓尔？~
== BC0PAINA ~……嗯……~
== BEDWIN ~听我说，你这该死的蛛猴！~
== BC0PAINA ~哼……什么？！~
== BEDWIN ~（现在，我要说的是什么来着……啊，对了！）德鲁伊，我有事要问你。~
== BC0PAINA ~我正在与我的孩儿们通感。你最好有充分的理由打搅我，法师。~
== BEDWIN ~哦，对，理由很充分……我需要一份你的蜘蛛毒液和蛛丝样本。它们是宝贵的法术材料，我正缺得很。~
== BC0PAINA ~我倒要请问，我凭什么要给你？~
== BEDWIN ~这是为了全队的好处！你蠢到看不出我施法的价值吗？没有我全部的力量，这伙乌合之众一个时辰内必定全灭！~
== BC0PAINA ~呃……那又怎样？~
== BEDWIN ~那……呃，因为我是在客气地请求？~
== BC0PAINA ~……~
== BEDWIN ~……~
== BC0PAINA ~……~
== BEDWIN ~……怎样？~
== BC0PAINA ~行吧。看你哀求倒也有趣。拿去，滚出我的视线……败类。~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaHaerDalis1","GLOBAL",0)~ THEN BHAERDA C0PainaHaerDalis1
~派娜，我幽暗的谜题，你的故事是什么？~
DO ~SetGlobal("C0PainaHaerDalis1","GLOBAL",1)~
== BC0PAINA ~没有什么“故事”，吟游诗人。你要是想用你那套押韵的胡话来逗我，我没兴趣。~
== BHAERDA ~诗不合你意，那歌呢？~
== BC0PAINA ~不。别烦我。~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaHaerDalis2","GLOBAL",0)~ THEN BHAERDA C0PainaHaerDalis2
~那么，我黑暗的寡妇……~
DO ~SetGlobal("C0PainaHaerDalis2","GLOBAL",1)~
== BC0PAINA ~住口。闭。嘴。~
== BHAERDA ~天，你对这只麻雀喷的刺可真利！这次不给你唱诗了，我发誓。~
== BC0PAINA ~呃……你想干什么？~
== BHAERDA ~我只有一个问题，出于单纯的好奇——我倒想知道，哪一样更毒……你的蜘蛛，还是你那条利舌与机锋？~
== BC0PAINA ~你既然这么好奇，我随时可以演示……只是你未必活得到欣赏。那么，诗人，你想先尝谁的毒……我蜘蛛的，还是我的？~
== BHAERDA ~我怕你的毒对我来说太烈了些；不过，若是我要尝的是你舌上唇上的那一种……~
== BC0PAINA ~滚出我的视线！~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaImoen1","GLOBAL",0)~ THEN BIMOEN2 C0PainaImoen1
~嘿，派娜——我可以叫你派，对吧？~
DO ~SetGlobal("C0PainaImoen1","GLOBAL",1)~
== BC0PAINA ~不。~
== BIMOEN2 ~唉。可我正想说，你是跟蜘蛛说话的，对吧？它们……会回话吗？~
== BC0PAINA ~这问题荒唐至极。~
== BIMOEN2 ~那是不是说它们不回？~
== BC0PAINA ~当然会，你这蠢材。它们跟你我一样有智识。就你而言，比你还有。~
== BIMOEN2 ~嘿，这可不好听！~
== BC0PAINA ~忍着。~
== BIMOEN2 ~唉，别这么绷着，派。嘿——我不是那个意思！别瞪我！~
EXIT

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaImoen2","GLOBAL",0)~ THEN BC0PAINA C0PainaImoen2
~你烦到我了。~
DO ~SetGlobal("C0PainaImoen2","GLOBAL",1)~
== BIMOEN2 ~啥？~
== BC0PAINA ~我说你烦到我了。我劝你在遭受痛苦死亡之前停手。~
== BIMOEN2 ~我什么都没对你做，派！你干嘛这么刻薄？~
== BC0PAINA ~我知道是你把甲虫放进了我的铺盖。~
== BIMOEN2 ~……哦。~
== BC0PAINA ~对。“哦。”~
== BIMOEN2 ~哈，啊哈哈……我、呃，我以为你会喜欢，毕竟你那么爱蜘蛛……就像半夜的惊喜小点心，对吧？~
== BIMOEN2 ~呃……是我的错？~
== BC0PAINA ~也许今晚我也对你来一次，看看*你*喜不喜欢。~
== BIMOEN2 ~*叹气* 我想这是我自找的。~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaJaheira1","GLOBAL",0)~ THEN BJAHEIR C0PainaJaheira1
~派娜，我佩服你护卫蛛类的热忱，但身为德鲁伊，你须明白一切生灵同等要紧。~
DO ~SetGlobal("C0PainaJaheira1","GLOBAL",1)~
== BC0PAINA ~也许我明白，可我的孩儿们优先。把其他生灵当食物，是它们的决定。~
== BJAHEIR ~德鲁伊之道并不把某一物种置于其他之上，派娜。我恐怕这是你自学的路子带来的不幸结果。你缺的东西，我愿意教你。~
== BC0PAINA ~不。我没兴趣。~
== BJAHEIR ~随你。希望你成熟一些之后，这脾气能淡下去。~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaJaheira1","GLOBAL",0)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_2%)~ THEN BJAHEIR C0PainaJaheira2
~是真的吗，派娜？你在遇见<CHARNAME>之前，就跟波迪相识？~
DO ~SetGlobal("C0PainaJaheira1","GLOBAL",1)~
== BC0PAINA ~也许。说我们是隔壁邻居，倒也不算错。不过别问我关于她的事。我什么都不知道。~
== BJAHEIR ~我并无此意，只是……我们初遇时，你为何不把这么要紧的情报告诉我们？那对<CHARNAME>会有帮助。~
== BC0PAINA ~我不觉得那有任何相干。再说，告诉你们我认识一个吸血鬼，可算不上好印象。~
== BJAHEIR ~不错，可即便你后来知道<CHARNAME>的全部目标，你仍闭口不言。我们如今凭什么比当初更信你？~
== BC0PAINA ~我不是来长篇大论讲故事的。我在这儿，是因为<CHARNAME>知道我这行干得好。倒是<PRO_HESHE>为什么留着你这么个唠叨的碎嘴，才是真问题。~
== BJAHEIR ~罢了。我提起这事，你就拿幼稚的辱骂回敬，看来你也满意了。此事不再谈。~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaJan1","GLOBAL",0)~ THEN BJAN C0PainaJan1
~那么你喜欢蜘蛛，是吧，姑娘？说来奇怪，我也喜欢！~
DO ~SetGlobal("C0PainaJan1","GLOBAL",1)~
== BC0PAINA ~*哼鼻* 我很高兴知道。~
== BJAN ~是啊，它们替我守萝卜地，对付那些专毁家业的害虫，好得很！可惜我离家干活前不久，本地的蜘蛛就绝了迹。不知你肯不肯租几只你的孩儿给我？~
== BC0PAINA ~我的孩儿不出“租”，疯侏儒，尤其不为……看守蔬菜这种下贱活。~
== BJAN ~什么都改不了你的主意？连我最好的萝卜也不行？要来一根“闪光”吗？~
== BC0PAINA ~把你的玩物和恶心的蔬菜拿远点！我的蜘蛛于我如子女，不是你使唤的工具！~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaKeldorn1","GLOBAL",0)~ THEN BKELDOR C0PainaKeldorn1
~我不能说你的陪伴让我安心，派娜。~
DO ~SetGlobal("C0PainaKeldorn1","GLOBAL",1)~
== BC0PAINA ~我倒想知道为什么。~
== BKELDOR ~据我看，你并非心怀恶意，你的目标也算无害。可你想过没有，你有时也会狠毒，甚至残忍？~
== BC0PAINA ~不，我想我没有想过。~
== BKELDOR ~那也许你将来会想一想。~
== BC0PAINA ~也许吧。只要那些人类蠢货走路时，对八条腿的多一点体谅。~
== BC0PAINA ~而那多半永远不会。~ 
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaKeldorn2","GLOBAL",0)~ THEN BKELDOR C0PainaKeldorn2
~你有执着之心，派娜。你可曾想过把它用于更宏大的事业？~
DO ~SetGlobal("C0PainaKeldorn2","GLOBAL",1)~
== BC0PAINA ~比如一边砍杀敌人一边高喊某个无形实体的名号？免了。~
== BKELDOR ~你是说你不对任何神明效忠？我原以为德鲁伊也像其他信徒一样崇拜自然诸神。~
== BC0PAINA ~哼。我对那种事没兴趣。也许有某种强大的力量赐我魔法，但我不会跪下来，念它们名号的含糊词句。~
== BC0PAINA ~教我的那个女巫信奉西尔瓦努斯。整天“橡树之父这、橡树之父那”，我厌透了。我只忠于我自己和我的蛛族。~
== BKELDOR ~你这么说，但我祈愿年岁能赐你更多智慧。~
EXIT

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaKorgan1","GLOBAL",0)~ THEN BC0PAINA C0PainaKorgan1
~你成天跺来跺去，全不管脚下踩着什么，矮人。你若踩死一只无辜的蜘蛛，它的同族会啃你的脑子。~
DO ~SetGlobal("C0PainaKorgan1","GLOBAL",1)~
== BKORGAN ~哎，滚开，抱树的婆娘。还是我该叫你亲蜘蛛的，嗯？~
== BC0PAINA ~我不觉得你听懂了我说的话。~
== BKORGAN ~没听懂。~
== BC0PAINA ~我改口——我的蜘蛛吃不了明明不存在的东西。看来它们只好拿你身上其余部分凑数了。~
EXIT

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaKorgan2","GLOBAL",0)~ THEN BC0PAINA C0PainaKorgan2
~*嗅* 又臭又霉，还肯定长满蛆……你管那叫胡子的一团乱麻，我的孩儿们准爱拿它做窝，矮人。~
DO ~SetGlobal("C0PainaKorgan2","GLOBAL",1)~
== BKORGAN ~它们尽管来试试，不过我警告你，卓尔崽子，太阳落山前你就得为你宝贝孩儿们哭丧。~
== BC0PAINA ~是*半*卓尔。别再弄错，膝高的。~
== BKORGAN ~*打嗝* 啊，拿你的蛛丝上吊去吧，灰皮子。~
== BC0PAINA ~睡轻点，矮桩。等我的蜘蛛在你那胡子里织个漂亮的丝窝，你就不会喜欢了。也许你打那恶心的呼噜时，会觉得它们在嘴里爬。窸窸窣窣……~
== BKORGAN ~别说了，你这瘦灰婆娘！唉，今晚的守夜我来，<CHARNAME>。可不能叫这亲蜘蛛的半卓尔趁我不备。~
EXIT

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaMazzy1","GLOBAL",0)~ THEN BC0PAINA C0PainaMazzy1
~你的发型真是不同寻常，半身人。~
DO ~SetGlobal("C0PainaMazzy1","GLOBAL",1)~
== BMAZZY ~我从没想过会从你嘴里听到夸奖，派娜，对任何人都是。~
== BC0PAINA ~我不是在夸你，只是我的孩儿们挺喜欢。它们想在里头做窝。~
== BMAZZY ~做*窝*？！在我头发里？（发抖）我……受宠若惊？可我觉得它们住在我的头顶上不安全。~
== BC0PAINA ~真叫人失望。~
EXIT

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaMazzy1","GLOBAL",1)~ THEN BC0PAINA C0PainaMazzy2
~你*确定*不再考虑一下吗，半身人？~
DO ~SetGlobal("C0PainaMazzy1","GLOBAL",2)~
== BMAZZY ~不，我相当确定我不想让蜘蛛住在我头发里，派娜！当然，我无意冒犯你。~
== BC0PAINA ~真可惜。我还以为你会欣赏蜘蛛。怎么，你的脑袋看起来就像一只。~
== BMAZZY ~你是说……我的头发像蜘蛛？~
== BC0PAINA ~也许腿多了几根，但我的同族肯定看得出妙处。~
== BMAZZY ~够了！*发抖* 求你，够了……你准要害我做噩梦了。~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaMinsc1","GLOBAL",0)~ THEN BMINSC C0PainaMinsc1
~派娜，布布想求你一件事……~
DO ~SetGlobal("C0PainaMinsc1","GLOBAL",1)~
== BC0PAINA ~不。~
== BMINSC ~可他还没开口呢！~
== BC0PAINA ~你和你那仓鼠脑子里的东西，准没好事。不管你要问什么，答案都是不。~
== BMINSC ~布布只是想很客气地请你的蜘蛛，别用那么多只眼睛盯着他。那让他紧张。~
== BC0PAINA ~是啊……我看我的蜘蛛会把你的啮齿类当点心。你想说什么？~
== BMINSC ~敏斯克已经多次向布布保证，派娜的蜘蛛没有吃他的意思，可他只是想确认一下！~
== BC0PAINA ~你其实疯了，是不是？~
== BMINSC ~敏斯克理智得很，而且对保护朋友一事极为认真！~
== BC0PAINA ~（叹气）好吧……我会尽量约束我的孩儿们一点，只为让你别来烦我。~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaMinsc2","GLOBAL",0)~ THEN BMINSC C0PainaMinsc2
~布布？布布，你在哪？~
DO ~SetGlobal("C0PainaMinsc2","GLOBAL",1)~
== BC0PAINA ~*叹气* 好极了。这大笨瓜又怎么了？~
== BMINSC ~派娜！太糟了！布布他……他不见了！~
== BC0PAINA ~不见了？怎么，化作一缕烟？这跟我有什么相干？~
== BMINSC ~嗯，布布有一天跟敏斯克说……唔……~
== BC0PAINA ~呃……说什么？~
== BMINSC ~布布他……他总跟敏斯克说，他好怕派娜的蜘蛛朋友会吃掉他。敏斯克向布布保证他们不会，可是……~
== BC0PAINA ~哦，我这辈子听过的荒唐事里……你别想把这事赖到我——我头发里那是什么？啊，它在动！~
== BMINSC ~哦！布布！他在你头上，派娜！~
== BC0PAINA ~什——什么？！快、快把它从我头发里弄出去，不然我就放一只塔兰图拉上去！~
== BMINSC ~回来，你！淘气的布布！不许躲在朋友的头发里这样吓敏斯克！~
== BC0PAINA ~呃……这小东西准是钻进了我的背包，又躲开我的蜘蛛跑进我头发里！它们本该把它整个吞了！要让我找到一粒仓鼠粪，我发誓……~
== BMINSC ~派娜？布布，我想你把她惹火了……~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaNalia1","GLOBAL",0)~ THEN BNALIA C0PainaNalia1
~派娜，我不懂你对蜘蛛的迷恋。它们不恶心吗？~
DO ~SetGlobal("C0PainaNalia1","GLOBAL",1)~
== BC0PAINA ~恶心？它们是这世上最美的生灵。你要觉得不是，必是瞎了眼。~
== BNALIA ~我姑妈恨它们。她哪怕看见一只蚂蚁在墙上爬，都会像女妖一样尖叫。~
== BC0PAINA ~她听起来是个十足的蠢货。~
== BNALIA ~她还每月叫灭虫人来我们城堡里清害兽。~
== BC0PAINA ~（嘶）唯一的害兽与害虫，就是胆敢伤害我孩儿的东西！~
== BNALIA ~你真的很在意蜘蛛，对吧？我不知道该敬你还是该怕你。~
== BC0PAINA ~贵族。（哼鼻）文明里最坏的一类。~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaNalia2","GLOBAL",0)~ THEN BNALIA C0PainaNalia2
~你有力量、有智识，还是个出色的医者，派娜。你为何甘愿独居，不把你的本领用来行善？~
DO ~SetGlobal("C0PainaNalia2","GLOBAL",1)~
== BC0PAINA ~我为什么非得？别人不来烦我，我也乐意不去烦别人。当善人只会招来麻烦。~
== BNALIA ~这话奇怪，毕竟你如今似乎挺乐意跟我们一起旅行。~
== BC0PAINA ~哼。谁都需要偶尔透透气。再说，做什么是<CHARNAME>决定的。我只是来丢几个法术，让我的孩儿们饱餐我们留下的尸体。~
== BNALIA ~你就完全满意？对我们做的善事一点兴趣都没有？~
== BC0PAINA ~我只想这一切有多麻烦。我得为那些毫不迟疑就会踩死我同族的人，拿我的蛛族去冒险。这对我公平吗？~
== BNALIA ~那你为什么还留着？你并不需要我们，我也不确定我想要你这种人的帮助！~
== BC0PAINA ~你并没资格做决定，“娜莉亚”。有意见尽管去找<CHARNAME>，否则就做好你那份，别管我的。~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaValygar1","GLOBAL",0)~ THEN BC0PAINA C0PainaValygar1
~我想我认得你，游侠。你去过泰希尔森林。~
DO ~SetGlobal("C0PainaValygar1","GLOBAL",1)~
== BVALYGA ~我去过很多次。你想说什么？~
== BC0PAINA ~你经过了森林女巫的村子。~
== BVALYGA ~住在森林深处那个老妖婆？我从没跟她说过话，也不知道她是德鲁伊。~
== BC0PAINA ~那女巫说过许多关于你的事。~
== BVALYGA ~你提这个做什么，派娜？~
== BC0PAINA ~她说她敬重你对自然的照料。我希望你保持下去，为你好。~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaValygar1","GLOBAL",1)~ THEN BVALYGA C0PainaValygar2
~我完全不知道森林女巫还有孩子。~
DO ~SetGlobal("C0PainaValygar1","GLOBAL",2)~
== BC0PAINA ~我不是她生的，游侠。她只是在我垂死的母亲怀里发现了我，把我养大。~
== BVALYGA ~对你的失去我深感遗憾。可我想我从没在那儿见过你。~
== BC0PAINA ~你的眼睛显然没看上去那么尖。我大半时间都在屋里做学问……更确切地说，是女巫把我关在屋里。你就从没想到来小屋看看？~
== BVALYGA ~没有。我疑心那女巫是法师，不是德鲁伊，不想跟她沾边。我们几乎没说过话。~
== BC0PAINA ~真可惜。偶尔有个老妖婆以外的人作伴，倒也不错。~
== BVALYGA ~我可不是闲聊的好伴。~
== BC0PAINA ~谁说要聊天了？我有……别的法子消遣。~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaViconia1","GLOBAL",0)~ THEN BVICONI C0PainaViconia1
~Dos rul'seloz ussa, tu'rilthiir.~
DO ~SetGlobal("C0PainaViconia1","GLOBAL",1)~
== BC0PAINA ~省省你的舌头，维康妮亚。~
== BVICONI ~你连黑暗之语都听不懂吗，杂种？~
== BC0PAINA ~我没兴趣懂你。我血管里或许流着卓尔的血，可我憎恶你们族里的每一个。~
== BVICONI ~你真可怜，派娜。既非人也非卓尔，样样都低一等。~
== BC0PAINA ~你要敢再说下去，我就让我的蜘蛛进食。~
== BVICONI ~别高估自己，elg'caress。在莎尔的力量面前，你毫无胜算。~
== BC0PAINA ~你既然这么想死，我很乐意成全！~
END
+ ~CheckStatLT(Player1,15,CHR)~ + ~不！马上住手！~ EXTERN BC0PAINA C0PainaViconia1.1a
+ ~CheckStatGT(Player1,14,CHR)~ + ~不！马上住手！~ EXTERN BC0PAINA C0PainaViconia1.1b
++ ~打！这倒该有意思。~ EXTERN BVICONI C0PainaViconia1.2

CHAIN BC0PAINA C0PainaViconia1.1a
~我受够这黑婊子的挑衅了。你现在就得死！~
== BVICONI ~真蠢。~
DO ~SetGlobal("C0PaiNaViconiaConflict","GLOBAL",1)~
EXIT

CHAIN BC0PAINA C0PainaViconia1.1b
~*嘶* 我的蜘蛛渴望这婊子的血，可我不会让它们任何一个冒险。你暂且活着吧。~
== BVICONI ~算你走运，杂种。~
EXIT

CHAIN BVICONI C0PainaViconia1.2
~随你便！~
DO ~SetGlobal("C0PaiNaViconiaConflict","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0PaiNaViconiaConflict","GLOBAL",1)~ THEN C0PaiNaP C0PaiNaViconia1.3
~这婊子说完遗言了。尽情享用吧，我的孩儿们。~
DO ~SetGlobal("C0PaiNaViconiaConflict","GLOBAL",2) DialogInterrupt(TRUE) JoinParty()~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0PaiNaViconiaConflict","GLOBAL",1)~ THEN VICONIP C0PaiNaViconia1.4
~果然是个杂种。~
DO ~SetGlobal("C0PaiNaViconiaConflict","GLOBAL",2) DialogInterrupt(TRUE) JoinParty()~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaViconia2","GLOBAL",0)~ THEN BVICONI C0PainaViconia2
~把你那些臭蜘蛛拿远点，杂种。~
DO ~SetGlobal("C0PainaViconia2","GLOBAL",1)~
== BC0PAINA ~怎么了，无所不能的卓尔女祭司？怕你自己女神造的东西？~
== BVICONI ~我并非罗丝的崇拜者，你清楚得很。~
== BC0PAINA ~不知怎的，这让我少恨你一点。只少一点。~
== BVICONI ~你尽管恨我，我只当是头罗丝的蠢叫。对真正的卓尔而言，你连虚无都不如。你若在他们中间住过，也许会明白。~
== BC0PAINA ~我唯一走在卓尔中间的时候，就是我的蜘蛛在啃他们尸体的时候。~
== BVICONI ~抱着你的妄想吧，派娜。但愿哪一天它们要了你的命。~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaViconia3","GLOBAL",0)~ THEN BVICONI C0PainaViconia3
~你真可怜，太可怜了，派娜。你凶狠狠地否认自己血统的两半，却两边都不容你。你那些姿态，看来不过是过度的补偿。~
DO ~SetGlobal("C0PainaViconia3","GLOBAL",1)~
== BC0PAINA ~你要想激怒我，你非常、非常接近成功了，婊子。~
== BVICONI ~哦，我确实在激怒你。你发怒时最有趣，elg'caress。简直像看一头土巨怪在笼里挣扎。~
== BC0PAINA ~*啐*~
== BVICONI ~哼！做出这种事，你可真是……不出所料的野蛮。~
== BC0PAINA ~啊，终于，你那副得意到令人难以忍受的外壳裂了道缝。这模样挺适合你。~
== BVICONI ~别想骗我，派娜。你以为我蠢到察觉不出那毒？我不怕你的把戏，因为我清楚得很。~
== BC0PAINA ~只是我的一部分把戏。你会松懈，然后你就活不到后悔了。~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0PainaYoshimo1","GLOBAL",0)~ THEN BYOSHIM C0PainaYoshimo1
~那么告诉我，派娜，可有什么东西能让你笑一笑？~
DO ~SetGlobal("C0PainaYoshimo1","GLOBAL",1)~
== BC0PAINA ~想到蜘蛛从里到外把你吃掉，我心里在笑，如果那也算的话。~
== BYOSHIM ~是啊……嗯，我原在想些……不那么血腥的。~
== BC0PAINA ~你打什么主意，贼？我笑不笑与你何干？~
== BYOSHIM ~因为没有比一位愁苦女士更叫人沮丧的景象了。~
== BC0PAINA ~你要是愿意为这体验吃点苦头，我可以给你看几个。~
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0PainaYoshimo2","GLOBAL",0)~ THEN BC0PAINA C0PainaYoshimo2
~这——这算什么东西？！~
DO ~SetGlobal("C0PainaYoshimo2","GLOBAL",1)~
== BYOSHIM ~这是琥珀，我的朋友，古树汁液凝成的老石头。我旅行时从一个商人手里买下这小玩意，最近才发现它还在我包里。我想它也许能让你高兴。~
== BC0PAINA ~里面有一只蜘蛛。它不是真的，对吧？它最好不是真的！~
== BYOSHIM ~当然是，派娜。商人说那蜘蛛与石头同龄，太古之时被封在其中。~
== BC0PAINA ~你是说这石头有*几千*年了？！里面的蜘蛛也是？哦，这真是……呃，我才不说……~
== BYOSHIM ~不必道谢，我的朋友。我只是觉得你会喜欢。~
== BC0PAINA ~哼，这……还算能接受。这回放过你。~
EXIT

// PC talks

CHAIN IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaPCTalk","GLOBAL",0)
TimeGT(DAWN_START)
TimeLT(DUSK_END)
AreaType(OUTDOOR)~ THEN BC0Paina p1
~该死！我太久没见天光了……刺得人睁不开眼！~
DO ~SetGlobal("C0PaiNaPCTalk","GLOBAL",1)~
END
++ ~也没那么糟。~ + p1.1
++ ~你在地下住了多久？~ + p1.2
++ ~你要找点阴凉吗？~ + p1.3
++ ~我现在没工夫谈太阳，派娜。~ + p.0

APPEND BC0Paina

IF ~~ p.0
SAY ~哼。随你。~
IF ~~ EXIT
END

IF ~~ p1.1
SAY ~你说得轻巧。你若大半辈子住在地下，看法也许会变。~
IF ~~ + p1.4
END

IF ~~ p1.2
SAY ~太久了。久到我都忘了上次离开圣所是什么时候。~
IF ~~ + p1.4
END

IF ~~ p1.3
SAY ~不。我没那么虚弱，但若可能，我宁愿夜里赶路。~
IF ~~ + p1.4
END

IF ~~ p1.4
SAY ~哼。你要没提，我至少还得几年才会考虑离开圣所。我这番受罪，看来得谢你。~
++ ~不客气。~ + p1.5
++ ~你说什么？~ + p1.5
++ ~你要不喜欢，随时可以走。~ + p1.6
++ ~我们谈够了。走吧。~ + p.0
END

IF ~~ p1.5
SAY ~（她轻蔑地翻了个白眼。）~
= ~随便。我总会习惯的。现在快点，干你领路的活。~
IF ~~ EXIT
END

IF ~~ p1.6
SAY ~你真以为在烈日下站一会儿，就能吓得我躲回去？你小看我了，<CHARNAME>。~
IF ~~ + p1.5
END
END

CHAIN IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaPCTalk","GLOBAL",1)~ THEN BC0Paina p2
~我有个问题，<CHARNAME>。你为何带我出来？你这趟任务，肯定有别的蠢货更合用。~
DO ~SetGlobal("C0PaiNaPCTalk","GLOBAL",2)~
END
++ ~我觉得你在圣所里显得孤单。~ + p2.1
++ ~你是高明的医者，会是极大的助力。~ + p2.2
++ ~老实说，我现在也不太确定。~ + p2.3
++ ~我们没时间谈这个，派娜。~ + p.0

APPEND BC0Paina

IF ~~ p2.1
SAY ~那么是怜悯促使你带我走的？我不要你的怜悯。我在圣所里，有蜘蛛作伴，本来很满足。~
++ ~那你为何答应来？~ + p2.4
++ ~好吧。那我承认，我是想要你的本领才带你。~ + p2.2
++ ~随便。我们继续走。~ + p.0
END

IF ~~ p2.2
SAY ~是啊……我的本领。我看你要再找一个有我这般本事的人，可不容易。~
IF ~~ + p2.4
END

IF ~~ p2.3
SAY ~哼，反正我也没指望你能给个满意答案。我只是好奇。~
IF ~~ + p2.4
END

IF ~~ p2.4
SAY ~你非要知道的话——我选择跟你走，是因为住在这城地下、被坟墓环绕、被亡者骚扰的茧里，并不是我的选择。~
= ~可是……作为一个半卓尔，在这座满是偏见的蠢货的城里，能容我的安全之地少之又少。你找到我的那处，是其中之一。~
= ~如你所推想，那*不是*宜人之地。但它方便，离我的孩儿们近，因为保护照料它们是我的职责。~
++ ~你常提职责……可你是怎么成为群巢大师的？~ + p2.5
++ ~所以你为了几只蜘蛛，在肮脏的地窟里住了多年？~ + p2.6
++ ~好了，我听够了。我们还有事。~ + p.0
END

IF ~~ p2.5
SAY ~我不记得我给过你许可，问这种私密的问题。~
= ~呸，无所谓。也许你不知道，卓尔，哪怕半卓尔，对蜘蛛都有亲和。我在它们中间长大。它们于我如家人。~
IF ~~ + p2.7
END

IF ~~ p2.6
SAY ~注意你的口气。蜘蛛于我如同家人，辱它们就是辱我的荣誉。这回我不计较，别指望有第二次。~
IF ~~ + p2.7
END

IF ~~ p2.7
SAY ~我再说一遍：我的蜘蛛于我如家人。只要我还容你同行，你就得这样尊重它们。明白吗？~
++ ~好，我明白了。~ + p2.8
++ ~它们不过是蜘蛛。~ + p2.9
++ ~随便。别再说这个了。~ + p.0
END

IF ~~ p2.8
SAY ~好。~
IF ~~ + p2.10
END

IF ~~ p2.9
SAY ~它们*不是*“不过是蜘蛛”。也许趁你睡着，我让它们在你身上自由活动，你就改调了。~
IF ~~ + p2.10
END

IF ~~ p2.10
SAY ~够了。我厌了这些闲话。我们该继续。~
IF ~~ EXIT
END
END

CHAIN IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaPCTalk","GLOBAL",2)~ THEN BC0Paina p3
~我听说你被称为巴尔之子。那是什么意思？~
DO ~SetGlobal("C0PaiNaPCTalk","GLOBAL",3)~
END
++ ~你从没听说过巴尔？~ + p3.1
++ ~我是巴尔之子，那死去的谋杀之神的孩子。~ + p3.2
++ ~那，呃，什么意思都没有。~ + p3.3
++ ~我不想解释。~ + p.0

APPEND BC0Paina

IF ~~ p3.1
SAY ~不，我没听过。跟被叫作卓尔崽子是一回事吗？~
++ ~不完全是。巴尔是死去的谋杀之神。~ + p3.2
++ ~当然。就这么说吧。~ + p3.3
++ ~我不想解释。~ + p.0
END

IF ~~ p3.2
SAY ~你自称是神的孩子？我很难相信。~
= ~不过，这倒能解释一些事。我早注意到你身上有些不对劲。~
++ ~你注意到什么？~ + p3.4
++ ~现在谈够了。~ + p.0
END

IF ~~ p3.3
SAY ~哼。你似乎铁了心要骗我，<CHARNAME>。也罢。留着你的秘密吧。~
IF ~~ EXIT
END

IF ~~ p3.4
SAY ~你的形体是<PRO_RACE>，可你身上有什么不对……仿佛你与死亡有某种关系。我和孩儿们看你时，脊背都会发凉。~
++ ~听着像一堆胡话。~ + p3.5
++ ~你还看出什么？~ + p3.6
++ ~有意思，可我们真得走了。~ + p.0
END

IF ~~ p3.5
SAY ~你爱怎么想就怎么想，但我会把它当警告。你身上有某种魔物，<CHARNAME>，它想出来。它出来时，小心别让我陷入险境。~
IF ~~ EXIT
END

IF ~~ p3.6
SAY ~只有这一点：你身上有某种魔物，<CHARNAME>，它想出来。它出来时，小心别让我陷入险境。~
IF ~~ EXIT
END
END

CHAIN IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaPCTalk","GLOBAL",3)
AreaType(CITY)~ THEN BC0Paina p4
~你看见那些蠢货怎么看我了吗，<CHARNAME>？真叫人作呕。~
DO ~SetGlobal("C0PaiNaPCTalk","GLOBAL",4)~
END
++ ~他们只是怕你。~ + p4.1
++ ~别理他们。有我在，他们不敢怎样。~ + p4.2
++ ~别来跟我抱怨。~ + p.0

APPEND BC0Paina

IF ~~ p4.1
SAY ~（哼鼻）怕？我还没给他们任何该怕的东西。~
IF ~~ + p4.3
END

IF ~~ p4.2
SAY ~我不需要你的保护，<CHARNAME>。不过这些人类，我可不敢说。~
IF ~~ + p4.3
END

IF ~~ p4.3
SAY ~若不是恐惧，那就是别的什么。某种……令人作呕的东西。它让我想把他们的眼珠子挖出来。~
++ ~也许他们是被你吸引了。~ + p4.4
++ ~我同意。真恶心。~ + p4.5
++ ~好吧。现在结束这场谈话。~ + p.0
END

IF ~~ p4.4
SAY ~你这逗趣的尝试没让我觉得有趣，<CHARNAME>。我对这些人类庸俗的“吸引”毫无兴趣。~
IF ~!Gender(Player1,MALE)~ + p4.5
IF ~Gender(Player1,MALE)~ + p4.6
END

IF ~~ p4.5
SAY ~够了。我厌了。~
IF ~~ EXIT
END

IF ~~ p4.6
SAY ~这也包括你，<CHARNAME>。你已证明……比我见过的其他城里人少几分蠢，所以我才容你活这么久；但你要乱来，会后悔的。~
IF ~~ + p4.5
END
END

CHAIN IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaPCTalk","GLOBAL",4)~ THEN BC0Paina p5
~你提过你是死去的某个神的孩子。我怀疑那神没工夫管你的教养。~
DO ~SetGlobal("C0PaiNaPCTalk","GLOBAL",5)~
END
++ ~没有。我由养父养大。~ + p5.1
++ ~你有过家人吗？~ + p5.2
++ ~我不想谈家人。~ + p.0

APPEND BC0Paina

IF ~~ p5.1
SAY ~嗯。那么你由非血亲之人养大。~
++ ~你呢？你跟家人一起长大吗？~ + p5.2
END 

IF ~~ p5.2
SAY ~我的童年与你并无不同。我对人类母亲所知甚少，对父亲所知更少。我在泰希尔森林里由一位森林女巫养大。~
++ ~就是她教你跟蜘蛛打交道的？~ + p5.3
++ ~你对你母亲知道什么？~ + p5.4
++ ~你对你父亲知道什么？~ + p5.5
++ ~有意思，可我们得走了。~ + p.0
END

IF ~~ p5.3
SAY ~是，就是她。你自己能想到这答案，恭喜。~
= ~那女巫——她没有名字，别问我——教了我群巢大师之道，教我怎么跟昆虫和蜘蛛通感，并把保护自然最脆弱的孩子这份职责刻进我心里。那是我唯一愿意记住的一课。~
++ ~那女巫后来怎样了？~ + p5.6
++ ~你对你母亲知道什么？~ + p5.4
++ ~你对你父亲知道什么？~ + p5.5
++ ~有意思，可我们得走了。~ + p.0
END

IF ~~ p5.4
SAY ~她是卓尔地面劫掠掳来的人类奴隶。我父亲大概是某个可怜的家兵，强占了她，让她怀了孕，然后丢下她等死。~
= ~我母亲奇迹般逃回了地面。养我的女巫帮她生下我，然后她就死了。~
++ ~那女巫后来怎样了？~ + p5.6
++ ~有意思，可我们得走了。~ + p.0
END

IF ~~ p5.5
SAY ~对他，我只有看法——一个可悲、软弱、欺凌比自己更弱的女人来满足他无用一生的懦夫。至于我母亲……~
IF ~~ + p5.4
END

IF ~~ p5.6
SAY ~（耸肩）说不定她还活着，也说不定已经过世。我甚至不确定她是不是人类；但我成年后就离开了她，再没回去。~
++ ~你为什么离开她？~ + p5.7
++ ~好。我们走吧。~ + p5.8
END

IF ~~ p5.7
SAY ~因为……~
= ~因为我厌了她——你要继续问这种烦人的问题，我也可能厌了你。~
= ~这场谈话结束了。~
IF ~~ EXIT
END

IF ~~ p5.8
SAY ~是，走吧。我也厌了这场谈话。~
IF ~~ EXIT
END
END

CHAIN IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaPCTalk","GLOBAL",5)~ THEN BC0Paina p6
~我没听错吧，<CHARNAME>？你去过斗篷森林？~
DO ~SetGlobal("C0PaiNaPCTalk","GLOBAL",6)~
END
++ ~确实去过。~ + p6.1
++ ~也许去过。怎么了？~ + p6.1

APPEND BC0PAINA

IF ~~ p6.0
SAY ~你只是太无知，看不出它们的美。也罢，总有一天我自己去弄明白。~
IF ~~ EXIT
END

IF ~~ p6.1
SAY ~我听说斗篷森林里有蜘蛛。各种颜色的都有，巨大、壮丽，眼睛比你的头还大。那些都是真的？~
++ ~我不知道有没有那么大、那么艳，但确实有几只那样的。~ + p6.2
++ ~你从没去过斗篷森林？~ + p6.3
++ ~别问我蜘蛛的事。我做的噩梦够多了。*发抖*~ + p6.0
END

IF ~~ p6.2
SAY ~我——我想……*咳* 我是说，你要把所见所闻全讲给我听，从它们的样子到它们发出的声音。~
= ~若可能，连腿有多长、吃什么、蛛丝的韧度和颜色……~
++ ~哇！慢点，我没法全讲给你。~ + p6.3
++ ~你不介意我把它们全杀了？~ + p6.4
++ ~嗯，看看吧。要不要我讲讲那个指挥它们的胖女人？~ + p6.5
END

IF ~~ p6.3
SAY ~把你知道的全告诉我。全部。我若不能亲临，至少可以想象。~
++ ~好，好。~ + p6.6
++ ~谢了。蜘蛛让我发毛。~ + p6.0
END

IF ~~ p6.4
SAY ~你……呃……你当时……无知。希望我的出现已让你开了窍。~
IF ~~ + p6.3
END

IF ~~ p6.5
SAY ~那些蜘蛛是另一个存在指挥的？真奇怪……~
IF ~~ + p6.3
END

IF ~~ p6.6
SAY ~好。我会记着你的话。也许夜里歇息前，你讲给我听。~
IF ~~ EXIT
END
END

CHAIN IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaPCTalk","GLOBAL",6)~ THEN BC0Paina p7
~你可曾想过你的父母，<CHARNAME>？毕竟你也不是血亲养大的，跟我一样。我能……体会。~
DO ~SetGlobal("C0PaiNaPCTalk","GLOBAL",7)~
END
++ ~你，表示体谅？真稀罕。~ + p7.1
++ ~我不想。葛瑞安跟任何父亲一样好。~ + p7.2
++ ~有时会想，可我对他们知道不多。~ + p7.3

APPEND BC0PAINA

IF ~~ p7.1
SAY ~我并非全无感情，<CHARNAME>。毕竟我的心只有一半是黑的。*哼鼻*~
IF ~~ + p7.3
END

IF ~~ p7.2
SAY ~真叫人困惑。我与师父的关系远没这么亲近。也许你这位“葛瑞安”是个例外。~
IF ~~ + p7.3
END

IF ~~ p7.3
SAY ~我倒想知道，他们可曾留给你什么纪念物？我听说我的人类母亲，带着这枚卓尔打造的子指环，和我一起逃上了地面。~
++ ~我不记得收到过那样的东西，没有。~ + p7.4
++ ~你母亲为什么会有卓尔的魔法物品？~ + p7.5
++ ~葛瑞安给我的信里提过我母亲一些事……可我被抓时把信弄丢了。~ + p7.4
END

IF ~~ p7.4
SAY ~可惜。我觉得这小玩意能给我些安慰。哪怕它没蕴含强大魔法，我也会留着。~
= ~我不是多愁善感的人，可是……想到她有力量把我从幽暗地域救出来，感觉很好。~
IF ~~ + p7.5
END

IF ~~ p7.5
SAY ~这枚指环多半与她的逃脱大有关系……她一定是偷来的，从我那……*啐* 父亲，或某个女祭司那儿。~
= ~想来也讽刺。我憎恶卓尔用他们的血玷污了我的存在，可我最珍视的物件却是卓尔所造。不过我……不在乎。~
++ ~是你母亲拿走的，那就属于她，不属于卓尔。~ + p7.6
++ ~那么你敬重你母亲？~ + p7.7
END

IF ~~ p7.6
SAY ~我知道。我不是傻子，也不是孩子，<CHARNAME>。~
IF ~~ + p7.8
END

IF ~~ p7.7
SAY ~不止敬重。我……钦佩她。若她活着把我养大，我甚至也许会爱她。她完全有理由憎恶我——我是曾占有她的卓尔所生的产物——可她还是在乎到把我救下，不管等着我的是何等凄凉的命运。~
= ~而且她不只是在乎……她还有力量逃脱。若没有她的爱与力量，我不会在这里。我怎能不钦佩？~
++ ~你说得对。我也会。~ + p7.9
++ ~我们谈够了。走吧。~ + p7.8
END

IF ~~ p7.8
SAY ~反正这让我无聊。我们不是还有差事或别的事要办？~
IF ~~ EXIT
END

IF ~~ p7.9
SAY ~也许你到底没那么蠢，<CHARNAME>。~
IF ~~ EXIT
END
END

CHAIN IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaPCTalk","GLOBAL",7)~ THEN BC0Paina p8
~我一向把城里人看成粗野懒惰的蠢货，走路都不管脚下踩着什么；不过你还不赖，<CHARNAME>。~
DO ~SetGlobal("C0PaiNaPCTalk","GLOBAL",8)~
END
+ ~Class(Player1,DRUID_ALL)~ + ~你要知道，我也是德鲁伊。~ + p8.1
+ ~Class(Player1,RANGER_ALL)~ + ~你要知道，我是游侠。~ + p8.1
++ ~嗯，这话我爱听。~ + p8.2
++ ~那你改变了对“城里人”整体的看法吗？~ + p8.3

APPEND BC0PAINA

IF ~~ p8.1
SAY ~也许吧，可我们初遇时，你跟城里那些蠢货相处得太自在，我信不过你。如今变了。变了一点。~
IF ~~ + p8.2
END

IF ~~ p8.2
SAY ~我几乎开始觉得你的陪伴可以忍受了。~
++ ~啊——好心情又没了。~ + p8.4
++ ~你就不能好好说两句完整的话，不带刺我一下？~ + p8.5
END

IF ~~ p8.3
SAY ~不能。~
++ ~好吧。~ + p8.2
++ ~真可惜。~ + p8.2
END

IF ~~ p8.4
SAY ~我若不这样，就不是我了。~
IF ~~ EXIT
END

IF ~~ p8.5
SAY ~不。也许……嗯，不。再说，我刚夸过你，你这不知好歹的。~
++ ~正是如此。~ + p8.4
++ ~那*也*算夸奖？~ + p8.6
++ ~谢谢。~ + p8.7
END

IF ~~ p8.6
SAY ~就这么接受吧。你该知道我很少夸人。~
IF ~~ EXIT
END

IF ~~ p8.7
SAY ~别——别谢我。我都不知道该怎么回应。~
++ ~说句“不客气”如何？~ + p8.8
++ ~不必。没事。~ + p8.9
END

IF ~~ p8.8
SAY ~……不。~
IF ~~ EXIT
END

IF ~~ p8.9
SAY ~呸。~
IF ~~ EXIT
END
END

CHAIN IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaPCTalk","GLOBAL",8) RealGlobalTimerExpired("C0PaiNaTalkTimer","GLOBAL")~ THEN C0PAINAJ p9
~你要把这事告诉任何人，我就杀了你；不过我承认……我很难理解发生的一切。那法师……艾瑞尼卡斯，他夺走了你的灵魂？是真的？~
DO ~SetGlobal("C0PaiNaPCTalk","GLOBAL",9)~
END
++ ~他是这么说的。~ + p9.1
++ ~你为何关心这个，派娜？~ + p9.2
++ ~我没兴趣跟你讨论我的灵魂，派娜。~ + p9.0

APPEND C0PAINAJ

IF ~~ p9.0
SAY ~好吧。我也没指望别的。~
IF ~~ EXIT
END

IF ~~ p9.1
SAY ~我倒想知道那是什么感觉？你觉得体内缺了什么？还是感觉一如往常，只是你在信那疯子的说法？~
++ ~他也许在撒谎，但我不这么想。我的巴尔之子力量没了。~ + p9.3
++ ~他有什么理由撒谎？他并不指望我活。~ + p9.4
++ ~我没兴趣谈我的灵魂，除非我把它夺回来。~ + p9.0
END

IF ~~ p9.2
SAY ~看看你四周，<CHARNAME>。你看见周围还有什么别的东西能分心吗？~
IF ~~ + p9.1
END

IF ~~ p9.3
SAY ~据我师父所教，封住微小的魔法天赋是件易事。不过……我想他也没理由撒谎。~
IF ~~ + p9.5
END

IF ~~ p9.4
SAY ~说得对。不过他也许是想让你在绝望中死去。我承认，他的残忍……完全是另一回事。仿佛他对生者毫无共情。~
IF ~~ + p9.5
END

IF ~~ p9.5
SAY ~我从前从别人体内撕扯出过东西，可那些是……肉体的。而且很脏。我甚至想不出怎么把灵魂从身体里扯出来。而你经历这事居然还活着。这真有意思。~
++ ~真恶心，派娜。~ + p9.6
++ ~你觉得你想学怎么做？~ + p9.7
++ ~住口。现在。~ + p9.0
END

IF ~~ p9.6
SAY ~*哼鼻* 相信我，你不会想知道我师父教我的那些东西。再说，我猜你宁愿想点别的，而不是眼前的处境。~
IF ~~ + p9.8
END

IF ~~ p9.7
SAY ~嗯。不，我想不会。若我做的事弄不死对方，对方又来找我报仇，那有什么意义？我可没艾瑞尼卡斯那么绝望。~
IF ~~ + p9.8
END

IF ~~ p9.8
SAY ~无论如何，为你好，<CHARNAME>，尽量别突然死了。你才刚开始变得有趣。失去你太可惜了。~
++ ~怎么，派娜，你是在关心我？~ + p9.9
++ ~天，谢谢。~ + p9.10
END

IF ~~ p9.9
SAY ~别荒唐。我把你拖进这摊烂事，自然指望你把我带出去。你要成了蜘蛛的食，可就办不到了，是吧？~
= ~我想你那具无魂的躯壳，也做不出一顿有营养的饭。~
IF ~~ + p9.10
END

IF ~~ p9.10
SAY ~不管怎样，活下去对我们双方都有利，所以我会……尽力，我想，确保你活着。但别指望我一边做一边笑。~
++ ~谢谢你。真的。~ + p9.11
++ ~我还是觉得你在乎。~ + p9.12
END

IF ~~ p9.11
SAY ~哦……闭嘴。~
IF ~~ EXIT
END

IF ~~ p9.12
SAY ~我……~
= ~我不在乎。就这样。~
IF ~~ EXIT
END
END

CHAIN IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaPCTalk","GLOBAL",10)
AreaType(OUTDOOR)
!TimeOfDay(NIGHT)
RealGlobalTimerExpired("C0PaiNaTalkTimer","GLOBAL")~ THEN C0PAINAJ p10
~我不敢相信我竟会说这话，可我从未如此高兴再见到天空。~
DO ~SetGlobal("C0PaiNaPCTalk","GLOBAL",10)~
= ~呸！我刚习惯那光，我们在地下一通跋涉，又把那刺眼带回来了。这全怪你，<CHARNAME>。~
END
++ ~随你怎么说。~ + p12.1
++ ~那一路你就一点没享受？~ + p12.2
++ ~哦，闭嘴吧。~ + p12.0

APPEND C0PAINAJ

IF ~~ p12.0
SAY ~哼。~
IF ~~ EXIT
END

IF ~~ p12.1
SAY ~哦，挺起点脊梁来，<CHARNAME>。还是艾瑞尼卡斯连这个也从你身上抽走了？~
IF ~~ + p12.3
END

IF ~~ p12.2
SAY ~也许你不知道。也许我从没提过，一直都没提，但我现在要说出来，让这知识渗进你空空的脑袋。~
= ~我憎恶卓尔。每一个。~
IF ~~ + p12.3
END

IF ~~ p12.3
SAY ~*叹气* 我……累了。又累又烦。也许这回我甚至做得太过，但我不会道歉。~
= ~我的血统塑造了我的人生，有些方式我并不喜欢。我承认。我虽常对卓尔喷毒，可……大多数时候我并不想他们。一想就想去毒死离我最近的活物。~
= ~穿过幽暗地域的旅程……很可怕。卓尔与我设想的一模一样，许多方面还更糟。~
++ ~说实话，你跟他们也没多大差别。~ + p12.4
++ ~我很抱歉。~ + p12.5
++ ~嗯，我们现在出来了。~ + p12.6
END

IF ~~ p12.4
SAY ~什么？！你……你、你……~
= ~你……*叹气* 你说得没错。也许这正是最让我恼火的地方。~
= ~该死的，<CHARNAME>。你为什么总是对的？就……闭嘴。闭嘴，现在别跟我说话。~
IF ~~ EXIT
END

IF ~~ p12.5
SAY ~为什么？你真的在乎吗，<CHARNAME>？还是只想让我闭嘴？~
IF ~~ + p12.6
END

IF ~~ p12.6
SAY ~哼，随便。你要想让我心情好点，我……领情，不管这值多少。这一定是我还愿意留在你身边的原因。~
IF ~~ EXIT
END

END