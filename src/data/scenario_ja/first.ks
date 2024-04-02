;一番最初に呼び出されるファイル

[stop_keyconfig]

;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

; load plugin
[plugin name="for"]
[plugin name="backlog"]
[call storage="backlog.ks"]

; load css, js
[loadcss file="data/custom.css"]
[loadcss file="data/common.css"]
[loadcss file="data/saveload.css"]
;[loadcss file="data/backlog.css"]
[loadcss file="data/config.css"]
[loadjs storage="../custom.js"]

; load macros
[call storage="macros/chara.ks"]
[call storage="macros/dialog.ks"]
[call storage="macros/msgwindow.ks"]
[call storage="macros/training.ks"]

; layopt 初期設定
@layopt layer="message" visible="false"
@layopt layer="0" visible="true"
@layopt layer="1" visible="true"
; dialog
@layopt layer="2" visible="true" 

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

[iscript]
  if (sf.config === undefined) sf.config = { bgm: 1, se: 1, voice: 1, text: 1, auto: 1, skip: tyrano.plugin.kag.config.unReadTextSkip || false, full: false };
  tyrano.plugin.kag.ftag.startTag('seopt', { buf: 0, volume: 50 * sf.config.se });
  tyrano.plugin.kag.ftag.startTag('seopt', { buf: 2, volume: 50 * sf.config.voice });
  tyrano.plugin.kag.ftag.startTag('seopt', { buf: 3, volume: 50 * sf.config.voice });
  tyrano.plugin.kag.ftag.startTag('bgmopt', { volume: 40 * sf.config.bgm });
  console.log(tf.vol0, tf.vol2, tf.vol3, tf.volb);
  tyrano.plugin.kag.config.chSpeed = 30 * (2 - sf.config.text);
  // スライダが一番右のとき [nowait]
  tyrano.plugin.kag.stat.is_nowait = (+sf.config.text === 2);
  tyrano.plugin.kag.config.autoSpeed = 1300 * (2 - sf.config.auto);
  tyrano.plugin.kag.config.autoSpeedWithText = 60 * (2 - sf.config.auto);
  tyrano.plugin.kag.config.unReadTextSkip = sf.config.skip.toString();
  if (sf.config.full) require("electron").ipcRenderer.invoke('setFullScreen');
[endscript]

[init_msgwindow]

;corporate logos

[playse storage="kamitsubaki.wav" volume="50"]
[button graphic="empty.png" width=1920 height=1080 x=0 y=0 target="*FinKami" name="screen-button"]
[wait time="1"]
[eval exp="$('.screen-button').focus();"]
[bg storage="kami.png" time=500]
[wait time="2000"]
*FinKami
[cm]
[wait_cancel]
[stopse]
[bg storage="white.png" time=10]
[button graphic="empty.png" width=1920 height=1080 x=0 y=0 target="*FinEG" name="screen-button"]
[wait time="1"]
[eval exp="$('.screen-button').focus();"]
[playse storage="eg.wav" volume="50"]
[bg storage="eg.png" time=500]
[wait time="1500"]
*FinEG
[cm]
[wait_cancel]
[stopse]

;タイトル画面へ移動
@jump storage="title.ks"

[s]
