*start

[voconfig sebuf="3" name="jyocho" vostorage="jyocho/{number}.ogg" number="10000"]
[voconfig sebuf="3" name="reina" vostorage="reina/{number}.wav" number="20000"]
[voconfig sebuf="3" name="saki" vostorage="saki/{number}.wav" number="30000"]
[voconfig sebuf="3" name="ruri" vostorage="ruri/{number}.wav" number="40000"]

[vostart]

*a1_1

[bg storage="black.png"]
;背景：事務所
[camera layer="base" time="1" zoom="1.5" y="-180" x="0"]
[bg storage="office_front.bmp" time="500"]

[camera layer="base" time=20000 y=180 wait=false ease_type=linear]

;ＳＥ：街中の雑踏
[playse storage="Town01.wav" loop=true volume=30]
[wait time=2000]
[show_msgwindow]

;立ち：ヰ世界情緒・私服
[show_jyocho face=cserious]

#jyocho
「ちょっと不安だけど、もうここまで来ちゃったし……」[p]

[chara_hide name=jyocho time=100]
[chara_show name=jyocho face=cconfused top=-130 width=2300]
#jyocho
「……うん。せめて話くらいは聞いていこう」[p]

#jyocho:cnormal
「本当にアイドルになるかは、後でも決められるしね」[p]

#
[mask graphic="office_front.bmp" effect=fadeIn time=2000]
[hide_msgwindow]
[chara_hide name="jyocho"]
[reset_camera layer="base" time=100]
[mask_off]
[fadeoutse time=2000]

;暗転
[bg storage="black.png" time=2000]
[playse storage="Knock08.wav"]
[show_msgwindow]

#jyocho
「お、お邪魔しま〜す……」[p]

#prd
「あ、来たね。待ってたよ」[p]

#
[playse storage="Door02O.wav"]

[bg storage="office_inside.png" time="2000"]

[show_jyocho face=cserious]

#jyocho
「えっと、ここ……アイドル事務所の神椿プロダクションで間違いないですか？」[p]

#prd
「うん。私は神椿プロのプロデューサーだよ。で、キミは――」[p]

#jyocho:cnormal
「ヰ世界情緒です。――アイドルデビューに、興味があります」[p]

#
[hide_msgwindow]
[chara_hide name=jyocho]
;立ち消し
;背景：事務所内装（セピア）
*a1_2

[bg storage="black.png" time=2000]
[filter layer=base sepia=60]
[filter layer=0 sepia=60]
[bg storage="office_inside.png" time=2000]

;ＢＧＭ：日常
[playbgm storage="BGM02_normal2.mp3" volume="10"]
[show_msgwindow]

#
――私がその声を見つけたのは、まったくの偶然だった。[p]

それは、今からちょうど一週間前のこと。[p]

[playse storage="Keyboard02.wav"]

#prd
「…………」[p]

[playse storage="Keyboard05.wav"]

#prd
「…………はぁ」[p]

#
昔からアイドルが大好きだった。[p]

念願だったアイドル事務所、神椿プロに新卒で就職してはや1カ月。[p]

規模は大きくないし、事務所としての知名度もまだ高くない。[p]

でも、新人アイドルの育成に強いのが神椿プロの特徴だ。[p]

次に来る事務所はここなんじゃないか、と思って就職を決めたわけだけど……[p]

入社してからやったことと言えば、ひたすらネットの動画を見ることだけだった。[p]

――あなたの感性で、アイドルデビューさせたい子を見つけてください。[p]

それが、入社当日に社長からもらった唯一の指示。[p]

以来私は、ネット上で歌ってみた、踊ってみた動画を漁り続ける日々を送っている――[p]

#prd
「自由なのはいいけどさぁ。これじゃ、学生時代と変わらないっていうかさぁ……」[p]

#
確かに、今は誰もが認めるアイドル戦国時代だ。[p]

歌い手や踊り手だけじゃなく、配信者、プロゲーマー、お笑い芸人……[p]

色々なインフルエンサーが、次々とアイドルデビューを果たしている。[p]

でも、だからって仕事が動画を見るだけじゃ、色々と思うところがあるわけで……[p]

