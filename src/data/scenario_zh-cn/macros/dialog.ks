; required: text, yes, no
; optional: page, storage
[macro name="show_dialog"]
 	[iscript]
 		if (mp.storage === undefined) mp.storage = tyrano.plugin.kag.stat.stack.macro[0].storage;
    console.log(mp.storage);
 	[endscript]
  [backlay layer="2"]
  [image folder="bgimage" storage="dialog_bg.png" layer="2" page="back" x=0 y=0 zindex=800]
  [image folder="bgimage" storage="dialog_frame.png" layer="2" page="back" x=0 y=0 zindex=900]
  [ptext text="%text" align="center" face="Corporate" name="ui-text" size=36 width=1000 layer="2" page="back" x=460 y=425]
  [button folder="image/yesno" graphic="no.png" enterimg="no_hover.png" target="No" layer="2" x=634 y=593 zindex=1000]
  [button folder="image/yesno" graphic="yes.png" enterimg="yes_hover.png" target="Yes" layer="2" x=974 y=593 zindex=1000]
  [trans layer="2" time=500]
  [wt]
  [s]
  *Yes
  [freeimage layer="2"]
  [jump target="%yes" storage="%storage"]
  *No
  [freeimage layer="2"]
  [jump target="%no" storage="%storage"]
[endmacro]

[return]
