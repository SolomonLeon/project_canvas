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
「虽然感觉有点不安，但毕竟都已经来到这里了……」[p]

[chara_hide name=jyocho time=100]
[chara_show name=jyocho face=cconfused top=-130 width=2300]
#jyocho
「……嗯。至少去听听他们怎么说吧」[p]

#jyocho:cnormal
「反正之后再决定要不要真的当偶像也可以嘛」[p]

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
「打、打扰了……」[p]

#prd
「啊、你来了啊。正在等你呢」[p]

#
[playse storage="Door02O.wav"]

[bg storage="office_inside.png" time="2000"]

[show_jyocho face=cserious]

#jyocho
「那个、这里……就是偶像事务所的神椿制作公司没错吗？」[p]

#prd
「嗯。我就是神椿制作公司的制作人哦。那么，你是――」[p]

#jyocho:cnormal
「我是ヰ世界情緒。――我对于偶像出道，非常感兴趣」[p]

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
――我能够发现那个声音，纯粹是出于偶然。[p]

那是离现在正好一周前发生的事情。[p]

[playse storage="Keyboard02.wav"]

#prd
「…………」[p]

[playse storage="Keyboard05.wav"]

#prd
「…………啊」[p]

#
从很久以前就非常喜欢偶像了。[p]

距离我毕业后开始在梦寐以求的偶像事务所神椿制作公司工作，已经一个月有余。[p]

这里不仅规模不算大，作为事务所的知名度也并不算高。[p]

但是，十分擅长培育新人偶像是神椿制作公司的特征。[p]

虽然是想着下一个事务所就是这里好了，这样决定就职的……[p]

但要说到入职以来所做的事情，简单来说就是在网上看视频而已。[p]

――请通过你的感性、找到想让她偶像出道的孩子。[p]

那就是，入职当天社长给的唯一的指示。[p]

从那以后，我就过上了整天不断地在网上看唱见、舞见的视频的日子――[p]

#prd
「虽然自由是很不错啦。就是这样下去，感觉跟学生时代也没有什么区别啊……」[p]

#
确实，现在是公认的偶像战国时代。[p]

不仅有擅长唱歌和跳舞的，还有主播、职业游戏玩家、搞笑艺人……[p]

形形色色的网红，正在陆续实现着偶像出道。[p]

但是，就算是这样，工作内容就只是看视频的话也有点……[p]

――正是在那一刻，电脑自动播放了下一个视频。[p]

#prd
「…………嗯？」[p]

#
最开始，只是感觉到了些微的违和感。[p]

清澈透明的声音。仅靠陈词滥调的表现是无法传达的，某些东西。[p]

#prd
「…………不是吧……」[p]

#
[bg storage="black.png" time=1000]
;背景　暗転

#
那是一个“试着唱了”的视频。非常有名的歌曲。[p]

但是……[p]

[bg storage="office_inside.png" time=1000]

#prd
「这首歌，原来是能如此快乐地……如此有力量地唱出来的吗……？」[p]

#
回过神来，我已经在食髓知味地翻看她的视频了――[p]

那一天，我第一次做了名为加班的这件事[p]

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
「打、打扰了……」[p]

#prd
「情绪、感觉紧张吗？」[p]

#jyocho:cserious
「……嗯。还是第一次来到这样像办公室一样很正式的地方」[p]

#prd
「嘛，说的也是呢。不过没关系，放心就好了哦」[p]

#prd
「因为我也有点――不、非常地紧张呢。我推正站在面前什么的……有点糟糕啊……」[p]

#
看起来十分花心思打理的银发、晶莹剔透的肌肤。[p]

由这样如同天使一般的少女所奏响的、那个歌声……。[p]

要是这孩子成为偶像的话，光是想象一下就让人心潮澎湃。[p]

#prd
「那么总而言之，既然来到了这里，就说明你对偶像出道是感兴趣的，对吧？」[p]

#jyocho:cnormal
「是这样的。但是，还是感觉有些迷茫」[p]

#jyocho:cserious
「……对于偶像、我始终怀抱着憧憬。但是那样的憧憬，一直指的是在观众席上感受到的憧憬」[p]

#jyocho:cconfused
「对于要自己上台的话，只有唱歌这部分觉得还过得去吧。毕竟试唱动画也有很多人愿意听来着……」[p]

#jyocho:cserious
「就算要说想着成为偶像，就连自己想要成为什么样的偶像也还没想清楚」[p]

#prd
「那是很困难的问题呢。毫无疑问，是不得不一直去想的问题」[p]

#prd
「但是现在，要是我只说一件事的话――」[p]

#prd
「我啊，很想看到成为偶像的你的姿态。想看到你作为偶像的，更加更加振翅高飞的身姿。」[p]

#jyocho:cconfused
「为什么会对于连偶像的雏形都没有的我，有着那样的期待呢？」[p]

#prd
「那是因为我是你的粉丝哦。一定会有很多很多、像我一样想看到你登台表演的粉丝的」[p]

#prd
「还未出现于这个世界的、偶像・ヰ世界情緒这个存在的诞生、成长、闪耀……」[p]

#prd
「能够亲眼观测到这一切什么的，不是特别令人欢欣雀跃吗？」[p]

#
深吸一口气，我就好像在告白一样说道。[p]

#prd
「所以怎么样呢、情緒。要不要作为偶像――试着以第一次演唱会为目标呢？」[p]

#jyocho:cserious
「…………」[p]

#
情緒认认真真地凝视着我的眼睛。[p]

[chara_hide name=jyocho time=100]
[chara_show name=jyocho face=cnormal top=-130 width=2300]
#jyocho:cnormal
「……我也、好想看看还不存在的作为偶像的自己。好想看看属于自己的可能性。我发自内心地这么想」[p]

#jyocho:csmile
「所以说、制作人桑。――请将我，变成偶像吧！」[p]

#prd
「嗯！」[p]

#
――那就是、所谓一段传说的开端。[p]

[chara_hide name=jyocho]
[hide_msgwindow]
[bg storage=black.png]
[jump storage="scene_a2.ks"]
