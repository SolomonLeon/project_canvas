;――――――――――――――
;★★★情緒育成ゲームシナリオ　E_2★★★
;【初稿】2024年1月30日
;【登場キャラクター】ヰ世界情緒、舞川レイナ、歌方咲、長谷部瑠璃
;【内容】コミカルエンド
;【ワード数】情緒6w、レイナ4w、社長4w、歌方3w
;【メモ】
;――――――――――――――

*dance

;★★★　①ダンサーエンド　★★★
;黒背景に白文字で"A few years later"（数年後）を表示

[voconfig sebuf="3" name="jyocho" vostorage="jyocho/{number}.ogg" number="10098"]
[wait time=2000]
[bg storage="fewyears.png"]
[wait time=2000]
[bg storage="black.png"]
[show_msgwindow]

#
伝説の始まりとなった、あのファーストライブから数年が経った。[p]

新人アイドルだった情緒は、あれから成長を続け――[p]

;イベントCG：SD01 ダンサーエンド

[playbgm storage="BGM01_normal1.mp3" volume=10]
[bg storage="studio_dance.png"]
[image storage="sd_dancer.png" name="ending-sd-cg" layer="0" width="800" time="1000" x=560 y=20]

――くるくるくるくる、ぴたっ。[p]

ダンススタジオに、二人分の拍手が鳴り響いた。[p]

#reina
「何だったの、今のダンス……！　目にもとまらぬ早さだったわよ！？」[p]

#prd
「ふっふん。これが今の情緒の実力です！」[p]

#jyocho
「いえ、こうして今の私があるのも、レイナさんのおかげです。ありがとうございました！」[p]

#reina
「……ふっ。教え子に抜かれるって、随分複雑な気持ちになるものね」[p]

#reina
「でも、認めるわ。私が教えられることはない。情緒はもう――」[p]

#reina
「これからのダンス界を担う、超トップダンサーよ！！」[p]

#
――ダンスを極めた情緒は、アイドルからダンサーへ転身。[p]

情緒が振り付けを考えたダンスを見ない日はない。[p]

おかげで、アイドル業界のダンスも日進月歩で進化している。[p]

――そして私は、ダンサーのプロデューサーとしてのキャリアを歩み始めたのだった！[p]

[hide_msgwindow]
[wait time=4000]
[fadeoutbgm time=2000]
[freeimage layer="0"]
[bg storage=black.png]
[wait time=2000]
[jump storage="title.ks"]

*perf

;★★★　②作曲家エンド　★★★
;黒背景に白文字で"A few years later"（数年後）を表示

[voconfig sebuf="3" name="jyocho" vostorage="jyocho/{number}.ogg" number="10099"]
[wait time=2000]
[bg storage="fewyears.png"]
[wait time=2000]
[bg storage="black.png"]
[show_msgwindow]

#
伝説の始まりとなった、あのファーストライブから数年が経った。[p]

新人アイドルだった情緒は、あれから成長を続け――[p]

;イベントCG：SD02 作曲家エンド

[playbgm storage="BGM01_normal1.mp3" volume=10]
[bg storage="studio_vocal.png"]
[image storage="sd_perf.png" name="ending-sd-cg" layer="0" width="800" time="1000" x=560 y=20]

スピーカーから曲が流れ終わると。[p]

驚いた顔の社長が、ぱちぱちと拍手した。[p]

#ruri
「すごい曲を作られたとは聞きましたが、ここまでとは……！」[p]

#jyocho
「社長に作曲を教えてもらったおかげです。本当にありがとうございました」[p]

#ruri
「いえいえ。今度、ぜひうちのアイドルの子たちに曲を作ってあげてください」[p]

#ruri
「でも、とても光栄ですね。なんて言っても、情緒さんみたいな――」[p]

#ruri
「今をときめく超有名作曲家が、うちの事務所から生まれたなんて♪」[p]

#
――パフォーマンスを極めた情緒は、アイドルから作曲家へ転身。[p]

今やランキング上位の曲の八割方は、情緒が作曲した曲だ。[p]

王道のアイドル曲はもちろん、ポストロックからバラードまで……

幅広いジャンルが「情緒節」でアップデートされるため、熱心なファンも多い。[p]

――そして私は、作曲家のプロデューサーとしてのキャリアを歩み始めたのだった！[p]

