;このファイルは削除しないでください！
;
;make.ks はデータをロードした時に呼ばれる特別なKSファイルです。[p]
;Fixレイヤーの初期化など、ロード時点で再構築したい処理をこちらに記述してください。[p]
;
;

; macros/msgwindow.ks とおなじ
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

;make.ks はロード時にcallとして呼ばれるため、return必須です。[p]
[return]
