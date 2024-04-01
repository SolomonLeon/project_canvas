;――――――――――――――
;★★★情緒育成ゲームシナリオ　D_2★★★
;【初稿】2024年1月29日
;【登場キャラクター】ヰ世界情緒、長谷部瑠璃
;【内容】情緒悩むin公園、Pから手鏡もらう
;【ワード数】情緒20w、社長1w（回想のみ）
;【メモ】
;――――――――――――――

;背景：公園
;立ち：情緒
;情緒視点ですが、情緒の立ち絵を表示していても違和感はないと思います

[bg storage=park.bmp]
[playbgm storage="BGM02_normal2.wav" volume="10"]
[show_jyocho face=cnormal]
[show_msgwindow]

*d2_1

#jyocho:cconfused
「事務所の近くに、こんなところがあったんだ……！」[p]

#
社長がわたしに教えてくれたのは、とっておきの公園だった。[p]

都会のビル群の中に佇む、緑のオアシスのような場所。[p]

人通りも少ないし、一息つくにはぴったりだ。[p]

#jyocho:cnormal
「でも、ちょっと日差しが眩しいな。えーっと、どこか木陰は……」[p]

;暗転
[hide_msgwindow]
[chara_hide name=jyocho time=1000]
[bg storage=black.png time=1000]
[playse storage="Walk02O.wav"]
[bg storage=park.bmp]
[show_jyocho face=cserious]
[show_msgwindow]
;SE：歩く音
;背景：公園

#jyocho:cserious
「…………」[p]

#jyocho:cconfused
「……ファーストライブ、4日後かぁ」[p]

#
何かが足りない。それは自分でもわかってるんだ。[p]

でも、何が足りないのか、それすら本当はよくわからなくて……

ここ数日、頭はずっとぐるぐるふわふわしている。[p]

#jyocho:cserious
「……そんな状態で、初めてのライブなんて……」[p]

;立ち消し
#
[chara_hide name=jyocho time=1000]

;背景：セピアな事務所内装
;立ち：社長

;回想です
[bg storage=black.png time=500]
[filter layer=base sepia=70]
[filter layer=0 sepia=70]
[bg storage=office_inside.png time=1000]

[show_ruri]

#ruri
「いずれにせよ、後悔のないようにしてくださいね」[p]

#
[mask color=black]
[free_filter]
[chara_hide name=ruri time=500]
[bg storage=park.bmp time=300]
[show_jyocho face=cnormal time=500]
[mask_off]

;背景：公園
;立ち：情緒（私服）

#jyocho:cnormal
「……後悔のないように、か」[p]

#jyocho:cserious
「……うん、そうだよ。やっぱり、プロデューサーさんにお願いした方がいいよね」[p]

#
わたしは小さな決意を固めて立ち上がる。[p]

[chara_hide name=jyocho time=100]
[chara_show name=jyocho face=cconfused top=-130 width=2300]

#jyocho:cconfused
「このままじゃベストが出せないから、ファーストライブは延期させてほしいって」[p]

;立ち消し
[hide_msgwindow]
[chara_hide name=jyocho]
[fadeoutbgm time=2000]
[bg storage=black.png]
[playse storage="Door02O.wav"]
[bg storage=office_inside.png]
[show_jyocho face=cserious]
[show_msgwindow]
;暗転
;SE：扉開ける音
;背景：事務所内装

*d2_2

#jyocho
「失礼しま～す……。プロデューサーさん、ちょっといいですか？」[p]

#jyocho:cnormal
「……あ、机で寝ちゃってる……。疲れてるのかな？　スマホ、つけっぱなしだし……」[p]

#jyocho:cconfused
「って、あれ？　この動画って、もしかして……！」[p]

;暗転
#
[hide_msgwindow]
[mask color=black]
[chara_hide name=jyocho time=1000]
[bg storage=black.png]
[mask_off]
[show_msgwindow]
;ここからP視点に戻ります

#
夢を見ていた。[p]

銀色の天使が、私の世界に舞い降りる夢。[p]

一つ一つのステップが、エンドレスな日常をキラキラにしてくれて。[p]

そんな、[ruby text=アイ]天[ruby text=ドル]使の名前は――[p]

;背景：事務所内装
[bg storage=office_inside.png]

#prd
「ん……ふわぁ……」[p]

#
[hide_msgwindow]
[show_jyocho face=cnormal left=-200]
[anim name=jyocho left=+=550]
[wait time=2000]
[playbgm storage="BGM02_normal2.wav" volume="10"]
[show_msgwindow]

