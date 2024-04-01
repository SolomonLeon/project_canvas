; トレーニング画面（共通）
; - sf.training: トレーニング画面の段階
;   a, b, c, d (直前の novel) をあらかじめ指定してから jump すること

[stop_keyconfig]
[playbgm storage="BGM04_lesson.wav" volume="20"]
[iscript]
  tf.trainingCount = 0;
  tf.selected = undefined;
[endscript]

*Waiting

[backlay]
[cm]
[clearfix]
[freeimage layer="0" page="back"]
[freeimage layer="1" page="back"]
[image folder="bgimage" storage="studio_dance.png" name="training-bg" layer="0" page="back" x=-700 y=0]
[image folder="bgimage" storage="training.png" layer="0" page="back" x=0 y=0]
[show_score]
[show_date]
[for name="tf.i" from=0 to=3]
  [iscript]
    const i = tf.i;
    const params = ['dance', 'vocal', 'visual', 'perf'];
    const buttonY = [210, 377, 542, 705];
    tf.graphic = `${params[i]}.png`;
    tf.storage = `${params[i]}_disabled.png`;
    tf.enterimg = `${params[i]}_hover.png`;
    tf.x = 940 + 60 * i;
    tf.y = buttonY[i];
    tf.params = params;
  [endscript]
  [if exp="sf.training === 'a' && tf.i >= 2"]
    [image folder="image/training/button" storage="&tf.storage" x="&tf.x" y="&tf.y" layer="1" page="back" name="training-button-disabled"]
  [else]
    [button folder="image/training/button" graphic="&tf.graphic" enterimg="&tf.enterimg" x="&tf.x" y="&tf.y" preexp="tf.params[tf.i]"  exp="tf.selected = preexp;" target="Selected" page="back" enterse="button.ogg" clickse="Mail08.ogg"]
  [endif]
[nextfor]
[image folder="image/training/button" storage="start_disabled.png" layer="1" page="back" x=1209 y=905]
[trans time=500 layer="0"]
[trans time=100 layer="1"]
[wt]
[mask_off]
;[button folder="image/training" graphic="config.png" enterimg="config_hover.png" x=1693 y=0 storage="config.ks" enterse="Beep24.wav"]
[s]

*Selected

[iscript]
  tf.gamepadListener = ({ detail }) => {
    if (detail.button_name === 'A') {
      $('.selected-button').trigger('click');
    }
  };
  document.addEventListener('gamepadpressdown', tf.gamepadListener);
[endscript]
[eval exp="$('.remodal-overlay').removeClass('remodal-overlay-red');"]
[backlay]
[cm]
[clearfix]
[freeimage layer="0" page="back"]
[freeimage layer="1" page="back"]
[training_bg]
[image folder="bgimage" storage="training.png" layer="0" page="back" x=0 y=0]
[image folder="fgimage/chara" storage="jyocho/training/normal.png" layer="0" page="back" x=20 y=180 width=870]
[show_score]
[show_date]
[for name="tf.i" from=0 to=3]
  [iscript]
    const i = tf.i;
    const params = ['dance', 'vocal', 'visual', 'perf'];
    const buttonY = [210, 377, 542, 705];
    tf.storage = tf.selected === params[i] ? `${params[i]}_selected.png` : `${params[i]}_disabled.png`;
    tf.x = 940 + 60 * i + (tf.selected === params[i] ? 24 : 0);
    tf.y = buttonY[i] - (tf.selected === params[i] && params[i] !== 'visual' ? 110 : 0);
    tf.params = params;
    tf.name = tf.selected === params[i] ? 'selected-button' : undefined;
  [endscript]
  [if exp="sf.training === 'a' && tf.i >= 2"]
    [image folder="image/training/button" storage="&tf.storage" x="&tf.x" y="&tf.y" layer="1" page="back" name="training-button-disabled"]
  [else]
    [button folder="image/training/button" graphic="&tf.storage" x="&tf.x" y="&tf.y" exp="tf.selected = undefined; document.removeEventListener('gamepadpressdown', tf.gamepadListener);" target="Waiting" name="&tf.name"]
  [endif]
[nextfor]
[button folder="image/training/button" graphic="start.png" enterimg="start_hover.png" exp="document.removeEventListener('gamepadpressdown', tf.gamepadListener);" target="Start" x=1209 y=905 enterse="button.ogg" clickse="Mail04.ogg"]
[eval exp="$('.selected-button').focus();"]

[trans time=500 layer="0"]
[trans time=100 layer="1"]
[wt]
;[button folder="image/training" graphic="config.png" enterimg="config_hover.png" x=1693 y=0 storage="config.ks" enterse="Beep24.wav"]
[s]

