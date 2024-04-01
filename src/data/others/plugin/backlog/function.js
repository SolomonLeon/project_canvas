function hex2rgb(a) {
  if (a.slice(0, 1) == '#') {
    a = a.slice(1);
  }
  if (a.length == 3) {
    a =
      a.slice(0, 1) +
      a.slice(0, 1) +
      a.slice(1, 2) +
      a.slice(1, 2) +
      a.slice(2, 3) +
      a.slice(2, 3);
  }
  return [a.slice(0, 2), a.slice(2, 4), a.slice(4, 6)].map(function (b) {
    return parseInt(b, 16);
  });
}
TYRANO.kag.tmp.backlog.functions.addBacklog = function (a, b) {
  if (TYRANO.kag.stat.log_write) {
    if (
      TYRANO.kag.stat.f.backlog.length >=
      parseInt(TYRANO.kag.config.maxBackLogNum)
    ) {
      TYRANO.kag.stat.f.backlog.shift();
    }
    TYRANO.kag.stat.f.backlog.push([a, b, TYRANO.kag.tmp.backlog.voice]);
  }
  TYRANO.kag.tmp.backlog.chara_name = '';
  TYRANO.kag.tmp.backlog.massage = '';
  TYRANO.kag.tmp.backlog.voice = '';
};
TYRANO.kag.tmp.backlog.functions.stopSkipAuto = function () {
  TYRANO.kag.stat.is_skip = false;
  TYRANO.kag.stat.is_auto = false;
};
TYRANO.kag.tmp.backlog.functions.changeKeyconfig = function (a) {
  if (!a) {
    TYRANO.kag.stat.enable_keyconfig = false;
  } else {
    TYRANO.kag.stat.enable_keyconfig = TYRANO.kag.tmp.backlog.keyconfig;
  }
};
TYRANO.kag.tmp.backlog.functions.buttonHover = function (c, b) {
  var a = c;
  a.off('mouseenter mouseleave');
  a.find('.button').hide();
  a.find('.base').show();
  a.hover(
    function () {
      $(this)
        .find('.base_enter')
        .fadeIn(
          parseInt(TYRANO.kag.tmp.backlog.button_hover_time),
          function () {
            $(this).find('.base').hide();
          }
        );
    },
    function () {
      $(this).find('.base').show();
      $(this).find('.base_enter').hide();
    }
  );
};
TYRANO.kag.tmp.backlog.functions.voiceStopButtonHover = function (b) {
  var a = b;
  a.off('mouseenter mouseleave');
  a.find('.button').hide();
  a.find('.close').show();
  a.hover(
    function () {
      $(this)
        .find('.close_enter')
        .fadeIn(
          parseInt(TYRANO.kag.tmp.backlog.button_hover_time),
          function () {
            $(this).find('.close').hide();
          }
        );
    },
    function () {
      $(this).find('.close').show();
      $(this).find('.close_enter').hide();
    }
  );
};
TYRANO.kag.tmp.backlog.functions.createButton = function (f, c) {
  var a = f;
  a.append(
    "<img class='base button' src='" +
      TYRANO.kag.tmp.backlog.image_path +
      c.img +
      "' style='position:absolute;'>"
  );
  var b = a.find('.base');
  b.css({ width: c.width + 'px', height: c.height + 'px' });
  a.append(
    "<img class='base_enter button' src='" +
      TYRANO.kag.tmp.backlog.image_path +
      c.img +
      "' style='position:absolute;display:none;'>"
  );
  var d = a.find('.base_enter');
  d.css({ width: c.width + 'px', height: c.height + 'px' });
  if (c.img_enter != '') {
    d.attr('src', TYRANO.kag.tmp.backlog.image_path + c.img_enter);
  }
  if (typeof c.img_close !== 'undefined') {
    a.append(
      "<img class='close button' src='" +
        TYRANO.kag.tmp.backlog.image_path +
        c.img_close +
        "' style='position:absolute;display:none;'>"
    );
    var e = a.find('.close');
    e.css({ width: c.width + 'px', height: c.height + 'px' });
    a.append(
      "<img class='close_enter button' src='" +
        TYRANO.kag.tmp.backlog.image_path +
        c.img_close +
        "' style='position:absolute;display:none;'>"
    );
    var g = a.find('.close_enter');
    g.css({ width: c.width + 'px', height: c.height + 'px' });
    if (c.img_close_enter != '') {
      g.attr('src', TYRANO.kag.tmp.backlog.image_path + c.img_close_enter);
    }
  }
  a.css({
    position: 'absolute',
    top: c.y + 'px',
    left: c.x + 'px',
    cursor: 'pointer',
    'z-index': TYRANO.kag.tmp.backlog.z_index,
  });
  b.on('load', function () {
    var i = $(this).width();
    var h = $(this).height();
    a.css({ width: i + 'px', height: h + 'px' });
  });
};
TYRANO.kag.tmp.backlog.functions.backlogClose = function () {
  var b = TYRANO.kag.tmp.backlog.voice_buf.split(',');
  for (var a = 0; a < b.length; a++) {
    TYRANO.kag.ftag.startTag('stopse', { buf: b[a], stop: true });
  }
  TYRANO.kag.layer.showEventLayer();
  TYRANO.kag.tmp.backlog.functions.changeKeyconfig(true);
  $('#backlog').fadeOut(parseInt(TYRANO.kag.tmp.backlog.time) / 2);
  // remove
  document.removeEventListener(
    'gamepadpressdown',
    TYRANO.kag.tmp.backlog.gamepadListener
  );
  $('.fixlayer').addClass('tyrano-focusable');
  // $('#backlog-scroll-up').removeClass('tyrano-focusable');
  // $('#backlog-scroll-down').removeClass('tyrano-focusable');
};
TYRANO.kag.tmp.backlog.functions.checkClick = function () {
  if (
    TYRANO.kag.stat.is_adding_text ||
    TYRANO.kag.stat.is_skip ||
    TYRANO.kag.stat.is_auto
  ) {
    return false;
  }
  return true;
};
TYRANO.kag.tmp.backlog.functions.createLog = function () {
  var b = $('#backlog').find('#backlog_area');
  b.empty();
  var c = '';
  var e = { CHARA: 0, TEXT: 1, VOICE: 2 };
  for (var d = 0; d < TYRANO.kag.stat.f.backlog.length; d++) {
    var a = '';
    a += "<div class='backlog_block' style='display:table;'>";
    a +=
      "<div class='backlog_voice'><div data-voice='" +
      TYRANO.kag.stat.f.backlog[d][e.VOICE] +
      "'></div></div>";
    a +=
      "<div class='backlog_chara'>" +
      TYRANO.kag.stat.f.backlog[d][e.CHARA] +
      '</div>';
    a +=
      "<div class='backlog_text'>" +
      TYRANO.kag.stat.f.backlog[d][e.TEXT] +
      '</div>';
    a += '</div>';
    if (d != TYRANO.kag.stat.f.backlog.length - 1) {
      a += "<div class='backlog_line'></div>";
    }
    b.append(a);
  }
};
TYRANO.kag.tmp.backlog.functions.setCharaName = function () {
  var b = TYRANO.kag.tmp.backlog.chara_pm;
  var a = $('#backlog')
    .find('#backlog_area')
    .find('.backlog_block')
    .find('.backlog_chara');
  var c = $('#backlog')
    .find('#backlog_area')
    .find('.backlog_block')
    .find('.backlog_text');
  a.css({
    'font-family': b.face,
    'font-size': b.size + 'px',
    color: $.convertColor(b.color),
    'font-weight': $.convertBold(b.bold),
    'letter-spacing': b.pitch + 'px',
    'padding-left': b.marginl + 'px',
    'padding-right': b.marginr + 'px',
    'padding-bottom': b.marginb + 'px',
    'padding-top': b.margint + 'px',
    width: b.width + 'px',
    'vertical-align': 'top',
  });
  if (b.pos == 'center') {
    a.css({ 'text-align': 'center' });
  } else {
    if (b.pos == 'right') {
      a.css({ 'text-align': 'right' });
    } else {
      a.css({ 'text-align': 'left' });
    }
  }
  a.css({ display: 'table-cell' });
  c.css({ display: 'table-cell', width: 'calc(100% - ' + b.width + 'px)' });
};
TYRANO.kag.tmp.backlog.functions.setText = function () {
  var b = TYRANO.kag.tmp.backlog.text_pm;
  TYRANO.kag.tmp.backlog.text_pm.line_height =
    parseInt(b.size) + parseInt(b.line);
  var a = $('#backlog')
    .find('#backlog_area')
    .find('.backlog_block')
    .find('.backlog_text');
  a.css({
    'font-family': b.face,
    'font-size': b.size + 'px',
    color: $.convertColor(b.color),
    'font-weight': $.convertBold(b.bold),
    'letter-spacing': b.pitch + 'px',
    'padding-left': b.marginl + 'px',
    'padding-right': b.marginr + 'px',
    'padding-bottom': b.marginb + 'px',
    'padding-top': b.margint + 'px',
    'line-height': TYRANO.kag.tmp.backlog.text_pm.line_height + 'px',
    'vertical-align': 'top',
  });
};
TYRANO.kag.tmp.backlog.functions.setLine = function () {
  var b = TYRANO.kag.tmp.backlog.line_pm;
  var a = $('#backlog').find('#backlog_area').find('.backlog_line');
  a.css({
    height: b.size + 'px',
    width: '100%',
    'margin-top': b.margint + 'px',
    'margin-bottom': b.marginb + 'px',
  });
  if (b.img != '') {
    a.css({
      background:
        "url('" +
        TYRANO.kag.tmp.backlog.image_path +
        b.img +
        "') center center no-repeat",
    });
  } else {
    a.css({ 'background-color': $.convertColor(b.color) });
  }
};
TYRANO.kag.tmp.backlog.functions.setVoiceButton = function () {
  if (TYRANO.kag.tmp.backlog.voice_flg != 'true') {
    return false;
  }
  var b = TYRANO.kag.tmp.backlog.voice_pm;
  var a = $('#backlog')
    .find('#backlog_area')
    .find('.backlog_block')
    .find('.backlog_voice')
    .find('div');
  a.each(function () {
    $(this)
      .parent()
      .find('.backlog_text')
      .css({
        width:
          'calc(100% - ' +
          parseInt(TYRANO.kag.tmp.backlog.width_chara) +
          parseInt(TYRANO.kag.tmp.backlog.width_voice) +
          'px)',
      });
    if (b.pos == 'right') {
      $(this)
        .parent()
        .parent()
        .find('.backlog_voice')
        .insertAfter($(this).parent().parent().find('.backlog_chara'));
    }
    if ($(this).attr('data-voice') == '') {
      return;
    }
    b.img_close = b.img_stop;
    b.img_close_enter = b.img_stop_enter;
    TYRANO.kag.tmp.backlog.functions.createButton($(this), b);
    TYRANO.kag.tmp.backlog.functions.buttonHover($(this), b);
    var c = b.buf.split(',');
    var d;
    TYRANO.kag.tmp.backlog.voice_play = false;
    $(this).on('click', function () {
      TYRANO.kag.tmp.backlog.voice_play = true;
      if ($(this).find('.close').css('display') == 'block') {
        TYRANO.kag.ftag.startTag('stopse', { buf: c[0], stop: 'true' });
        a.find('.close').hide();
        a.find('.base').show();
        TYRANO.kag.tmp.backlog.functions.buttonHover($(this), b);
      } else {
        a.find('.close').hide();
        a.find('.base').show();
        TYRANO.kag.tmp.backlog.functions.buttonHover(a, b);
        clearInterval(d);
        var f = $(this).attr('data-voice');
        if (TYRANO.kag.tmp.is_se_play) {
          for (var e = 0; e < c.length; e++) {
            TYRANO.kag.ftag.startTag('stopse', { buf: c[e], stop: 'true' });
          }
        }
        TYRANO.kag.tmp.backlog.functions.voiceStopButtonHover($(this));
        TYRANO.kag.ftag.startTag('playse', {
          storage: f,
          buf: c[0],
          stop: 'true',
        });
        d = setInterval(function () {
          if (!TYRANO.kag.tmp.is_se_play) {
            a.find('.close').hide();
            a.find('.base').show();
            TYRANO.kag.tmp.backlog.functions.buttonHover(a, b);
            clearInterval(d);
          }
        }, 50);
      }
    });
  });
  a.parent().css({
    position: 'relative',
    display: 'table-cell',
    width: b.width + 'px',
    height: b.height + 'px',
    'padding-left': b.marginl + 'px',
    'padding-right': b.marginr + 'px',
    'padding-bottom': b.marginb + 'px',
    'padding-top': b.margint + 'px',
    'vertical-align': 'top',
  });
};
TYRANO.kag.tmp.backlog.functions.setScrollbar = function () {
  var d = TYRANO.kag.tmp.backlog.scroll_pm;
  var c = $('#backlog').find('#backlog_area');
  var f = $('#backlog')
    .find('#backlog_area')
    .find('.backlog_block')
    .find('.backlog_chara');
  var i = $('#backlog')
    .find('#backlog_area')
    .find('.backlog_block')
    .find('.backlog_text');
  var g = 0;
  if (TYRANO.kag.tmp.backlog.voice_flg == 'true') {
    var h = $('#backlog')
      .find('#backlog_area')
      .find('.backlog_block')
      .find('.backlog_voice');
    g = h.width();
  }
  c.css({
    'padding-right':
      parseInt(TYRANO.kag.tmp.backlog.margin_right) + parseInt(d.width) + 'px',
  });
  var b = parseInt(f.width()) + parseInt(g) + parseInt(d.width);
  i.css({ width: 'calc(100% - ' + b + 'px)' });
  var k = 100;
  if (d.tab_img != '') {
    k = parseInt(d.tab_height);
  }
  var a = new PerfectScrollbar('#backlog_area', {
    wheelSpeed: 0.4,
    wheelPropagation: true,
    minScrollbarLength: k,
    maxScrollbarLength: k,
  });
  var l = $('.ps__rail-y');
  var j = $('.ps__thumb-y');
  var e;
  if (d.tab_img != '') {
    l.css({
      width: d.width + 'px',
      background:
        "rgba(0,0,0,0) url('" +
        TYRANO.kag.tmp.backlog.image_path +
        d.bgimage +
        "') no-repeat",
      'border-radius': '0px',
    });
    j.css({
      width: d.width + 'px',
      'background-color': 'rgba(0,0,0,0)',
      background:
        "url('" +
        TYRANO.kag.tmp.backlog.image_path +
        d.tab_img +
        "') no-repeat",
      left: '0px',
      'border-radius': '0px',
    });
  } else {
    e = hex2rgb($.convertColor(d.bgcolor));
    l.css({
      width: d.width + 'px',
      'background-color':
        'rgba(' +
        e[0] +
        ',' +
        e[1] +
        ',' +
        e[2] +
        ',' +
        $.convertOpacity(d.opacity) +
        ')',
      'border-radius': d.radius + 'px',
    });
    e = hex2rgb($.convertColor(d.tab_color));
    j.css({
      width: d.width + 'px',
      'background-color': 'rgba(' + e[0] + ',' + e[1] + ',' + e[2] + ',1)',
      left: '0px',
      'border-radius': d.radius + 'px',
    });
  }
};