――ちょうどそのとき、新しい動画が自動再生された。[p]

#prd
「…………ん？」[p]

#
初めは、ちょっとした違和感だった。[p]

透き通るような声。そんな陳腐な表現では言い表せないような、何か。[p]

#prd
「…………うそ……」[p]

#
[bg storage="black.png" time=1000]
;背景　暗転

#
それは、一本の歌ってみた動画だった。有名な曲だ。[p]

でも……[p]

[bg storage="office_inside.png" time=1000]

#prd
「この曲って、こんなに楽しく……力強く、歌えるものなの……？」[p]

#
気がつけば、私は食い入るように彼女の動画をディグっていて――[p]

その日、私は初めて残業というものをしたのだった。[p]

;背景　事務所内装
[mask color=black]
[free_filter]
[hide_msgwindow]
[fadeoutbgm time=2000]
[mask_off]
[bg storage="office_inside.png"]
[show_msgwindow]
[wait time=1000]
[playbgm storage="BGM01_normal1.mp3" volume="10"]

[show_jyocho face=cconfused]

*a1_3

#jyocho
「し、失礼しまーす……」[p]

#prd
「情緒、緊張してる？」[p]

#jyocho:cserious
「……はい。こういうオフィスみたいなとこに来たの、初めてで」[p]

#prd
「まぁ、そうだよね。でも大丈夫、安心していいよ」[p]

#prd
「私もちょっと――いや、かなり緊張してるから。お、推しが目の前にいるって……ヤバいね……」[p]

#
よく手入れされているのだろう銀髪に、透き通るような肌。[p]

こんな天使みたいな少女が奏でる、あの歌声……。[p]

この子がアイドルになったら、なんて想像しただけで身震いする。[p]

#prd
「それはともかく。ここに来てくれたってことは、アイドルデビューに興味があるってことでいいんだよね？」[p]

#jyocho:cnormal
「そうです。でも、まだちょっと迷ってて」[p]

#jyocho:cserious
「……アイドルには、ずっと憧れがあったんです。でもその憧れは、ずっと客席から見た憧れでした」[p]

#jyocho:cconfused
「自分でやる分には、歌うことだけでいいかなって。歌ってみた動画も、色んな人に聴いてもらえたし……」[p]

#jyocho:cserious
「いざアイドルになろうと思っても、自分がどんなアイドルになりたいのか、それすらもわからなくて」[p]

#prd
「それは難しい問題だね。きっと、ずっと考えていかなきゃいけない問題だ」[p]

#prd
「でも今、私が一つ言えるとしたら――」[p]

#prd
「私は、アイドルになった君の姿を見たいな。君がアイドルとして、もっともっと羽ばたく姿を見たい」[p]

#jyocho:cconfused
「まだアイドルの卵でもないわたしに、どうしてそんな期待を？」[p]

#prd
「それは、私が君のファンだからだよ。私みたいに君のステージが見たいファンは、きっと大勢いる」[p]

#prd
「未だこの世界に存在しない、アイドル・ヰ世界情緒という存在が生まれ、育ち、輝くさま……」[p]

#prd
「それをこの目で観測できるなんて、ものすっごくワクワクするじゃん？」[p]

#
一息置いて、まるで告白でもするように。私は言った。[p]

#prd
「だからどうかな、情緒。アイドルとして――ファーストライブ、目指してみない？」[p]

#jyocho:cserious
「…………」[p]

#
情緒は、私の目をしっかりと見ると。[p]

[chara_hide name=jyocho time=100]
[chara_show name=jyocho face=cnormal top=-130 width=2300]
#jyocho:cnormal
「……私も、まだ存在しないアイドルとしてのわたしが見たい。可能性が見たい。心から、そう思います」[p]

#jyocho:csmile
「だから、プロデューサーさん。――わたしを、アイドルにしてください！」[p]

#prd
「うん！」[p]

#
――それが、いわゆる伝説の始まりなのだった。[p]

[chara_hide name=jyocho]
[hide_msgwindow]
[bg storage=black.png]
[jump storage="scene_a2.ks"]
