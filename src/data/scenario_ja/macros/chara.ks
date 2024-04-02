
[chara_new name="jyocho" storage="chara/jyocho/casual/normal.png" jname="ヰ世界情緒"]
[chara_new name="prd" storage="chara/prd.png" jname="制作人"]
[chara_new name="ruri" storage="chara/ruri/normal.png" jname="長谷部瑠璃"]
[chara_new name="reina" storage="chara/reina/normal.png" jname="舞川レイナ"]
[chara_new name="saki" storage="chara/saki/normal.png" jname="歌方咲"]

[iscript]
  const faces = [ 'normal', 'serious', 'smile', 'angry', 'confused' ];
  [ 'casual', 'training' ].map((wear) => {
    faces.map((face) => {
      TYRANO.kag.ftag.startTag('chara_face', {
        name: 'jyocho',
        face: `${wear[0]}${face}`,
        storage: `chara/jyocho/${wear}/${face}.png`
      });
    });
  });
  [ 'ruri', 'reina', 'saki' ].map((name) => {
    faces.map((face) => {
      TYRANO.kag.ftag.startTag('chara_face', {
        name,
        face,
        storage: `chara/${name}/${face}.png`
      });
    });
  });
[endscript]

[macro name="_show_chara"]
  [chara_show time="500" *]
[endmacro]
[macro name="show_jyocho"]
  [_show_chara name="jyocho" top="30" width="1180" *]
[endmacro]
[macro name="show_ruri"]
  [_show_chara name="ruri" top="-10" width="930" *]
[endmacro]
[macro name="show_reina"]
  [_show_chara name="reina" top="-35" width="950" *]
[endmacro]
[macro name="show_saki"]
  [_show_chara name="saki" top="-35" width="980" *]
[endmacro]

[return]
