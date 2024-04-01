;――――――――――――――
;★★★情緒育成ゲームシナリオ　D_1★★★
;【初稿】2024年1月28日
;【登場キャラクター】ヰ世界情緒、舞川レイナ、歌方咲、長谷部瑠璃
;【内容】情緒悩む
;【ワード数】情緒8w、歌方4w、レイナ3w、社長7w
;【メモ】
;――――――――――――――

;背景：事務所内装

[bg storage=office_inside.png time=0]
[mask_off]
[show_msgwindow]
*d1_1
#
カレンダーアプリを開いて、週末までの日数を数える。[p]

#prd
「1、2、3……そっか、情緒のファーストライブまであと4日なんだ」[p]

#
これは情緒のファーストライブであると同時に、私のファーストライブでもある。[p]

右も左もわからず業界に入って、2ヶ月弱。[p]

短い期間だったはずだけど、初めてのことばかりで……随分長く感じられた。[p]

ほとんど全部、情緒と出会えたおかげだ――[p]

#prd
「そういえば今、レッスンの時間だよね。ちょっと、様子を見てこようかな？」[p]

#
連日連夜のライブ準備で眠たい目をこすりながら、私は席を立った。[p]

;背景：ダンススタジオ
[hide_msgwindow]
[bg storage=black.png]
[bg storage=studio_dance.png]
[playbgm storage="BGM01_normal1.wav" volume="10"]
;立ち：歌方咲
;立ち：レイナ
[show_saki left=150]
[show_reina left=750]
[show_msgwindow]

#saki
「プロデューサーさん、いいところに～！」[p]

#reina
「これから、本番と同じように通しでやろうとしてたのよ！　聴いていかない、プロデューサー？」[p]

#prd
「わっ、そうだったんですね！　もちろん聴いていきます！」[p]

#prd
「情緒、準備は大丈夫？」[p]

#
[chara_hide name=saki time=100 pos_mode=false]
[chara_hide name=reina time=100]
;立ち消し
;立ち：情緒
[show_jyocho face=tserious]

#jyocho
「す～っ……は～～～っ……。はい、大丈夫です。頑張ります！」[p]

;暗転
#
[chara_hide name=jyocho time=500]
[bg storage=black.png time=1000]

#
――今回のライブは、いくつかの事務所が合同で開くライブだ。[p]

新人アイドルが6、7人ほど出演し、それぞれ持ち曲を披露する。[p]

情緒に与えられたのは、中盤の2曲分のコマだ。[p]

この日がデビューのアイドルは、他にいない。[p]

チケットの予約数は上々らしい。[p]

でも、お客さんが盛り上がってくれるかは、情緒の実力にかかっている。[p]

…………。[p]

……。[p]

*d1_2
;背景：ダンススタジオ
[bg storage=studio_dance.png]

#
――そして、練習用の音源が鳴り止んだ。[p]

[show_jyocho face=tangry]

#jyocho
「はぁっ、はぁっ、はぁ…………ふぅ……」[p]

#
情緒の顔には、汗が玉のように浮かんでいた。[p]

#jyocho:tconfused
「プロデューサーさん。どうでしたか」[p]

#prd
「うん、普通に良かったと思うよ！　これならライブも……」[p]

#
――言いかけて、情緒が曇った表情をしていることに気づいた。[p]

#jyocho:tserious
「……やっぱり、『普通に良い』レベルですよね」[p]

#prd
「え……？」[p]

#
[chara_hide name=jyocho]


情緒の言葉を補足するように、レイナさんたちが言う。[p]

[show_reina left=250 time=700 face=angry]
[show_saki left=-250 time=700 face=confused]

#reina:angry
「咲さんと話してたのよ。情緒なら、もっと凄いステージが作れるんじゃないかって」[p]

#saki:confused
「確かにものすごく良い、良いんだけど……」[p]

#saki:serious
「情緒ちゃんの歌ってみた動画を超えるようなライブにできないのかなって」[p]

#prd
「ああ……」[p]

#
確かに、そういうことなら……納得感がある。[p]

私が初めて情緒の歌声を聞いたときの、あの感動。[p]

今のパフォーマンスからそれが蘇ってくるかというと……難しい。[p]

[show_jyocho left=900 face=tserious]

#jyocho:tserious
「練習が足りない……ってことなんでしょうか」[p]

#reina:confused
「それはないわよ！」[p]

#saki:angry
「それはないよ、情緒ちゃん」[p]

#prd
「うん、それはない。情緒は練習、とても頑張ったよ。私たちが保証する」[p]

#
落ち込んだ様子を隠せない情緒。[p]

私よりも一回り小さなその姿を見ながら、かける言葉を考える。[p]

#prd
「あと一押し……何か、見えない壁を越えられれば。きっと、ライブは成功するよ」[p]

#prd
「心の持ちようだけでも十分変わると思うから。あと4日間、一緒に考えよう！」[p]

#jyocho:tconfused
「そう……ですね。わかりました」[p]

#
[hide_msgwindow]
[mask color=black]
[chara_hide name=reina time=1000]
[chara_hide name=saki time=1000]
[fadeoutbgm time=2000]
[chara_mod name=jyocho face=cserious]
[anim name=jyocho left=550 time=1]
[bg storage=office_inside.png]
[show_ruri time=1000 face=smile left=100]
[mask_off]
[show_msgwindow]
;暗転
;背景：事務所内装
*d1_3

#ruri:smile
「はい、今日のレッスンはこれで終わりです♪」[p]

#ruri:confused
「ライブ前に作曲の座学なんて……と思うかもしれませんが、アイドルは技術だけじゃないですからね」[p]

#ruri:normal
「ぜひ復習もしておいてくださいね」[p]

#jyocho:cconfused
「はい、わかりました」[p]

#ruri:serious
「……」[p]

#ruri:confused
「情緒さん、ちょっと疲れてますか？　少し肩が強ばってますよ」[p]

#jyocho:cserious
「疲れてる……そうなのかもしれません。自分でも、よくわかってなくて」[p]

#ruri:normal
「ふふっ、なるほど。では、気分転換がてら、ここに行ってみるのはどうでしょう？」[p]

#ruri:smile
「いずれにせよ、後悔のないようにしてくださいね」[p]

#
[hide_msgwindow]
[mask color=black]
[chara_hide name=ruri time=1000]
[chara_hide name=jyocho time=1000]
[bg storage=black.png]
[mask_off]

@jump storage="scene_d2.ks"
;ノベルD_2へ
