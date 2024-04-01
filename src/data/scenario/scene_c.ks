;――――――――――――――
;★★★情緒育成ゲームシナリオ　C★★★
;【初稿】2024年1月28日
;【登場キャラクター】ヰ世界情緒、舞川レイナ、歌方咲、長谷部瑠璃
;【内容】レッスン進行中、ファーストライブ日程決定
;【ワード数】情緒11w、レイナ4w、歌方4w、社長1w
;【メモ】
;――――――――――――――

;背景：ダンススタジオ
;立ち：情緒（私服）
;立ち：レイナ

*c_1

[bg storage=studio_dance.png time=0]
[mask_off]
[playbgm storage="BGM01_normal1.wav" volume="10"]
[show_jyocho face=tserious left=700]
[show_reina face=angry left=-200]
[show_msgwindow]

#reina:angry
「ワンツーワンツー、次気をつけて――はい、ターンっ！」[p]

#jyocho:tangry
「……っ！」[p]

#reina:normal
「はい、気を抜かないでもう一度、さんはいっ！」[p]

#
練習着をふわりと膨らませて、決めポーズ。[p]

#prd
「すごいすごい、情緒、ダンス上手くなったね！」[p]

#jyocho:tconfused
「はぁ、はぁ、ありがとうございます……っ！」[p]

#
息を切らした情緒にタオルとミネラルウォーターを手渡す。[p]

[hide_msgwindow]
[anim name=reina left=+=300 time=1500]
[wait time=1500]
[show_msgwindow]
#reina:smile
「うん、ちゃんと上達したわね！　やっぱり筋が良いのよ」[p]

#reina:confused
「あとは、踊りを通じて自分が何を表現したいのか――それを意識すれば完璧よ！」[p]

#
情緒は少し、困ったような顔で言った。[p]

#jyocho:tserious
「……踊りで表現したいこと、ですか。……ちょっと、考えてみます」[p]

#
;立ち消し

[hide_msgwindow]
[mask color=black]
[chara_mod name=jyocho face=tnormal]
[chara_hide name=reina]
[show_saki]
[bg storage=studio_vocal.png]
[mask_off]
[show_msgwindow]

;背景：ボーカルスタジオ
;立ち：情緒
;立ち：咲
*c_2

#
情緒が歌い終えると、スタジオに歌方さんの拍手が響いた。[p]

#saki:smile
「うわー、上手！　音程もリズムも完璧だよ～！」[p]

#prd
「情緒、やっぱり歌うまくなったよね？」[p]

#jyocho:tsmile
「自分でもそんな気がします。自己流の歌い方を、歌方さんに直してもらったので！」[p]

#prd
「そっか。情緒らしさを生かした歌声で、最高だね！」[p]

#saki:normal
「うんうん。プロデューサーさんの言うとおりだよ～」[p]

#saki:confused
「楽譜通り歌うのはもう完璧だから、あとは情緒ちゃんの解釈次第だね！」[p]

#saki:serious
「アイドルとして、何をどう歌いたいのか。それが結局、一番大事だからね～」[p]

#jyocho:tconfused
「……解釈、かぁ」[p]

#prd
「まあ、まだファーストライブまでは時間あるからね。ゆっくり考えていこう」[p]

#jyocho:tnormal
「そうですね。わかりました」[p]

;立ち消し
#
[hide_msgwindow]
[mask color=black]
[fadeoutbgm time=2000]
[chara_hide name=jyocho time=1]
[chara_hide name=saki time=1]
[bg storage=black.png time=1000]
[mask_off]

;暗転
;背景：事務所内装
[bg storage=office_inside.png]
[show_ruri face=smile]
[playse storage="Okehi01.wav"]
[wait time=2000]

[chara_hide name=ruri time=100]
[playse storage="Okehi02.wav"]
[chara_show name=ruri face=smile top=-40 width=1700]

[show_msgwindow]

#ruri
「ということで、情緒さんのファーストライブは1週間後に決まりました♪」[p]

[playse storage="Fanfare01.wav"]

#prd
「…………」[p]

#prd
「おおう……」[p]

;暗転
[hide_msgwindow]
[mask color=black]
[chara_hide name=ruri]
[show_jyocho face=cserious]
[mask_off]
[playbgm storage="BGM02_normal2.wav" volume=10]
[show_msgwindow]
;背景：事務所内装

*c_3

#prd
「いやあ、情緒、その、何というか……突然、だよね……」[p]

;立ち：情緒（私服）

#jyocho:cconfused
「……はい。何というか……寝耳に水、って感じですね」[p]

#prd
「あはは……。ライブの枠が空いてチャンスなのはわかるけど、いくらなんでも近すぎだよね」[p]

#
でも、アイドルとはそういう世界なのだ。[p]

一度チャンスを逃したら、次いつチャンスが回ってくるかわからない。[p]

あるいは、もうチャンスなんて来ないかもしれないのだ――。[p]

そういう世界で自分も生きているんだと、ようやく実感する。[p]

#jyocho:cserious
「こんなことあるなんて思いませんでした。でも、プロデューサーさん――」[p]

[chara_hide name=jyocho time=100]
[chara_show name=jyocho face=cangry top=-130 width=2300]

#
情緒は顔を上げて、私の顔をじっと見る。[p]

#jyocho:cangry
「やるしかないですよね。立ち止まっちゃいられないですよね」[p]

#jyocho:cnormal
「これから1週間、練習を頑張ります。歌も踊りも、全部完璧にしますから！」[p]

#prd
「うん、そうだね。私も全力でサポートするよ！」[p]

#
……そのとき、情緒の顔が少し疲れているように見えたのは、私の気のせいなのだろうか。[p]

;立ち消し
[hide_msgwindow]
[fadeoutbgm time=2000]
[chara_hide name=jyocho]
[bg storage=black.png]
[wait time=2000]
;暗転
;SE：ベッドの中でもぞもぞ
[playse storage="Nuno04.wav"]
[wait time=2000]
;立ちなしです
[show_msgwindow]

#jyocho
「ファーストライブ、かぁ……」[p]

#
――わたし、本当にアイドルデビューするんだ。[p]

……やっぱり、実感沸かないなぁ。[p]

まだ、自分がどういうアイドルになりたいのかもわからないのに……[p]

[cancelskip]
[hide_msgwindow]
[mask color="black"]
[bg storage="black.png" time=2000]
[mask_off]

;育成パートへ
[eval exp="sf.training = 'c';"]
[jump storage="training.ks"]
