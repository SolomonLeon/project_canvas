/*
ティラノビルダープラグイン開発用のテンプレート
まず、このファイルを編集してプラグイン開発を試してみると良いでしょう。
*/

'use strict';
module.exports = class plugin_setting {

    constructor(TB) {

        /* TBはティラノビルダーの機能にアクセスするためのインターフェスを提供する */
        this.TB = TB;

        /* プラグイン名を格納する */
        this.name= TB.$.s("バックログ画面プラグイン");

        /*プラグインの説明文を格納する*/
        this.plugin_text= TB.$.s("バックログ画面のデザインを変更、機能を追加するプラグインです。");

        /*プラグイン説明用の画像ファイルを指定する。プラグインフォルダに配置してください*/
        this.plugin_img = "image.png";

    }


    /* プラグインをインストールを実行した時１度だけ走ります。フォルダのコピーなどにご活用ください。*/
    triggerInstall(){

        /*
        //プラグインからプロジェクトにファイルをコピーするサンプルです
        var project_path = TB.getProjectPath() ;
        var from_path = project_path + "data/others/plugin/plugin_template/copy_folder";
        var to_path = project_path + "data/image/copy_folder";
        TB.io.copy(from_path,to_path);
        */

    }

    /*
    追加するコンポーネントを定義します。
    */

    defineComponents(){

        var cmp = {};
        var TB = this.TB;

        //=======================================================
        //  #[backlog]
        //=======================================================

        cmp["backlog"] = {

            "info": {
                "default": true,
                "name": TB.$.s("ログ画面設定開始"),
                "help": TB.$.s("バックログ画面の設定を開始します"),
                "icon": TB.$.s("s-icon-star-full"),
            },

            "component": {

                name: TB.$.s("ログ画面設定開始"),
                component_type: "Simple",  /* Simple Movie Image Text Sound */

                header: function(obj) {
                },

                default_view: {
                    base_img_url: "data/others/plugin/backlog/image/",
                    icon: "s-icon-star-full",
                    icon_color: "#FFFF99",
                    category: "plugin",
                },

                param_view: {},

                param: {

                    "bgimage": {
                        type: "ImageSelect",
                        file_path: "others/plugin/backlog/image/",
                        base_img_url: "data/others/plugin/backlog/image/",
                        name: TB.$.s("背景画像"),
                        help: TB.$.s("背景画像を指定します"),
                        vital: false,
                        default_val: "",
                        line_preview: "on",
                        validate: {
                            required: true
                        }
                    },

                    "bgcolor": {
                        type: "Color",
                        name: TB.$.s("背景色"),
                        default_val: "0x000000",
                        vital: false,
                        validate: {
                            required: true
                        }
                    },

                    "opacity" : {
                        type: "Num",
                        name: "不透明度",
                        unit: "",
                        help: TB.$.s("背景の不透明度を指定します"),

                        default_val: 255,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 255,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                },
            },
        };

        //=======================================================
        //  #[backlog_area]
        //=======================================================

        cmp["backlog_area"] = {

            "info": {
                "default": true,
                "name": TB.$.s("ログ表示エリア"),
                "help": TB.$.s("ログ表示エリアを設定します"),
                "icon": TB.$.s("s-icon-star-full"),
            },

            "component": {

                name: TB.$.s("ログ表示エリア"),
                component_type: "Simple",  /* Simple Movie Image Text Sound */

                header: function(obj) {
                },

                default_view: {
                    base_img_url: "data/others/plugin/backlog/image/",
                    icon: "s-icon-star-full",
                    icon_color: "#FFFF99",
                    category: "plugin",
                },

                param_view: {},

                param: {

                    "x": {
                        type: "Num",
                        name: "横位置",
                        unit: "px",
                        help: TB.$.s("画面左端からの位置を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "y": {
                        type: "Num",
                        name: "縦位置",
                        unit: "px",
                        help: TB.$.s("画面上端からの位置を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "width" : {
                        type: "Num",
                        name: "幅",
                        unit: "px",
                        help: TB.$.s("画像の幅を指定します"),

                        default_val: 800,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "height" : {
                        type: "Num",
                        name: "高さ",
                        unit: "px",
                        help: TB.$.s("画像の高さを指定します"),

                        default_val: 500,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "bgimage": {
                        type: "ImageSelect",
                        file_path: "others/plugin/backlog/image/",
                        base_img_url: "data/others/plugin/backlog/image/",
                        name: TB.$.s("背景画像"),
                        help: TB.$.s("背景画像を指定します"),
                        vital: false,
                        default_val: "",
                        line_preview: "on",
                        validate: {
                            required: true
                        }
                    },

                    "bgcolor": {
                        type: "Color",
                        name: TB.$.s("背景色"),
                        default_val: "0x000000",
                        vital: false,
                        validate: {
                            required: true
                        }
                    },

                    "opacity" : {
                        type: "Num",
                        name: "不透明度",
                        unit: "",
                        help: TB.$.s("背景の不透明度を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 255,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "border" : {
                        type: "Num",
                        name: "枠線の太さ",
                        unit: "px",
                        help: TB.$.s("枠線の太さを指定します"),

                        default_val: 1,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "border_color" : {
                        type : "Color",
                        name : TB.$.s("枠線の色"),
                        default_val : "0xFFFFFF",
                        validate : {
                            required : true
                        }
                    },

                    "border_radius" : {
                        type: "Num",
                        name: "枠線の角丸",
                        unit: "px",
                        help: TB.$.s("枠線の角丸を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "margint" : {
                        type: "Num",
                        name: "上余白",
                        unit: "px",
                        help: TB.$.s("上の余白を指定します"),

                        default_val: 20,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "marginb" : {
                        type: "Num",
                        name: "下余白",
                        unit: "px",
                        help: TB.$.s("下の余白を指定します"),

                        default_val: 20,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "marginr" : {
                        type: "Num",
                        name: "右余白",
                        unit: "px",
                        help: TB.$.s("右の余白を指定します"),

                        default_val: 20,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "marginl" : {
                        type: "Num",
                        name: "左余白",
                        unit: "px",
                        help: TB.$.s("左の余白を指定します"),

                        default_val: 20,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },


                },
            },
        };

        //=======================================================
        //  #[backlog_chara]
        //=======================================================

        cmp["backlog_chara"] = {

            "info": {
                "default": true,
                "name": TB.$.s("ログキャラ名表示エリア"),
                "help": TB.$.s("ログのキャラクター名表示を設定する"),
                "icon": TB.$.s("s-icon-star-full"),
            },

            "component": {

                name: TB.$.s("ログキャラ名表示エリア"),
                component_type: "Simple",  /* Simple Movie Image Text Sound */

                header: function(obj) {
                },

                default_view: {
                    base_img_url: "data/others/plugin/backlog/image/",
                    icon: "s-icon-star-full",
                    icon_color: "#FFFF99",
                    category: "plugin",
                },

                param_view: {},

                param: {

                    "width" : {
                        type: "Num",
                        name: "幅",
                        unit: "px",
                        help: TB.$.s("画像の幅を指定します"),

                        default_val: 250,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "height" : {
                        type: "Num",
                        name: "高さ",
                        unit: "px",
                        help: TB.$.s("画像の高さを指定します"),

                        default_val: 70,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "bgimage": {
                        type: "ImageSelect",
                        file_path: "others/plugin/backlog/image/",
                        base_img_url: "data/others/plugin/backlog/image/",
                        name: TB.$.s("背景画像"),
                        help: TB.$.s("背景画像を指定します"),
                        vital: false,
                        default_val: "",
                        line_preview: "on",
                        validate: {
                            required: true
                        }
                    },

                    "bgcolor": {
                        type: "Color",
                        name: TB.$.s("背景色"),
                        default_val: "0x000000",
                        vital: false,
                        validate: {
                            required: true
                        }
                    },

                    "opacity" : {
                        type: "Num",
                        name: "不透明度",
                        unit: "",
                        help: TB.$.s("背景の不透明度を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 255,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "margint" : {
                        type: "Num",
                        name: "上余白",
                        unit: "px",
                        help: TB.$.s("上の余白を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "marginb" : {
                        type: "Num",
                        name: "下余白",
                        unit: "px",
                        help: TB.$.s("下の余白を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "marginr" : {
                        type: "Num",
                        name: "右余白",
                        unit: "px",
                        help: TB.$.s("右の余白を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "marginl" : {
                        type: "Num",
                        name: "左余白",
                        unit: "px",
                        help: TB.$.s("左の余白を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "pos": {
                        type: "Select",
                        name: TB.$.s("テキスト位置"),
                        select_list: [{
                            name: TB.$.s("左"),
                            val: "left"
                        }, {
                            name: TB.$.s("中央"),
                            val: "center"
                        }, {
                            name: TB.$.s("右"),
                            val: "right"
                        },],

                        default_val: "left",
                        vital: false,
                        help: TB.$.s("テキスト位置を指定します"),
                    },

                    "size" : {
                        type: "Num",
                        name: "フォントサイズ",
                        unit: "px",
                        help: TB.$.s("フォントのサイズを指定します"),

                        default_val: 26,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 100,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "color" : {
                        type : "Color",
                        name : TB.$.s("フォントの色"),
                        default_val : "0xFFFFFF",
                        validate : {
                            required : true
                        }
                    },

                    "bold": {
                        type: "Select",
                        name: TB.$.s("太字"),
                        select_list: [{
                            name: TB.$.s("する"),
                            val: "true"
                        }, {
                            name: TB.$.s("しない"),
                            val: "false"
                        },],

                        default_val: "false",
                        vital: false,
                        help: TB.$.s("太字にするかを指定します"),
                    },

                    "pitch" : {
                        type: "Num",
                        name: "字間",
                        unit: "px",
                        help: TB.$.s("字間を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 100,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },
                },
            },
        };

        //=======================================================
        //  #[backlog_text]
        //=======================================================

        cmp["backlog_text"] = {

            "info": {
                "default": true,
                "name": TB.$.s("ログテキスト表示エリア"),
                "help": TB.$.s("ログのメッセージ表示を設定する"),
                "icon": TB.$.s("s-icon-star-full"),
            },

            "component": {

                name: TB.$.s("ログテキスト表示エリア"),
                component_type: "Simple",  /* Simple Movie Image Text Sound */

                header: function(obj) {
                },

                default_view: {
                    base_img_url: "data/others/plugin/backlog/image/",
                    icon: "s-icon-star-full",
                    icon_color: "#FFFF99",
                    category: "plugin",
                },

                param_view: {},

                param: {


                    "size" : {
                        type: "Num",
                        name: "フォントサイズ",
                        unit: "px",
                        help: TB.$.s("フォントのサイズを指定します"),

                        default_val: 26,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 100,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "color" : {
                        type : "Color",
                        name : TB.$.s("フォントの色"),
                        default_val : "0xFFFFFF",
                        validate : {
                            required : true
                        }
                    },

                    "bold": {
                        type: "Select",
                        name: TB.$.s("太字"),
                        select_list: [{
                            name: TB.$.s("する"),
                            val: "true"
                        }, {
                            name: TB.$.s("しない"),
                            val: "false"
                        },],

                        default_val: "false",
                        vital: false,
                        help: TB.$.s("太字にするかを指定します"),
                    },

                    "pitch" : {
                        type: "Num",
                        name: "字間",
                        unit: "px",
                        help: TB.$.s("字間を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 100,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "margint" : {
                        type: "Num",
                        name: "上余白",
                        unit: "px",
                        help: TB.$.s("上の余白を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "marginb" : {
                        type: "Num",
                        name: "下余白",
                        unit: "px",
                        help: TB.$.s("下の余白を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "marginr" : {
                        type: "Num",
                        name: "右余白",
                        unit: "px",
                        help: TB.$.s("右の余白を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "marginl" : {
                        type: "Num",
                        name: "左余白",
                        unit: "px",
                        help: TB.$.s("左の余白を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "line" : {
                        type: "Num",
                        name: "行間",
                        unit: "px",
                        help: TB.$.s("行間を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 100,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },
                },
            },
        };

        //=======================================================
        //  #[backlog_line]
        //=======================================================

        cmp["backlog_line"] = {

            "info": {
                "default": true,
                "name": TB.$.s("ログライン"),
                "help": TB.$.s("[p]タグ毎の区切りのラインを設定する"),
                "icon": TB.$.s("s-icon-star-full"),
            },

            "component": {

                name: TB.$.s("ログライン"),
                component_type: "Simple",  /* Simple Movie Image Text Sound */

                header: function(obj) {
                },

                default_view: {
                    base_img_url: "data/others/plugin/backlog/image/",
                    icon: "s-icon-star-full",
                    icon_color: "#FFFF99",
                    category: "plugin",
                },

                param_view: {},

                param: {


                    "size" : {
                        type: "Num",
                        name: "太さ",
                        unit: "px",
                        help: TB.$.s("ラインの太さを指定します"),

                        default_val: 1,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 100,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "color" : {
                        type : "Color",
                        name : TB.$.s("ラインの色"),
                        default_val : "0xFFFFFF",
                        validate : {
                            required : true
                        }
                    },

                    "img": {
                        type: "ImageSelect",
                        file_path: "others/plugin/backlog/image/",
                        name: TB.$.s("ライン画像"),
                        help: TB.$.s("ライン画像を指定します"),
                        vital: true,
                        default_val: "",
                        validate: {
                            required: true
                        }
                    },

                    "margint" : {
                        type: "Num",
                        name: "上余白",
                        unit: "px",
                        help: TB.$.s("上の余白を指定します"),

                        default_val: 20,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "marginb" : {
                        type: "Num",
                        name: "下余白",
                        unit: "px",
                        help: TB.$.s("下の余白を指定します"),

                        default_val: 20,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                },
            },
        };

        //=======================================================
        //  #[backlog_scroll]
        //=======================================================

        cmp["backlog_scroll"] = {

            "info": {
                "default": true,
                "name": TB.$.s("ログスクロール"),
                "help": TB.$.s("バックログ表示エリアのスクロールバーを設定する"),
                "icon": TB.$.s("s-icon-star-full"),
            },

            "component": {

                name: TB.$.s("ログスクロール"),
                component_type: "Simple",  /* Simple Movie Image Text Sound */

                header: function(obj) {
                },

                default_view: {
                    base_img_url: "data/others/plugin/backlog/image/",
                    icon: "s-icon-star-full",
                    icon_color: "#FFFF99",
                    category: "plugin",
                },

                param_view: {},

                param: {

                    "width" : {
                        type: "Num",
                        name: "幅",
                        unit: "px",
                        help: TB.$.s("幅を指定します"),

                        default_val: 10,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "bgimage": {
                        type: "ImageSelect",
                        file_path: "others/plugin/backlog/image/",
                        base_img_url: "data/others/plugin/backlog/image/",
                        name: TB.$.s("背景画像"),
                        help: TB.$.s("背景画像を指定します"),
                        vital: false,
                        default_val: "",
                        line_preview: "on",
                        validate: {
                            required: true
                        }
                    },

                    "bgcolor": {
                        type: "Color",
                        name: TB.$.s("背景色"),
                        default_val: "0xFFFFFF",
                        vital: false,
                        validate: {
                            required: true
                        }
                    },

                    "tab_color" : {
                        type : "Color",
                        name : TB.$.s("タブの色"),
                        default_val : "0xFF0000",
                        validate : {
                            required : true
                        }
                    },


                    "tab_img": {
                        type: "ImageSelect",
                        file_path: "others/plugin/backlog/image/",
                        base_img_url: "data/others/plugin/backlog/image/",
                        name: TB.$.s("タブの画像"),
                        help: TB.$.s("タブの画像を指定します"),
                        vital: false,
                        default_val: "",
                        line_preview: "on",
                        validate: {
                            required: true
                        }
                    },

                    "tab_width" : {
                        type: "Num",
                        name: "タブの幅",
                        unit: "px",
                        help: TB.$.s("タブ画像の幅を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "tab_height" : {
                        type: "Num",
                        name: "タブの高さ",
                        unit: "px",
                        help: TB.$.s("タブ画像の高さを指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "radius" : {
                        type: "Num",
                        name: "角丸",
                        unit: "px",
                        help: TB.$.s("角丸を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },
                },
            },
        };

        //=======================================================
        //  #[backlog_select]
        //=======================================================

        cmp["backlog_select"] = {

            "info": {
                "default": true,
                "name": TB.$.s("ログ分岐テキスト"),
                "help": TB.$.s("分岐ボタンのテキストの表示を設定する"),
                "icon": TB.$.s("s-icon-star-full"),
            },

            "component": {

                name: TB.$.s("ログ分岐テキスト"),
                component_type: "Simple",  /* Simple Movie Image Text Sound */

                header: function(obj) {
                },

                default_view: {
                    base_img_url: "data/others/plugin/backlog/image/",
                    icon: "s-icon-star-full",
                    icon_color: "#FFFF99",
                    category: "plugin",
                },

                param_view: {},

                param: {

                    "visible": {
                        type: "Select",
                        name: TB.$.s("選択肢のテキスト表示"),
                        select_list: [{
                            name: TB.$.s("表示する"),
                            val: "true"
                        }, {
                            name: TB.$.s("表示しない"),
                            val: "false"
                        }],

                        default_val: "true",
                        vital: false,
                        help: TB.$.s("選択肢のテキストをログに表示するか"),
                    },

                    "size" : {
                        type: "Num",
                        name: "サイズ",
                        unit: "px",
                        help: TB.$.s("フォントのサイズを指定します"),

                        default_val: 26,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 100,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "color" : {
                        type : "Color",
                        name : TB.$.s("色"),
                        default_val : "0xFFFFFF",
                        validate : {
                            required : true
                        }
                    },

                    "bold": {
                        type: "Select",
                        name: TB.$.s("太字"),
                        select_list: [{
                            name: TB.$.s("する"),
                            val: "true"
                        }, {
                            name: TB.$.s("しない"),
                            val: "false"
                        },],

                        default_val: "false",
                        vital: false,
                        help: TB.$.s("太字にするかを指定します"),
                    },
                },
            },
        };

        //=======================================================
        //  #[backlog_button_voice]
        //=======================================================

        cmp["backlog_button_voice"] = {

            "info": {
                "default": true,
                "name": TB.$.s("ログボイス再生ボタン"),
                "help": TB.$.s("バックログでのボイス再生ボタンを設定する"),
                "icon": TB.$.s("s-icon-star-full"),
            },

            "component": {

                name: TB.$.s("ログボイス再生ボタン"),
                component_type: "Simple",  /* Simple Movie Image Text Sound */

                header: function(obj) {
                },

                default_view: {
                    base_img_url: "data/others/plugin/backlog/image/",
                    icon: "s-icon-star-full",
                    icon_color: "#FFFF99",
                    category: "plugin",
                },

                param_view: {},

                param: {
                    "buf" : {
                        type : "Text",
                        name : TB.$.s("ボイス再生で使用しているチャンネル番号（カンマ区切り）"),
                        validate : {
                            required : true,
                        },
                        onChange : function(val, component) {
                            TB.component.changeParam(component, "buf", val);
                        }
                    },

                    "img": {
                        type: "ImageSelect",
                        file_path: "others/plugin/backlog/image/",
                        name: TB.$.s("再生ボタン画像"),
                        help: TB.$.s("再生ボタンの画像を指定します"),
                        vital: true,
                        default_val: "",
                        validate: {
                            required: true
                        }
                    },

                    "img_enter": {
                        type: "ImageSelect",
                        file_path: "others/plugin/backlog/image/",
                        name: TB.$.s("カーソルが重なった時の画像"),
                        help: TB.$.s("カーソルが重なった時の画像を指定します"),
                        vital: true,
                        default_val: "",
                        validate: {
                            required: true
                        }
                    },

                    "img_stop": {
                        type: "ImageSelect",
                        file_path: "others/plugin/backlog/image/",
                        name: TB.$.s("停止ボタン画像"),
                        help: TB.$.s("停止ボタンの画像を指定します"),
                        vital: true,
                        default_val: "",
                        validate: {
                            required: true
                        }
                    },

                    "img_stop_enter": {
                        type: "ImageSelect",
                        file_path: "others/plugin/backlog/image/",
                        name: TB.$.s("停止ボタンにカーソルが重なった時の画像"),
                        help: TB.$.s("停止ボタンにカーソルが重なった時の画像を指定します"),
                        vital: true,
                        default_val: "",
                        validate: {
                            required: true
                        }
                    },

                    "width" : {
                        type: "Num",
                        name: "幅",
                        unit: "px",
                        help: TB.$.s("画像の幅を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "height" : {
                        type: "Num",
                        name: "高さ",
                        unit: "px",
                        help: TB.$.s("画像の高さを指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "margint" : {
                        type: "Num",
                        name: "上余白",
                        unit: "px",
                        help: TB.$.s("上の余白を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "marginb" : {
                        type: "Num",
                        name: "下余白",
                        unit: "px",
                        help: TB.$.s("下の余白を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "marginr" : {
                        type: "Num",
                        name: "右余白",
                        unit: "px",
                        help: TB.$.s("右の余白を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "marginl" : {
                        type: "Num",
                        name: "左余白",
                        unit: "px",
                        help: TB.$.s("左の余白を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 1,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "pos": {
                        type: "Select",
                        name: TB.$.s("ボタン表示位置"),
                        select_list: [{
                            name: TB.$.s("左"),
                            val: "left"
                        }, {
                            name: TB.$.s("右"),
                            val: "right"
                        },],

                        default_val: "left",
                        vital: false,
                        help: TB.$.s("再生ボタンの表示を指定します"),
                    },

                },
            },
        };

        //=======================================================
        //  #[backlog_button_close]
        //=======================================================

        cmp["backlog_button_close"] = {

            "info": {
                "default": true,
                "name": TB.$.s("ログ閉じるボタン"),
                "help": TB.$.s("バックログ画面閉じるボタンの設定をする"),
                "icon": TB.$.s("s-icon-star-full"),
            },

            "component": {

                name: TB.$.s("ログ閉じるボタン"),
                component_type: "Simple",  /* Simple Movie Image Text Sound */

                header: function(obj) {
                },

                default_view: {
                    base_img_url: "data/others/plugin/backlog/image/",
                    icon: "s-icon-star-full",
                    icon_color: "#FFFF99",
                    category: "plugin",
                },

                param_view: {},

                param: {

                    "img": {
                        type: "ImageSelect",
                        file_path: "others/plugin/backlog/image/",
                        name: TB.$.s("ボタン画像"),
                        help: TB.$.s("ボタンの画像を指定します"),
                        vital: true,
                        default_val: "",
                        validate: {
                            required: true
                        }
                    },

                    "img_enter": {
                        type: "ImageSelect",
                        file_path: "others/plugin/backlog/image/",
                        name: TB.$.s("カーソルが重なった時の画像"),
                        help: TB.$.s("カーソルが重なった時の画像を指定します"),
                        vital: true,
                        default_val: "",
                        validate: {
                            required: true
                        }
                    },

                    "width" : {
                        type: "Num",
                        name: "幅",
                        unit: "px",
                        help: TB.$.s("バーの幅を指定します"),

                        default_val: 0,
                        vital: true,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "height" : {
                        type: "Num",
                        name: "高さ",
                        unit: "px",
                        help: TB.$.s("バーの高さを指定します"),

                        default_val: 0,
                        vital: true,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "x": {
                        type: "Num",
                        name: "横位置",
                        unit: "px",
                        help: TB.$.s("画面左端からの位置を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "y": {
                        type: "Num",
                        name: "縦位置",
                        unit: "px",
                        help: TB.$.s("画面上端からの位置を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },
                },
            },
        };


        //=======================================================
        //  #[endbacklog]
        //=======================================================

        cmp["endbacklog"] = {

            "info": {
                "default": true,
                "name": TB.$.s("ログ画面設定終了"),
                "help": TB.$.s("ログ画面の設定を終了する"),
                "icon": TB.$.s("s-icon-star-full"),
            },

            "component": {

                name: TB.$.s("ログ画面設定終了"),
                component_type: "Simple",  /* Simple Movie Image Text Sound */

                header: function(obj) {
                },

                default_view: {
                    base_img_url: "data/others/plugin/backlog/image/",
                    icon: "s-icon-star-full",
                    icon_color: "#FFFF99",
                    category: "plugin",
                },

                param_view: {},

                param: {
                },
            },
        };

        //=======================================================
        //  #[backlog_clear]
        //=======================================================

        cmp["backlog_clear"] = {

            "info": {
                "default": true,
                "name": TB.$.s("ログ消去"),
                "help": TB.$.s("バックログを消去します"),
                "icon": TB.$.s("s-icon-star-full"),
            },

            "component": {

                name: TB.$.s("ログ消去"),
                component_type: "Simple",  /* Simple Movie Image Text Sound */

                header: function(obj) {
                },

                default_view: {
                    base_img_url: "data/others/plugin/backlog/image/",
                    icon: "s-icon-star-full",
                    icon_color: "#FFFF99",
                    category: "plugin",
                },

                param_view: {},

                param: {
                },
            },
        };

        //=======================================================
        //  #[pushlog]
        //=======================================================

        cmp["pushlog"] = {

            "info": {
                "default": true,
                "name": TB.$.s("ログ追加"),
                "help": TB.$.s("バックログを追加します"),
                "icon": TB.$.s("s-icon-star-full"),
            },

            "component": {

                name: TB.$.s("ログ追加"),
                component_type: "Simple",  /* Simple Movie Image Text Sound */

                header: function(obj) {
                },

                default_view: {
                    base_img_url: "data/others/plugin/backlog/image/",
                    icon: "s-icon-star-full",
                    icon_color: "#FFFF99",
                    category: "plugin",
                },

                param_view: {},

                param: {
                    "name" : {
                        type : "Text",
                        name : TB.$.s("キャラ名表示エリア"),
                        validate : {
                            required : true,
                        },
                        onChange : function(val, component) {
                            TB.component.changeParam(component, "name", val);
                        }
                    },
                    "text" : {
                        type : "Text",
                        name : TB.$.s("テキスト表示エリア"),
                        validate : {
                            required : true,
                        },
                        onChange : function(val, component) {
                            TB.component.changeParam(component, "text", val);
                        }
                    },
                },
            },
        };

        //=======================================================
        //  ボイス再生
        //=======================================================

        cmp["tb_voconfig"] = {

			"info":{
				"default":true,
				"name":TB.$.s("ボイス再生設定"),
				"help":TB.$.s("再生するボイスを設定します。"),
				"icon":TB.$.s("s-icon-star-full")
			},

			"component":{

				name : TB.$.s("ボイス再生設定"),

				header : function(obj) {
					return obj.data.pm.name;
				},

				component_type : "Simple",

				default_view : {
					base_sound_url : "data/sound/",
					icon : "s-icon-star-full",
					icon_color : "#FFFF99",
					category : "plugin",
				},

				param_view : {
				},

				param : {

					"name" : {

						type : "Text",
						name : TB.$.s("キャラクター"),
						validate : {
							required : true,
						},

						onChange : function(val, component) {
							TB.component.changeParam(component, "name", val);
						}

					},

					"number" : {
						type : "Num",
						name : TB.$.s("再生開始番号"),
						unit : TB.$.s(""),
						validate : {
							number : true
						},
						spinner : {
							min : 1,
							max : 10000,
							step : 1
						},
						default_val : 1
					},

					"sebuf" : {

						type : "Select",
						name : TB.$.s("チャンネル"),

						select_list : [{
							name : TB.$.s("0"),
							val : "0"
						}, {
							name : TB.$.s("1"),
							val : "1"
						}, {
							name : TB.$.s("2"),
							val : "2"
						}, {
							name : TB.$.s("3"),
							val : "3"
						}, {
							name : TB.$.s("4"),
							val : "4"
						}, {
							name : TB.$.s("5"),
							val : "5"
						}],

						default_val : "0",
						help : TB.$.s("ボイスを再生するチャンネルを指定します"),

					},
				},
			}
		};


		cmp["tb_vostart"] = {

			"info":{
				"default":true,
				"name":TB.$.s("ボイス再生開始"),
				"help":TB.$.s("ボイスの自動再生を開始します。"),
				"icon":TB.$.s("s-icon-star-full")
			},

			"component":{

				name : TB.$.s("ボイス再生開始"),

				header : function(obj) {
					return obj.data.pm.storage;
				},

				component_type : "Simple",

				default_view : {
					base_sound_url : "data/sound/",
					icon : "s-icon-star-full",
					icon_color : "#FFFF99",
					category : "plugin",
				},

				param_view : {
				},

				param : {
				},
			}
		};


		cmp["tb_vostop"] = {

			"info":{
				"default":true,
				"name":TB.$.s("ボイス再生停止"),
				"help":TB.$.s("ボイスの自動再生を停止します。"),
				"icon":TB.$.s("s-icon-star-full")
			},

			"component":{

				name : TB.$.s("ボイス再生停止"),

				header : function(obj) {
					return obj.data.pm.storage;
				},

				component_type : "Simple",

				default_view : {
					base_sound_url : "data/sound/",
					icon : "s-icon-star-full",
					icon_color : "#FFFF99",
					category : "plugin",
				},

				param_view : {
				},

				param : {
				},
			}
		};


        return cmp;
    }

    test(){}
}