[hide_msgwindow]
[wait time=4000]
[fadeoutbgm time=2000]
[freeimage layer="0"]
[bg storage=black.png]
[wait time=2000]
[jump storage="title.ks"]

*visual

;★★★　③デザイナーエンド　★★★
;黒背景に白文字で"A few years later"（数年後）を表示

[voconfig sebuf="3" name="jyocho" vostorage="jyocho/{number}.ogg" number="10100"]
[wait time=2000]
[bg storage="fewyears.png"]
[wait time=2000]
[bg storage="black.png"]
[show_msgwindow]

#
伝説の始まりとなった、あのファーストライブから数年が経った。[p]

新人アイドルだった情緒は、あれから成長を続け――[p]

;イベントCG：SD03 デザイナーエンド

[playbgm storage="BGM01_normal1.mp3" volume=10]
[bg storage="office_inside.png"]
[image storage="sd_designer.png" name="ending-sd-cg" layer="0" width="800" time="1000" x=560 y=20]

#jyocho
「プロデューサーさん。これ、見てください」[p]

#
そう言って情緒が差し出してきたタブレットを見る。[p]

#prd
「うわぁ、これ……すっごくかわいいアイドル衣装だよ！」[p]

#prd
「情緒がデザインした中でも最高傑作なんじゃない！？」[p]

#jyocho
「一緒にビジュアルの勉強をしてくれた、プロデューサーさんのおかげです！」[p]

#prd
「そうかな？　でも、だったら嬉しいな。だって、情緒みたいな――」[p]

#prd
「誰もが知るファッションデザイナーを、私が育てられたんだから！」[p]

#
――ビジュアルを極めた情緒は、アイドルからデザイナーへ転身。[p]

アイドルの衣装や小道具をメインに、ハイブランドとコラボした服も展開している。[p]

何よりの強みは、情緒自身がファッションモデルになっていること。[p]

情緒の姿は、もはや美の象徴ですらある。[p]

――そして私は、デザイナーのプロデューサーとしてのキャリアを歩み始めたのだった！[p]

[hide_msgwindow]
[wait time=4000]
[fadeoutbgm time=2000]
[freeimage layer="0"]
[bg storage=black.png]
[wait time=2000]
[jump storage="title.ks"]

*vocal

;★★★　④留学（ボーカル）エンド　★★★
;黒背景に白文字で"A few years later"（数年後）を表示

[voconfig sebuf="3" name="jyocho" vostorage="jyocho/{number}.ogg" number="10102"]
[wait time=2000]
[bg storage="fewyears.png"]
[wait time=2000]
[bg storage="black.png"]
[show_msgwindow]

#
伝説の始まりとなった、あのファーストライブから数年が経った。[p]

新人アイドルだった情緒は、あれから成長を続け――[p]

;イベントCG：SD04 留学（ボーカル）エンド

[playbgm storage="BGM01_normal1.mp3" volume=10]
[bg storage="office_ex.bmp"]
[image storage="sd_vocal.png" name="ending-sd-cg" layer="0" width="800" time="1000" x=560 y=20]

#saki
「うぅ、うぅっ……じ、情緒ちゃぁん……」[p]

#jyocho
「歌方さん、そんなに泣かないでください。またすぐ会えますよ！」[p]

#saki
「でも、でもぉ……教え子の成長がぁ、嬉しくてぇっ……！」[p]

#jyocho
「ありがとうございます。ここまで来れたのも、歌方さんのおかげです！」[p]

#prd
「じゃあ情緒、そろそろ行こうか。歌方さんも、お見送りありがとうございます！」[p]

#saki
「じょ、情緒ちゃん……っ！　海外でもっ……うっ、頑張ってねえっ……！！」[p]

#
――ボーカルを極めた情緒は、海外の一流音大への留学が決定。[p]

しばらくは海外を拠点に、世界中から押し寄せるボーカルの仕事もこなしていく予定だ。[p]

数年間の留学を終え、再びこの国に戻ってきたとき。[p]

ヰ世界情緒の名前は、まさにレジェンドとして音楽史に刻まれることだろう。[p]

――そして私は、シンガーのプロデューサーとしてのキャリアを歩み始めたのだった！[p]

[hide_msgwindow]
[wait time=4000]
[fadeoutbgm time=2000]
[freeimage layer="0"]
[bg storage=black.png]
[wait time=2000]
[jump storage="title.ks"]
