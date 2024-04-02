
[stop_keyconfig]
[iscript]
  $('#tyrano_base > img').css('display', 'none');
  // $('.layer_free > *').css('display', 'none'); free layer を非表示にしたかったが、戻しても反応しなくなる
[endscript]
[iscript]
  tf.c_msgwindow_shown = f.msgwindow_shown || false;
[endscript]
[hide_msgwindow cond="tf.c_msgwindow_shown "]

; ズレ防止
[iscript]
  sf.config.skip = tyrano.plugin.kag.config.unReadTextSkip === 'true';
[endscript]

[iscript]
  if (tyrano.plugin.kag.tmp.config === undefined) tyrano.plugin.kag.tmp.config = {};
  tyrano.plugin.kag.tmp.config.gamepadListener = ({ detail }) => {
    if (detail.button_name === 'A') {
      $('.config-back-button').trigger('click');
    }
  };
  document.addEventListener('gamepadpressdown', tyrano.plugin.kag.tmp.config.gamepadListener);
[endscript]

*Render

[cm]
[freeimage layer="2"]

; fullscreen だけ即時反映
;[screen_full cond="sf.config.full !== (document.webkitFullscreenElement !== null)"]
[eval exp="require('electron').ipcRenderer.invoke(sf.config.full ? 'setFullScreen' : 'exitFullScreen');"]

[image storage="../bgimage/config.png" layer="2" x=0 y=0]
[button graphic="back.png" enterimg="back_hover.png" target="Back" x=1691 y=0 name="config-back-button"]

[free layer="2" name="btn"]
[clearfix name="btn"]

[iscript]
  tf.arr = ['bgm', 'se', 'voice', 'text', 'auto'];
[endscript]
[foreach name="tf.item" array="tf.arr"]
  ; スライダー本体
  [iscript]
  tf.class = `slider slider-${tf.item}`;
  [endscript]
  [html]
    <input type="range" min="0" max="2" step="0.2" class="[emb exp='tf.class']" tabindex="0">
  [endhtml]
  [iscript]
    const colors = [ '#83b8ff', '#86bcfb', '#88bff6', '#8bc2f2', '#8dc5ed', '#8fc8e8', '#92cbe3', '#94cede', '#96d1d9', '#99d5d5', '#9bd8d0' ];
    const item = tf.item;
    const updateSlider = (slider) => {
      sf.config[item] = slider.value;

      const progress = (slider.value / slider.max) * 100;
      slider.style.setProperty('--d-outline-color', colors[progress / 10]);
      if (progress === 0)
        slider.style.background = `linear-gradient(to right, #fff 99%, transparent 99%)`;
      else if (progress === 100)
        slider.style.background = `linear-gradient(to right, transparent 1%, ${colors[0]} 1%, ${colors[10]} 99%, transparent 99%)`;
      else
        slider.style.background = `linear-gradient(to right, transparent 1%, ${colors[0]} 1%, ${colors[progress / 10]} ${progress}%, #fff ${progress}%, #fff 99%, transparent 99%)`;
      
      if (item === 'bgm')
        tyrano.plugin.kag.ftag.startTag('bgmopt', { volume: 40 * sf.config.bgm });
    }
    $(`.slider-${item}`).val(sf.config[item]);
    $(`.slider-${item}`).on('input', ({ target: slider }) => {
      updateSlider(slider);
    })
    updateSlider($(`.slider-${item}`)[0]);
  [endscript]
  ; スライダーボタン
  [iscript]
    tf.y = { 'bgm': 200, 'se': 308, 'voice': 416, 'text': 524, 'auto': 632 }[tf.item];
    tf.namel = `btn ${tf.item}-l`;
    tf.namer = `btn ${tf.item}-r`;
  [endscript]
  [button name="&tf.namel" width=40 height=40 graphic="empty.png" target="Render" x=827 y="&tf.y" preexp="tf.item" exp="sf.config[preexp] = String(Math.max(+sf.config[preexp] - 0.2, 0)); tf.lastSelected = `${preexp}-l`;"]
  [button name="&tf.namer" width=40 height=40 graphic="empty.png" target="Render" x=1532 y="&tf.y" preexp="tf.item" exp="sf.config[preexp] = String(Math.min(+sf.config[preexp] + 0.2, 2)); tf.lastSelected = `${preexp}-r`;"]
[nextfor]

; 再描画時にスライダーボタンにフォーカスを戻す
[iscript]
  if (tf.lastSelected !== undefined) $(`.${tf.lastSelected}`).focus();
  tf.lastSelected = undefined;
[endscript]

; 未読スキップ
[if exp="sf.config.skip === true"]
  [button name="btn" folder="image/config/skip" graphic="off.png" target="Render" preexp="false" exp="sf.config.skip = preexp;" x=864 y=747]
  [image name="btn" folder="image/config/skip" storage="on_selected.png" layer="2" x=1201 y=747]
[else]
  [image name="btn" folder="image/config/skip" storage="off_selected.png" layer="2" x=864 y=747]
  [button name="btn" folder="image/config/skip" graphic="on.png" target="Render" preexp="true" exp="sf.config.skip = preexp;" x=1201 y=747]
[endif]

; フルスクリーン
[if exp="sf.config.full === true"]
  [button name="btn" folder="image/config/display" graphic="window.png" target="Render" preexp="false" exp="sf.config.full = preexp;" x=864 y=865]
  [image name="btn" folder="image/config/display" storage="full_selected.png" layer="2" x=1201 y=865]
[else]
  [image name="btn" folder="image/config/display" storage="window_selected.png" layer="2" x=864 y=865]
  [button name="btn" folder="image/config/display" graphic="full.png" target="Render" preexp="true" exp="sf.config.full = preexp;" x=1201 y=865]
[endif]

[s]

*Back

[iscript]
  tf.arr = ['bgm', 'se', 'voice', 'text', 'auto'];
  tf.arr.map((item) => { sf.config[item] = $(`.slider-${item}`).val(); })
[endscript]

[iscript]
  tyrano.plugin.kag.ftag.startTag('seopt', { buf: 0, volume: 50 * sf.config.se });
  tyrano.plugin.kag.ftag.startTag('seopt', { buf: 2, volume: 50 * sf.config.voice });
  tyrano.plugin.kag.ftag.startTag('seopt', { buf: 3, volume: 50 * sf.config.voice });
  tyrano.plugin.kag.ftag.startTag('bgmopt', { volume: 40 * sf.config.bgm });
  tyrano.plugin.kag.config.chSpeed = 30 * (2 - sf.config.text) + 1;
  // スライダが一番右のとき [nowait]
  tyrano.plugin.kag.stat.is_nowait = (+sf.config.text === 2);
  tyrano.plugin.kag.config.autoSpeed = 1300 * (2 - sf.config.auto);
  tyrano.plugin.kag.config.autoSpeedWithText = 60 * (2 - sf.config.auto);
  tyrano.plugin.kag.config.unReadTextSkip = sf.config.skip.toString();
  require('electron').ipcRenderer.invoke(sf.config.full ? 'setFullScreen' : 'exitFullScreen');
[endscript]

[cm]
[freeimage layer="2"]
[clearfix name="cfix"]

[show_msgwindow cond="tf.c_msgwindow_shown"]
[iscript]
  $('#tyrano_base > img').css('display', '');
  // $('.layer_free > *').css('display', '');
[endscript]

[iscript]
  document.removeEventListener('gamepadpressdown', tyrano.plugin.kag.tmp.config.gamepadListener);
[endscript]

[awakegame]

[start_keyconfig]
[return]
