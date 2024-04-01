
[plugin name=for]

[wait time=300]

■ 1から5までループ[r]
[for name=f.i from=1 to=5]
  [emb exp=f.i]、
[nextfor]

……[l][r][r]

■ 3から初めて4回ループ[r]
[for name=f.i from=3 len=4]
  [emb exp=f.i]、
[nextfor]

……[l][r][r]


[iscript]
f.array = ["イ", "ロ", "ハ", "ニ", "ホ", "ヘ", "ト", "チ", "リ", "ヌ", "ル", "ヲ"]
[endscript]

■ 配列変数の中身を走査[r]
[foreach name=f.item array=f.array]
  [emb exp=f.item]、
[nextfor]
……[l][cm]

■ 配列変数の中身を走査(インデックス2から4まで)[r]
[foreach name=f.item array=f.array from=2 to=4]
  [emb exp=f.item]、
[nextfor]

……[l][r][r]

■ 配列変数の中身を走査(インデックス5から始める)[r]
[foreach name=f.item array=f.array from=5]
  [emb exp=f.item]、
[nextfor]

……[l][r][r]

■ 配列変数の中身を走査(インデックス10から始めて5個)[r]
[foreach name=f.item array=f.array from=10 len=5]
  [emb exp=f.item]、
[nextfor]

……(5個もないので途中で終わる)[l][r][r]

■ 配列変数の中身を走査(インデックス999から始める)[r]
[foreach name=f.item array=f.array from=999]
  [emb exp=f.item]、
[nextfor]

……(存在しないので何もおこなわれない)[p]

■ 条件付きでループを抜ける[r]
[for name=f.i from=1 to=5]
  [emb exp=f.i]、
  [breakfor cond="f.i>=3"]
[nextfor]

……(3以上になったのでループを抜けた)[l][r][r]


■ 多重ループ[r]
[for name=f.i from=1 to=3]
  [for name=f.j from=1 to=9 deep=1]
    [emb exp=f.i*f.j]、
  [nextfor deep=1]
  [r]
[nextfor]

……(1～9と1～3の掛け算が行われた)[l][r][r]

サンプルおわり[s]