*Dialog

[iscript]
const en2ja = {
  dance: 'ダンス',
  vocal: 'ボーカル',
  visual: 'ビジュアル',
  perf: 'パフォーマンス',
};
tf.dialogText = `${en2ja[tf.selected]}レッスンを<br>開始しますか？`;
console.log(tf.dialogText);
[endscript]

[backlay]
[cm]
[clearfix]
[freeimage layer="0" page="back"]
[freeimage layer="1" page="back"]
[training_bg]
[image folder="bgimage" storage="training.png" layer="0" page="back" x=0 y=0]
[image folder="fgimage/chara" storage="jyocho/training/normal.png" layer="0" page="back" x=20 y=180 width=870]
[show_score]
[show_date]
[for name="tf.i" from=0 to=3]
  [iscript]
    const i = tf.i;
    const params = ['dance', 'vocal', 'visual', 'perf'];
    const buttonY = [210, 377, 542, 705];
    tf.storage = tf.selected === params[i] ? `${params[i]}_selected.png` : `${params[i]}_disabled.png`;
    tf.x = 940 + 60 * i + (tf.selected === params[i] ? 24 : 0);
    tf.y = buttonY[i] - (tf.selected === params[i] && params[i] !== 'visual' ? 110 : 0);
    tf.name = sf.training === 'a' && tf.i >= 2 && tf.selected !== params[i] ? 'training-button-disabled' : undefined;
  [endscript]
  [image folder="image/training/button" storage="&tf.storage" x="&tf.x" y="&tf.y" name="&tf.name" layer="1" page="back"]
[nextfor]
[image folder="image/training/button" storage="start.png" x=1209 y=905 layer="1" page="back"]
[trans time=500 layer="0"]
[trans time=100 layer="1"]
[wt]
;[show_dialog text="&tf.dialogText" yes="Start" no="Selected"]
[eval exp="$('.remodal-overlay').addClass('remodal-overlay-red');"]
[dialog type="confirm" text="&tf.dialogText" target="Start" target_cancel="Selected" label_ok="" label_cancel=""]
[s]

*Start

[eval exp="$('.remodal-overlay').removeClass('remodal-overlay-red');"]
[backlay layer="2"]
[cm]
[clearfix]
[iscript]
tf.storage = `${tf.selected}_movie.png`;
tf.video = `${tf.selected}${Math.random() > 0.5 ? 'a' : 'b'}.mp4`;
[endscript]
[image folder="bgimage" storage="dialog_bg.png" layer="2" page="back" x=0 y=0 zindex=800]
[image folder="image/training" storage="&tf.storage" layer="2" page="back" x=0 y=0 zindex=900]
[html]
  <svg width="0" height="0">
    <defs>
      <clipPath id="training-video-path">
        <path d="M92.72.5L10.77,81.28.51,613.42c-.39,20.23,15.9,36.84,36.13,36.84h1061.35l78.44-79.22V36.52c0-19.9-16.13-36.02-36.02-36.02H92.72Z"></path>
      </clipPath>
    </defs>
  </svg>
  <video id="training-video" width="1180" height="664"></video>
[endhtml]
[iscript]
const elm = document.getElementById('training-video');
elm.src = `data/video/${tf.video}`;
elm.volume = 0.4;
elm.play();
[endscript]
[trans layer="2" time=500]
[wt]
[button width=1920 height=1080 x=0 y=0 target="*AfterMovie" name="screen-button"]
[eval exp="$('.screen-button').focus();"]
[wait time="12000"]

*AfterMovie

[wait_cancel]
[iscript]
  f.score[tf.selected] += 50;
  tf.trainingCount++;
  tf.target = tf.trainingCount >= 3 ? 'Finish' : 'Waiting';
[endscript]

[mask time=1000]
[cm]
[freeimage layer="2"]
[jump target="&tf.target"]

*Finish

[mask time=1000]
[cm]
[clearfix]
[start_keyconfig]
[freeimage layer="0"]
[freeimage layer="1"]
[freeimage layer="2"]
[fadeoutbgm time=2000]
[wait time=3000]
[iscript]
  switch (sf.training) {
    case 'a':
      tf.storage = 'scene_b.ks';
      break;
    case 'b':
      tf.storage = 'scene_c.ks';
      break;
    case 'c':
      tf.storage = 'scene_d1.ks';
      break;
    case 'd':
      tf.storage = 'scene_e1.ks';
      break;
  }
[endscript]
[jump storage="&tf.storage"]
