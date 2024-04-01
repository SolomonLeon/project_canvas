window.tyrano_lang.word = {
  ...window.tyrano_lang.word,
  go_title: '确认返回标题？',
  exit_game: '确认关闭游戏？',
};

const resizeRemodal = () => {
  const elm = document.querySelector('.remodal-wrapper > .remodal');
  const ar = window.innerWidth / window.innerHeight;
  console.log(elm);
  console.log('aspect-ratio', ar);
  if (ar > 16 / 9) {
    // 横長 → height 基準
    elm.style.width = `${window.innerHeight * (16 / 9)}px`;
    elm.style.fontSize = `${(34 / 1080) * window.innerHeight}px`;
  } else {
    // 縦長 → width 基準
    elm.style.width = `${window.innerWidth}px`;
    elm.style.fontSize = `${(34 / 1920) * window.innerWidth}px`;
  }
};
resizeRemodal();
window.addEventListener('resize', resizeRemodal);

$.views.settings.allowCode(true);
window.dateFormatter = (str) => {
  str = str.split(' ');
  const day = str[0].split('/');
  const time = str[1].split(':').map((t) => t.padStart(2, '0'));
  day[1] = day[1].padStart(2, '0');
  day[2] = day[2].padStart(2, '0');
  return (
    [day[0], day[1], day[2], time[0]].join(
      '<span class="date-slash">/</span>'
    ) + `:${time[1]}`
  );
};
