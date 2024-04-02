
[cm]
[clearfix]
[freeimage layer="0"]

[clearstack]

[bg storage="title.png" time=100]
[wait time=200]
[playbgm storage="BGM04_lesson.mp3" volume="10"]
[playse buf="3" storage="title.wav"]


*start 

[iscript]
  const saves = TYRANO.kag.menu.getSaveData().data;
  tf.hasSave = saves.some((save) => (save.current_order_index > 0));
  const y = [650, 747, 844];
  tf.startY = y[tf.hasSave ? 0 : 1];
  tf.loadY = y[tf.hasSave ? 1 : 2];
  tf.laceY = tf.startY - 29;
[endscript]

[button x=42 y="&tf.startY" graphic="title/start.png" enterimg="title/start_hover.png" fix="true" target="gamestart" enterse="Beep24.wav"]
[button x=42 y="&tf.loadY" graphic="title/load.png" enterimg="title/load_hover.png" role="load" enterse="Beep24.wav"]
[button x=42 y=844 graphic="title/continue.png" enterimg="title/continue_hover.png" target="*Continue" fix="true" enterse="Beep24.wav" cond="tf.hasSave"]
[button x=42 y=941 graphic="title/config.png" enterimg="title/config_hover.png" storage="config.ks" fix="true" enterse="Beep24.wav"]
[image x=31 y="&tf.laceY" folder="image" storage="title/lace.png" layer="0"]

[button x=1652 y=948 graphic="title/exit.png" enterimg="title/exit_hover.png" target="Close" fix="true" enterse="Beep24.wav"]

[image x=0 y=0 folder="image" storage="title/logo.png" layer="0" time=3000 wait="false"]
[s]

*gamestart

[iscript]
f.score = { dance: 0, vocal: 0, visual: 0, perf: 0 };
tf.trainingCount = 0;
[endscript]
[cm]
[clearfix]
[clearstack]
[fadeoutbgm time=2000]
; [start_keyconfig]
[freeimage layer="0"]
[start_keyconfig]
@jump storage="scene_a1.ks"
; [eval exp="sf.training = 'b';"]
; @jump storage="training.ks"

*Close

[close ask="true"]
[jump storage="title.ks"]

*Continue

[iscript]
  const saves = TYRANO.kag.menu.getSaveData().data;
  let maxTime = 0;
  let latestSave = null;
  saves.forEach((save, i) => {
    const time = save.save_date === '' ? 0 : (new Date(save.save_date)).getTime();
    if (time > maxTime) {
      maxTime = time;
      latestSave = i;
    }
  })
  TYRANO.kag.menu.loadGame(latestSave);
[endscript]
