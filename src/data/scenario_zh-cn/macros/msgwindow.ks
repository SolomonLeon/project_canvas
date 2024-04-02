; メッセージウィンドウの初期化
; 表示には [show_msgwindow] が必要
[macro name="init_msgwindow"]
  @layopt layer="message0" visible="true"
  @layopt layer="message1" visible="true"
  ; message window and area
  [position layer="message0" left=400 top=620 width=1126 height=406 zindex=100]
  [position layer="message0" frame="message/frame2.png" opacity=255 margint=85 marginl=90 marginr=140 marginb=60]

  [glyph fix="true" line="nextpage.png" top=840 left=1380]

  ; charactor name area
  [freeimage layer="message1"]
  [image name="chara-name-frame" id="chara-name-frame" layer="message1" storage="../image/message/name.png" x=370 y=605 zindex=200]
  [ptext name="chara-name" id="chara-name" layer="message1" color="transparent" face="SenobiGothic" size=48 x=410 y=627]
  [chara_config ptext="chara-name"]

  ; 地の文のときに chara-name-frame を非表示
  [iscript]
    const target = document.getElementsByClassName('chara-name')[0];
    const observer = new MutationObserver((mutations) => {
      mutations.map((mutation) => {
        console.log(mutation);
        const { type, target } = mutation;
        if (type === 'childList') {
          console.log(target.innerText);
          document.querySelector('.message1_fore img.chara-name-frame').style.display = target.innerText !== '' ? 'block' : 'none';
        }
      });
    });
    observer.observe(target, {
      childList: true,
    });
  [endscript]

  ; novel button の背景（fix レイヤに載せると clearfix で消えなかったので message0 に）
  [image layer="message0" storage="../image/novel_button/base2.png" x=434 y=922 zindex=1000]

  ; 一旦非表示
  [anim layer="message0" opacity=0 time=0]
  [anim layer="message1" opacity=0 time=0]
[endmacro]

; メッセージウィンドウを表示する
[macro name="show_msgwindow"]
  [iscript]
    const target = document.getElementsByClassName('chara-name')[0];
    document.querySelector('.message1_fore img.chara-name-frame').style.display = target.innerText !== '' ? 'block' : 'none';
  [endscript]

  [anim layer="message0" opacity=255 time="%time|300"]
  [anim layer="message1" opacity=255 time="%time|300"]
  [wait time="%time|300"]

  ; window hide button
  [button role="window" graphic="message/close.png" x=1440 y=637]

  ; novel button
  [for name="tf.i" from=0 to=5]
    [iscript]
      const roles = ['auto', 'save', 'load', 'backlog', 'config', 'title'];
      const y = [937, 922, 933, 934, 927, 931];
      const role = roles[tf.i];
      tf.graphic = `${role}.png`;
      tf.enterimg = `${role}_hover.png`;
      tf.clickse = `sys_${role}.wav`;
      tf.x = 464 + 161 * tf.i;
      tf.y = y[tf.i];
      tf.role = ['config'].includes(role) ? 'sleepgame' : role;
      tf.storage = ['config'].includes(role) ? `${role}.ks` : undefined;
      tf.autoimg = role === 'auto' ? `${role}_hover.png` : undefined;
    [endscript]
    [button folder="image/novel_button" graphic="&tf.graphic" enterimg="&tf.enterimg" clickse="&tf.clickse" x="&tf.x" y="&tf.y" role="&tf.role" storage="&tf.storage" autoimg="&tf.autoimg" fix="true"]
  [nextfor]

  [iscript]
    f.msgwindow_shown = true;
  [endscript]
[endmacro]

; メッセージウィンドウを非表示にする
[macro name="hide_msgwindow"]
  [cm]
  [clearfix]
  [anim layer="message0" opacity=0 time="%time|300"]
  [anim layer="message1" opacity=0 time="%time|300"]

  [iscript]
    f.msgwindow_shown = false;
  [endscript]
[endmacro]

; [bg] の page="back" 版
[macro name="bgb"]
  [image * storage="%storage" layer="base" page="back"]
[endmacro]

[return]
