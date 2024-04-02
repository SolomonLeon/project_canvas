[macro name="show_score"]
  [for name="tf.i" from=0 to=3]
    [iscript]
      const params = ['dance', 'vocal', 'visual', 'perf'];
      const x = [458, 639, 1097, 1278];
      tf.folder = `image/training/number/${params[tf.i]}`;
      tf.storage = `${params[tf.i]}_${f.score[params[tf.i]]}.png`;
      tf.x = x[tf.i];
    [endscript]
    [image folder="&tf.folder" storage="&tf.storage" x="&tf.x" y=83 layer="0" page="back"]
  [nextfor]
[endmacro]

[macro name="show_date"]
  [iscript]
    switch (sf.training) {
      case 'a':
      case 'b':
        tf.storage = 'date___.png';
        break;
      case 'c':
        tf.storage = `date_${6 - tf.trainingCount}.png`;
        break;
      case 'd':
        tf.storage = `date_${3 - tf.trainingCount}.png`;
    }
  [endscript]
  [image folder="image/training/number/date" storage="&tf.storage" x=870 y=60 layer="0" page="back"]
[endmacro]

[macro name="training_bg"]
  [iscript]
    const en2bg = {
      dance: 'studio_dance.png',
      vocal: 'studio_vocal.png',
      visual: 'office_inside.png',
      perf: 'studio_vocal.png',
    };
    tf.storage = en2bg[this.kag.variable.tf.selected];
  [endscript]
  [image folder="bgimage" storage="&tf.storage" layer="0" page="back" x=-700 y=0 name="training-bg"]
[endmacro]

[return]
