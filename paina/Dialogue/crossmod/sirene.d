CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("C0Paina",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SirenePaina1","GLOBAL",0)~ THEN BC0SIRE2 C0SirenePaina1
~派娜，我们在这世上都是被逐之人。~
DO ~SetGlobal("C0SirenePaina1","GLOBAL",1)~
== BC0Paina ~圣武士，你若以为能在我们之间找到共同之处，准备好大失所望吧。~
== BC0SIRE2 ~我知道你把我们看作对立。可我真的对你无敌意。我知道你外表之下受着孤独之苦。~
== BC0Paina ~我从不觉得孤独。我的蜘蛛就是我所需要的全部朋友。~
== BC0SIRE2 ~派娜……我知道孤身一人是什么滋味。藏着它只会让你更苦。~
== BC0Paina ~你为何在意？~
== BC0SIRE2 ~因为我是伊尔梅特的仆从，更因为我真的想成为你的朋友，派娜。我在你眼中看到一种与我相似的孤独，被你的骄傲遮住……~
== BC0Paina ~哦，闭嘴，别烦我！我……我不想听你这套废话。~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("C0Paina",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SirenePaina2","GLOBAL",0)~ THEN BC0SIRE2 C0SirenePaina2
~你的站姿不对。~
DO ~SetGlobal("C0SirenePaina2","GLOBAL",1)~
== BC0Paina ~什么？~
== BC0SIRE2 ~你挥杖时，杖的重量会让你的架势失衡。把杖借我，我示范给你看。~
== BC0Paina ~我不要你的指教。~
== BC0SIRE2 ~我从前练过一点杖法。让我教你。~
== BC0Paina ~不。我没兴趣被人教。我有蜘蛛和魔法护身。我若得在战阵中抡这根木棍，那就说明你失职了。~
== BC0SIRE2 ~也许你说得对。可我若真战死了，你怎么办？~
== BC0Paina ~我会活下来。我很擅长活下来。~
== BC0SIRE2 ~不必这么固执。我只教你些基本功。我只想帮忙，别无他意。~
== BC0Paina ~我说了我不想……（叹气）好吧。示范给我看。~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("C0Paina",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SirenePaina3","GLOBAL",0)
AreaType(FOREST)~ THEN BC0SIRE2 C0SirenePaina2
~看树后的太阳，派娜。光多温暖，多叫人安心。~
DO ~SetGlobal("C0SirenePaina3","GLOBAL",1)~
== BC0Paina ~哼。~
== BC0SIRE2 ~你不欣赏自然之美吗，派娜？我以为离开城市你会更快乐。~
== BC0Paina ~我更偏爱蛛形类的形态。这林子……比文明的污秽可取，可太……太亮太艳丽了。~
== BC0SIRE2 ~是因为你的卓尔血统，还是因为你的教养？~
== BC0Paina ~我不知道，也不在乎。你若看重自己的安危与舒适，就*别*叫我卓尔。~
== BC0SIRE2 ~我……请原谅。我无意冒犯……若这有用的话，派娜，我知道那是什么滋味。~
== BC0Paina ~……~
== BC0Paina ~呸。这种话我听得太多，已经气不起来了。只是别再提。~
EXIT
