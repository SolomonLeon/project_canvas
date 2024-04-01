(function (c, a, b) {
  a.kag.tag.backlog = {
    vital: [],
    pm: { bgimage: '', bgcolor: '0x000000', opacity: '255', time: '200' },
    start: function (f) {
      a.kag.tmp.backlog.time = f.time;
      a.kag.tmp.backlog.select = f.select;
      if (c('#backlog').length != 0) {
        c('#backlog').remove();
      }
      c('#tyrano_base').append("<div id='backlog'>");
      var d = c('#tyrano_base').find('#backlog');
      d.css({
        position: 'absolute',
        top: '0',
        left: '0',
        width: a.kag.tmp.backlog.screen_width + 'px',
        height: a.kag.tmp.backlog.screen_height + 'px',
        display: 'none',
        'z-index': a.kag.tmp.backlog.z_index,
      });
      d.on('click contextmenu', function (g) {
        if (g.which == 3) {
          c('#backlog_button_close').trigger('click');
          if (a.kag.tmp.backlog.voice_play) {
            c('.layer_event_click').trigger('click');
          }
        }
      });
      if (f.bgimage != '') {
        d.css({
          background:
            "url('" + a.kag.tmp.backlog.image_path + f.bgimage + "') no-repeat",
        });
      } else {
        var e = hex2rgb(c.convertColor(f.bgcolor));
        d.css({
          'background-color':
            'rgba(' +
            e[0] +
            ',' +
            e[1] +
            ',' +
            e[2] +
            ',' +
            c.convertOpacity(f.opacity) +
            ')',
        });
      }
      // add
      a.kag.tmp.backlog.gamepadListener = ({ detail }) => {
        if (['A', 'Y'].includes(detail.button_name)) {
          c('#backlog_button_close').trigger('click');
          if (a.kag.tmp.backlog.voice_play) {
            c('.layer_event_click').trigger('click');
          }
        }
      };

      a.kag.ftag.nextOrder();
    },
  };
  a.kag.tag.backlog_area = {
    vital: [],
    pm: {
      x: '',
      y: '',
      width: '800',
      height: '500',
      bgimage: '',
      bgcolor: '0x000000',
      opacity: '0',
      border: '1',
      border_color: '0xFFFFFF',
      border_radius: '0',
      margint: '20',
      marginl: '20',
      marginr: '20',
      marginb: '20',
    },
    start: function (f) {
      if (c('#backlog_area').length != 0) {
        c('#backlog_area').remove();
      }
      c('#backlog').append("<div id='backlog_area'>");
      c('#backlog').append("<div id='backlog-scroll-up' tabindex='0'>");
      c('#backlog').append("<div id='backlog-scroll-down' tabindex='0'>");
      $('#backlog-scroll-up').on('click', () => {
        $('#backlog_area')[0].scrollBy(0, -200);
      });
      $('#backlog-scroll-down').on('click', () => {
        $('#backlog_area')[0].scrollBy(0, 200);
      });
      var d = c('#backlog').find('#backlog_area');
      d.css({
        position: 'absolute',
        width: f.width + 'px',
        height: f.height + 'px',
        top: f.y + 'px',
        left: f.x + 'px',
        'overflow-y': 'scroll',
        'overflow-x': 'hidden',
        'padding-right': f.marginr + 'px',
        'padding-top': f.margint + 'px',
        'padding-left': f.marginl + 'px',
        'padding-bottom': f.marginb + 'px',
        border: f.border + 'px solid ' + c.convertColor(f.border_color),
        'border-radius': f.border_radius + 'px',
        'box-sizing': 'border-box',
      });
      a.kag.tmp.backlog.margin_right = f.marginr;
      if (f.bgimage != '') {
        d.css({
          background:
            "url('" + a.kag.tmp.backlog.image_path + f.bgimage + "') no-repeat",
        });
      } else {
        var e = hex2rgb(c.convertColor(f.bgcolor));
        d.css({
          'background-color':
            'rgba(' +
            e[0] +
            ',' +
            e[1] +
            ',' +
            e[2] +
            ',' +
            c.convertOpacity(f.opacity) +
            ')',
        });
      }
      a.kag.tmp.backlog.functions.createLog();
      a.kag.ftag.nextOrder();
    },
  };
  a.kag.tag.backlog_select = {
    vital: [],
    pm: {
      visible: 'true',
      face: a.kag.config.userFace,
      color: a.kag.config.defaultChColor,
      size: a.kag.config.defaultFontSize,
      bold: 'true',
    },
    start: function (d) {
      a.kag.tmp.backlog.select_pm = d;
      a.kag.ftag.nextOrder();
    },
  };
  a.kag.tag.backlog_chara = {
    vital: [],
    pm: {
      width: '250',
      height: '70',
      bgimage: '',
      bgcolor: '0x000000',
      opacity: '0',
      marginl: '0',
      margint: '0',
      marginr: '0',
      marginb: '0',
      pos: 'left',
      face: a.kag.config.userFace,
      color: a.kag.config.defaultChColor,
      size: a.kag.config.defaultFontSize,
      bold: a.kag.config.defaultBold,
      pitch: '0',
    },
    start: function (d) {
      a.kag.tmp.backlog.chara_pm = d;
      a.kag.tmp.backlog.width_chara = d.width;
      a.kag.ftag.nextOrder();
    },
  };
  a.kag.tag.backlog_text = {
    vital: [],
    pm: {
      face: a.kag.config.userFace,
      color: a.kag.config.defaultChColor,
      size: a.kag.config.defaultFontSize,
      bold: a.kag.config.defaultBold,
      pitch: '0',
      marginl: '0',
      margint: '0',
      marginr: '0',
      marginb: '0',
      line: '0',
    },
    start: function (d) {
      a.kag.tmp.backlog.text_pm = d;
      a.kag.ftag.nextOrder();
    },
  };
  a.kag.tag.backlog_line = {
    vital: ['size'],
    pm: { size: '1', color: '0xFFFFFF', img: '', margint: '20', marginb: '20' },
    start: function (d) {
      a.kag.tmp.backlog.line_pm = d;
      a.kag.ftag.nextOrder();
    },
  };
  a.kag.tag.backlog_button_voice = {
    vital: ['img', 'img_stop', 'width'],
    pm: {
      buf: '1,2',
      img: '',
      img_enter: '',
      img_stop: '',
      img_stop_enter: '',
      width: '',
      height: '',
      marginl: '0',
      margint: '0',
      marginr: '0',
      marginb: '0',
      pos: 'left',
    },
    start: function (d) {
      a.kag.tmp.backlog.voice_flg = 'true';
      a.kag.tmp.backlog.voice_pm = d;
      a.kag.tmp.backlog.voice_buf = d.buf;
      a.kag.tmp.backlog.width_voice = d.width;
      a.kag.ftag.nextOrder();
    },
  };
  a.kag.tag.backlog_button_close = {
    vital: ['img'],
    pm: { img: '', img_enter: '', width: '', height: '', x: '', y: '' },
    start: function (f) {
      var e = c('#tyrano_base').find('#backlog');
      e.append(
        "<div class='backlog_button menu_close tyrano-focusable' tabindex='0' id='backlog_button_close'>"
      );
      var d = e.find('#backlog_button_close');
      a.kag.tmp.backlog.functions.createButton(d, f);
      a.kag.tmp.backlog.functions.buttonHover(d, f);
      d.on('click', function () {
        a.kag.tmp.backlog.functions.stopSkipAuto();
        a.kag.tmp.backlog.functions.backlogClose();
      });
      a.kag.ftag.nextOrder();
    },
  };
  a.kag.tag.backlog_scroll = {
    vital: [],
    pm: {
      width: '10',
      bgcolor: '0xFFFFFF',
      tab_color: '0xFF0000',
      bgimage: '',
      tab_img: '',
      tab_width: '',
      tab_height: '',
      radius: '10',
    },
    start: function (d) {
      a.kag.tmp.backlog.scroll_pm = d;
      a.kag.ftag.nextOrder();
    },
  };
  a.kag.tag.endbacklog = {
    vital: [],
    pm: {},
    start: function (d) {
      a.kag.ftag.nextOrder();
    },
  };
  a.kag.tag.backlog_show = {
    vital: [],
    pm: { wait: 'false', next_order: 'true', time: '200' },
    start: function (e) {
      if (!a.kag.tmp.backlog.functions.checkClick()) {
        return false;
      }
      a.kag.tmp.backlog.keyconfig = a.kag.stat.enable_keyconfig;
      a.kag.layer.hideEventLayer();
      a.kag.tmp.backlog.functions.changeKeyconfig(false);
      a.kag.tmp.backlog.functions.createLog();
      a.kag.tmp.backlog.functions.setCharaName();
      a.kag.tmp.backlog.functions.setText();
      a.kag.tmp.backlog.functions.setLine();
      a.kag.tmp.backlog.functions.setVoiceButton();
      a.kag.tmp.backlog.functions.setScrollbar();
      a.kag.tmp.backlog.scroll = false;
      c('#backlog').fadeIn(parseInt(e.time), function () {
        if (e.next_order == 'true') {
          a.kag.ftag.nextOrder();
        }
      });
      var g = c('#backlog')
        .find('#backlog_area')
        .find('.backlog_block')
        .find('.backlog_chara');
      var f = c('#backlog')
        .find('#backlog_area')
        .find('.backlog_block')
        .find('.backlog_text');
      var d = c('#backlog')
        .find('#backlog_area')
        .find('.backlog_block')
        .find('.backlog_voice');
      g.css({
        'line-height': parseInt(a.kag.tmp.backlog.text_pm.line_height) + 'px',
      });
      f.css({
        'line-height': parseInt(a.kag.tmp.backlog.text_pm.line_height) + 'px',
      });
      d.css({
        'line-height': parseInt(a.kag.tmp.backlog.text_pm.line_height) + 'px',
      });
      g.each(function () {
        if (
          c(this).text() != '' &&
          c(this).text().indexOf(a.kag.tmp.backlog.select_text) == -1
        ) {
          if (a.kag.tmp.backlog.chara_pm.bgimage != '') {
            c(this).css({
              background:
                "url('" +
                a.kag.tmp.backlog.image_path +
                a.kag.tmp.backlog.chara_pm.bgimage +
                "')",
              opacity: '1',
            });
          } else {
            var h = hex2rgb(c.convertColor(a.kag.tmp.backlog.chara_pm.bgcolor));
            c(this).css({
              'background-color':
                'rgba(' +
                h[0] +
                ',' +
                h[1] +
                ',' +
                h[2] +
                ',' +
                c.convertOpacity(a.kag.tmp.backlog.chara_pm.opacity) +
                ')',
            });
          }
        }
      });
      $target = c('#backlog').find('#backlog_area');
      $target.scrollTop(0);
      $target.scrollTop(9999999999);
      // add
      document.addEventListener(
        'gamepadpressdown',
        a.kag.tmp.backlog.gamepadListener
      );
      $('.fixlayer').removeClass('tyrano-focusable');
      // $('#backlog-scroll-up').addClass('tyrano-focusable');
      // $('#backlog-scroll-down').addClass('tyrano-focusable');
    },
  };
  a.kag.tag.backlog_hide = {
    vital: [],
    pm: { wait: 'false', next_order: 'true' },
    start: function (e) {
      var d = c('#tyrano_base').find('#backlog_button_main');
      if (e.wait == 'false') {
        d.fadeOut(a.kag.tmp.backlog.time);
        if (e.next_order == 'true') {
          a.kag.ftag.nextOrder();
        }
      } else {
        d.fadeOut(a.kag.tmp.backlog.time, function () {
          if (e.next_order == 'true') {
            a.kag.ftag.nextOrder();
          }
        });
      }
    },
  };
  // a.kag.tag.backlog_hide = {
  //   vital: [],
  //   pm: { wait: 'false', next_order: 'true' },
  //   start: function (e) {
  //     var d = c('#tyrano_base').find('#backlog_button_main');
  //     if (e.wait == 'false') {
  //       d.fadeOut(a.kag.tmp.backlog.time);
  //       if (e.next_order == 'true') {
  //         a.kag.ftag.nextOrder();
  //       }
  //     } else {
  //       d.fadeOut(a.kag.tmp.backlog.time, function () {
  //         if (e.next_order == 'true') {
  //           a.kag.ftag.nextOrder();
  //         }
  //       });
  //     }
  //   },
  // };
  a.kag.tag.backlog_clear = {
    vital: [],
    pm: {},
    start: function (d) {
      a.kag.stat.f.backlog = [];
      a.kag.ftag.nextOrder();
    },
  };
  (function (d) {
    for (var f, e = 0; e < d.length; e++) {
      f = d[e];
      a.kag.ftag.master_tag[f] = object(a.kag.tag[f]);
      a.kag.ftag.master_tag[f].kag = a.kag;
    }
  })([
    'backlog',
    'endbacklog',
    'backlog_area',
    'backlog_chara',
    'backlog_text',
    'backlog_line',
    'backlog_select',
    'backlog_button_voice',
    'backlog_button_close',
    'backlog_show',
    'backlog_hide',
    'backlog_clear',
    'backlog_scroll',
  ]);
})(window.jQuery, window.TYRANO, window.TYRANO.kag.stat.mp);
