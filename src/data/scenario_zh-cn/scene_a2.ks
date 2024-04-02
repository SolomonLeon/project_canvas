;――――――――――――――
;★★★情緒育成ゲームシナリオ　A_2★★★
;【初稿】2024年1月14日
;【登場キャラクター】ヰ世界情緒、舞川レイナ、歌方咲
;【内容】トレーナー（レイナ、歌方）との出会い
;【ワード数】情緒9w、レイナ6w、歌方6w
;【メモ】
;――――――――――――――

;背景：ダンススタジオ

*a2_1
[bg storage="studio_dance.png"]
[show_msgwindow]

#
――数日後。[p]

;立ち：情緒（私服）
;立ち：レイナ


#prd
「那么情緒、给你介绍一下哦。这位是舞川蕾娜小姐！」[p]

[show_reina left=-200]
[anim name="reina" left="+=300" time=1000 face=normal]
[wait time=1000]
#reina:smile
「我负责教神椿制作公司的孩子们跳舞哦！　请多多关照啦、情緒！」[p]

#
负责舞蹈训练的舞川蕾娜小姐。[p]

实际上这位蕾娜小姐、直到数年前都在偶像的第一线活跃着。[p]

我在学生时代也曾看过她演唱会的录像。[p]

虽然还十分年轻……但她出于某些缘由从一线退下了、现在开始专注于指导新人。[p]

干脆利落又简单易懂的指导方式使她成为了其他的训练家也无法忽视的存在。[p]

[show_jyocho left=600 face=tserious]

#jyocho
「请、请多多关照、蕾娜小姐！」[p]

#
情緒因为紧张而一下挺直了背。[p]

这就是偶像吗。好、好耀眼……。[p]

#reina:normal
「嗯、是情緒啊。那么、现在就赶紧来开始跳舞试试看吧！」[p]

#jyocho:tconfused
「现在就开始吗！？」[p]

#reina:smile
「那是当然！　来、做好准备！」[p]

#jyocho:tserious
「诶……但是跳舞什么的我还从来没试过啊……」[p]

;立ち消し
[hide_msgwindow]
[mask color=black]
[chara_mod name=reina face=angry]
[chara_mod name=jyocho face=tangry]
[mask_off]

[show_msgwindow]
#reina:angry
「一二、一二、好的就在这一拍开始跳舞！」[p]

#jyocho:tangry
「诶――先这样、再这样！」[p]

#reina:normal
「Great！　接下来还要继续哦、来、一二、一二！」[p]

;立ち消し
;暗転
[hide_msgwindow]
[mask color=black]
[chara_hide name=reina]
[chara_hide name=jyocho]
[mask_off]


;背景：ダンススタジオ
;立ち：情緒（練習着）
;立ち：レイナ
[show_reina left=100]
[show_jyocho face=tangry left=600]
[show_msgwindow]

#reina:smile
「嗯嗯、这不是跳得很棒嘛！　给你上课很让人享受呢～」[p]

#jyocho
「呼、呼……谢、谢您……」[p]

#prd
「情緒、辛苦了……」[p]

#
哪怕只是旁观者看来、那也是远比「跳个舞试试看」这种等级更加困难的练习。[p]

嘛、毕竟是蕾娜小姐啊。一如既往没有什么变化呢。[p]

#prd
「那么、情緒。稍微休息一下之后就去那边吧」[p]

#
;立ち消し
;暗転
[hide_msgwindow]
[mask color=black]
[chara_hide name=reina time=1]
[chara_hide name=jyocho time=1]
[bg storage=black.png]
[mask_off]
[wait time=2000]

;ＳＥ：扉ノック音
[playse storage="Knock08.wav"]
[wait time=2000]
;ＳＥ：扉開ける音
[playse storage="Door02O.wav"]
;背景：ボーカルスタジオ
[bg storage="studio_vocal.png"]
;立ち：咲

*a2_2

[show_saki left=100]
[wait time=1000]
[show_msgwindow]
#prd
「你好呀、歌方小姐。我把新来的孩子带过来啦ー」[p]

;立ち：情緒（練習着）
[show_jyocho face=tserious left=600]

#jyocho
「那个、我叫做ヰ世界情緒。请多多关照！」[p]

#saki:smile
「我是负责歌唱训练歌方。多多关照哦、情緒酱！」[p]

#
负责声乐训练的歌方咲小姐。[p]

虽然是个稳重的人、但她其实有着完全不输于蕾娜小姐的、令人惊异的履历。[p]

原本是在学习传统声乐的歌方小姐、在高中时期、飞跃般地入学了海外超有名的音乐大学。[p]

从那之后……又是因为一些状况、似乎不知为什么开始了流行音乐、特别是偶像的歌唱指导。[p]

温柔又认真的教学方法让她成为了十分有人气的训练师。[p]

#saki:normal
「那么――事不宜迟、来唱歌试试吧？」[p]

#jyocho:tsmile
「啊、又是这个样子……。不过唱歌的话没问题、已经准备好了！」[p]

#
[mask color=black]
[chara_mod name=saki face=normal]
[chara_mod name=jyocho face=tnormal]
[wait time=2000]
[mask_off]
;立ち消し
;暗転
;背景：ボーカルスタジオ

#
情緒一曲终了后、歌方小姐在一旁鼓起了掌。[p]

#saki:smile
「呜哇、情緒酱真厉害！　虽然听说过你有在投稿唱歌的视频、但没想到水平已经这么高了……！」[p]

#jyocho:tsmile
「非常感谢！　不过、在别人面前唱歌还是很紧张呢」[p]

#saki:normal
「嗯嗯、你可能确实有紧张呢」[p]

#saki:serious
「所以从现在开始、来向着能够应对偶像演唱会的歌手而努力吧？」[p]

#saki:confused
「是以首次演唱会作为现在大概的目标、是这样对吧」[p]

#jyocho:tsmile
「是的。请多多关照啦！」[p]

#

;→育成パート（ダンス・ボーカルのみ）へ遷移
[cancelskip]
[hide_msgwindow]
[mask color=black]
[chara_hide name=saki]
[chara_hide name=jyocho]
[fadeoutbgm time=2000]
[bg storage=black.png]
[mask_off]

[eval exp="sf.training = 'a';"]
[jump storage="training.ks"]