#jyocho
「おはようございます、プロデューサーさん」[p]

#prd
「情緒？　……あれ、私、ひょっとして寝ちゃってた！？」[p]

#
しかも、スマホまでつけっぱなしだ。[p]

情緒が練習している動画を研究して、どうにかアドバイスをしようと思って……

そのまま寝落ちしてしまった、というわけだ。[p]

うう……社会人失格だ……。[p]

#jyocho:cconfused
「はい、寝てました。ライブの準備でお忙しいんですよね、ありがとうございます」[p]

#prd
「ううん、お礼を言われることじゃないよ。情緒のステージを私が見たいからやってるだけで」[p]

#jyocho:cserious
「……プロデューサーさん、初めて会ったときも、同じようなことを言ってましたね」[p]

#prd
「そうだね。情緒が羽ばたく姿をこの目で観測したいって気持ちは、ずっと変わらないから」[p]

#prd
「……あ、そうそう！　情緒に渡したいものがあるんだよ！」[p]

[hide_msgwindow]
[wait time=2000]
[show_msgwindow]
;SE：がさごそ

*d2_3

#prd
「はい、これ！」[p]

#jyocho:cconfused
「これは……手鏡、ですか？」[p]

#prd
「うん。うちの事務所、入所した子に手鏡をあげることになってるんだよ」[p]

#prd
「情緒の場合はデビューまでが短かったから、完成がライブ直前になっちゃったけど……」[p]

#
手鏡の背面には、青色を基調に花のモチーフがかたどられている。[p]

持ち手の部分をそっとつかんだ情緒は、しげしげと手鏡を眺める。[p]

たっぷりと観察したあと、情緒は訊いた。[p]

#jyocho:cnormal
「この色やデザインは、プロデューサーさんが選んでくれたんですか？」[p]

#prd
「うん、そうだよ。情緒に合うようにって選んだんだけど、どうかな？」[p]

#
すると、情緒はにっこりと微笑む。[p]

#jyocho:csmile
「すっごく気に入りました。やっぱり、さすがプロデューサーさんだなって」[p]

#
それから情緒は何かを言おうとして――やっぱり口をつぐんだ。[p]

代わりに、手鏡を大事そうに胸に抱きしめて。[p]

#jyocho:cnormal
「この手鏡、大事にします。本当にありがとうございます！」[p]

#jyocho:csmile
「じゃあわたし、自主練に行ってきますね」[p]

#prd
「うん、わかった。ライブまで、悔いがないように練習してね」[p]

#prd
「……あれ？　そういえば、何か私に用事があったんじゃないの？」[p]

#
情緒は質問には答えなかった。その代わり。[p]

#jyocho:cnormal
「あの、プロデューサーさん。わたし、ファーストライブ、絶対成功させます！」[p]

#
[hide_msgwindow]
[anim name=jyocho left=+=300 time=1000]
[wait time=2000]
[chara_hide name=jyocho]
[playse storage=Door01C.wav]
[show_msgwindow]

#
――そう言い切って、事務所を後にした。[p]

;立ち消し
;SE：扉が閉まる音

#prd
「あ、行っちゃった……」[p]

#
ちょっと、違和感はあったけど――[p]

情緒がすっごくかわいい笑顔だったので、まあいいかと思った。[p]

[hide_msgwindow]
[fadeoutbgm time=2000]
[bg storage=black.png]
[show_msgwindow]
;立ち消し
;暗転
;SE：ベッドの中でもぞもぞ
[playse storage="Nuno04.wav"]

#jyocho
「ふふっ。やっぱり、いい色だなぁ」[p]

#
枕元に手鏡を置いて、わたしは目をつむる。[p]

今日1日のことを、ぼんやりと思い返す。[p]

ライブを延期してもらおうって、言うつもりだったのに……[p]

#jyocho
「あんなプロデューサーさんの顔を見たら、やるしかなくなっちゃうよ」[p]

#
プロデューサーさんはずっと、わたしの側にいてくれた。[p]

アイドルを始める前から、わたしのファンでいてくれたんだ。[p]

――プロデューサーさんのために。[p]

まだわたしを知らない、未来のファンの人たちのために。[p]

わたし、絶対最高のステージを作るよ。[p]

[skipstop]
[cancelskip]
[hide_msgwindow]
[mask color="black"]
[bg storage="black.png" time=2000]
[mask_off]

;育成パートへ
[eval exp="sf.training = 'd';"]
[jump storage="training.ks"]
