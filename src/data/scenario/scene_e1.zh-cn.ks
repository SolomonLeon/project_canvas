;――――――――――――――
;★★★情緒育成ゲームシナリオ　E_1★★★
;【初稿】2024年1月30日
;【登場キャラクター】ヰ世界情緒
;【内容】情緒14w
;【ワード数】情緒19w、レイナ9w、社長1w、歌方3w
;【メモ】
;――――――――――――――

;暗転
;背景：黒（ステージ横）
*e1_1
[bg storage=black.png time=0]
[mask_off]
[show_msgwindow]

#
――そして、ライブ当日。[p]

#prd
「次が出番だよ、情緒！　準備はできてる？」[p]

#jyocho
「はい、大丈夫です。なんか、逆に落ち着いてます」[p]

#prd
「あはは、それは良かった。私もここで――ステージ横の特等席で、見守ってるからね」[p]

#jyocho
「はい、心強いです」[p]

#
すると、情緒は少し恥ずかしそうにはにかんだ。[p]

#jyocho
「わたし、プロデューサーさんと一緒にファーストライブを迎えられて、嬉しいです」[p]

#jyocho
「この1カ月、ありがとうございました。そして――これからも、よろしくお願いします」[p]

#prd
「うん。こちらこそ、よろしく」[p]

#
――前のアイドルの曲が終わる。[p]

さあ、いよいよ情緒の番だ。[p]

;SE：とたとた歩く音
[stopse buf="3"]
[hide_msgwindow]
[playse storage=Dash04O.wav]
;イベントCG01：1stライブ
*e1_2
[bg storage=CG1_normal.png]
[wait time=2000]
[show_msgwindow]

#jyocho
「みなさん、こんにちはーっ！」[p]

#
[playse storage=Kansei01.wav sprite_time=1000-10000 volume=50]
[wait time=3000]
[fadeoutse time=2000]

#
お客さんの声がこだまする。[p]

[bg storage=CG1_sad.png time=500]
#jyocho
「新人アイドルの、ヰ世界情緒です！　えっと……」[p]

#
客席をぐるりと見渡す。[p]

色とりどりのペンライトと、目を輝かせたお客さんたち。[p]

ああ、そっか。[p]

これが、ステージから見た光景なんだ――[p]

[bg storage=CG1_brace.png time=500]
#jyocho
「わたしはこれまで、ずっとインターネットで活動してきました」[p]

#jyocho
「でも、今日こうして初めて、たくさんのお客さんの姿を見られて……とっても嬉しいです」[p]

[bg storage=CG1_sweat.png time=500]
#jyocho
「今日からアイドルのヰ世界情緒を、よろしくお願いします！」[p]

#
[playse storage=Kansei01.wav sprite_time=1000-10000 volume="50"]
[wait time=2000]
[fadeoutse time=1000]

#
おーっという歓声や拍手の音。[p]

お客さんのワクワクドキドキが、空気からひしひしと伝わってくる。[p]

[bg storage=CG1_close.png time=500]

――わたしは軽く目をつぶる。[p]

#
そのとき、曲のイントロが流れ始めた――[p]

;暗転
[hide_msgwindow]
[bg storage="black.png"]

;ここでパラメータ判定
[iscript]
tf.params = ['dance', 'vocal', 'visual', 'perf'];
[endscript]
[foreach name="tf.item" array="tf.params"]
  ;特定のパラメータが 400 以上の場合はそのエンドへ
  [jump storage="scene_e2.ks" target="&tf.item" cond="f.score[tf.item] >= 400"]
[nextfor]

;★★★　⓪グッドエンド　★★★
;BGM：ED音楽
*e1_3
[playbgm storage="BGM03_ed.mp3" volume="10"]
;イベントCG：02　1stライブ（グッド）
;!! WIP !!
[bg storage=CG2_normal.png]
[wait time=2000]
[show_msgwindow]

#jyocho
「うわぁっ……！」[p]

#
曲が流れた途端、だった。[p]

ワクワクとか、楽しいとか、ありがとうとか、そういうのが全部流れ込んできた。[p]

奥底に隠していた不安なんて、すぐに溶け出した。[p]

奥底からは代わりに、歌声があふれ出す――[p]

自然と身体が踊り出すっ――！[p]

ねえみんな、見てる？[p]

これがわたしだよ、ヰ世界情緒だよ！[p]

わたしのステージ、絶対絶対、見逃さないでね――！！[p]

#jyocho
「みんな、ありがとうっ！！」[p]

#jyocho
「わたし、ずっと自分がどういうアイドルになりたいのか、迷ってました」[p]

[bg storage=CG2_normalws.png time=500]
#jyocho
「でも、でも……っ！　いま、わかりました！」[p]

#
汗が目に入る。お客さん以外、何も見えやしない。[p]

でも今はそれでいいや。いいんだ。[p]

わたしは、マイクに向かってありったけを叫んだ。[p]

[bg storage=CG2_smilews.png time=500]
#jyocho
「わたし――自分の可能性を観測したい！」[p]

#jyocho
「まだどこにもいない、《わたし》を見つけたいんです！！」[p]

#
[hide_msgwindow]
[bg storage=black.png time=1000]
[show_msgwindow]

#
――それから気づいたら、わたしの2曲は終わっていて。[p]

うわーっとかおわーっとか、会場あちこちから歓声が聞こえてくる。[p]

ああ、そうだ。[p]

今の素直な気持ちを、みんなに伝えなきゃ――[p]

[bg storage=CG2_smilews.png time=1000]

#jyocho
「みんな、みんな――！」[p]

#jyocho
「また会おうね！」[p]

;ED映像（クレジット）開始
;ED映像終わり

[hide_msgwindow]
[wait time=3000]
[bg storage=black.png]
[wait time=3000]
[movie storage="edroll.mp4"]

;暗転

*e1_4
[bg storage="black.png"]
[show_msgwindow]

#jyocho
「ねえ、プロデューサーさん」[p]

#jyocho
「わたし、アイドルが好きです。大好きなんです」[p]

#jyocho
「だから……自分が大好きでいられるアイドルに、わたし、なりますね」[p]

#prd
「うん。楽しみにしてるよ」[p]

#prd
「これからも一緒に頑張ろうね、情緒！」[p]

#prd
「ファーストライブを成功させるって目標は達成したから、次の目標は、えっと……」[p]

#prd
「あ、そうだ！　ドームツアーの成功にしよう！！」[p]

#jyocho
「あはは、いいですね。想像が膨らんで、考えるだけで楽しいです！」[p]

#
心底楽しそうに情緒は笑った。[p]

――ライブは終わったけれど、情緒の挑戦はまだまだ始まったばかりだ。[p]

これから、情緒がどう成長していくのか。[p]

情緒がどんなステージを魅せてくれるのか。[p]

考えただけでワクワクが止まらない。[p]

#prd
「――さあ、明日はどんなレッスンをしようか？」[p]

[hide_msgwindow]
[wait time=4000]
[fadeoutbgm time=2000]
[freeimage layer="0"]
[bg storage=black.png]
[wait time=2000]
[jump storage="title.ks"]
