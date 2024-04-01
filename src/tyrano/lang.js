window.tyrano_lang = {
    word: {
        go_title: "是否返回标题？",
        exit_game: "是否关闭窗口并退出游戏？",
        not_saved: "尚未有保存的数据。",
        confirm: "确认",
        confirm_beforeunload: "有未保存的内容。确定要退出游戏吗？",
        tag: "标签",
        not_exists: "不存在。",
        error: "发生错误。请检查脚本。",
        label: "标签",
        label_double: "在同一剧本文件中重复。",
        error_occurred: "发生错误。",
        save_file_violation_1:
            "检测到保存数据的移动。如果不是可信的保存数据，请不要加载。",
        save_file_violation_2: "是否要加载保存数据并启动游戏？",
        save_file_violation_3: "已中止启动。请删除保存数据后再次启动。",
        double_start: "游戏已启动。无法双重启动。",
        reload: "重新加载",
        line: "{ line }行",
        initialized_saved_data: "已初始化保存数据。",
        initializing_saved_data: "是否要初始化保存数据？",
        saved_data_is_corrupted: "保存数据可能已损坏。是否要初始化保存数据？",
        save_does_not_work:
            "在此环境中无法使用保存功能。例如，在本地运行时可能会发生。",
        undefined_tag: "标签「{ name }」不存在。",
        undefined_label: "标签「{ name }」不存在。",
        undefined_character:
            "未定义的字符「{ name }」。请使用[chara_new]定义。",
        undefined_face:
            "字符「{ name }」的表情「{ face }」未定义。请使用[chara_face]定义。",
        undefined_character_parts:
            "字符「{ name }」的差分部分未定义。请使用[chara_layer]定义。",
        undefined_keyframe:
            "未定义的键位动画「{ keyframe }」。请使用[keyframe]定义。",
        undefined_3d_model: "未定义的3D模型「{ name }」。",
        preload_failure_sound:
            "找不到声音文件「{ src }」。是否指定了完整路径？\n\n(正确示例) ./data/bgm/my_bgm.mp3",
        preload_failure_image:
            "找不到图像文件「{ src }」。是否指定了完整路径？\n\n(正确示例) ./data/image/my_image.png",
        preload_failure_video:
            "找不到视频文件「{ src }」。是否指定了完整路径？\n\n(正确示例) ./data/video/my_video.mp4",
        invalid_keyframe: "无效的键位。",
        invalid_keyframe_percentage:
            '键位设置的百分比「{ percentage }」无效。"0%"、"30%"等方式指定。',
        error_in_iscript: "[iscript] 内部发生错误。",
        missing_endif:
            "找不到 [if] 后的 [elsif] [else] [endif]。或者，[if] 内的标签数量过多。",
        missing_endmacro:
            "找不到 [macro] 后的 [endmacro]。或者，[macro] 内的标签数量过多。",
        missing_endignore:
            "找不到 [ignore] 后的 [endignore]。或者，[ignore] 内的数量过多。",
        missing_parameter: "标签「{ tag }」缺少必填参数「{ param }」。",
        if_and_endif_do_not_match: "[if] 和 [endif] 的数量不匹配。",
        unsupported_extensions: "「{ ext }」是不支持的文件格式。",
        undefined_keyconfig:
            '未定义键配置。可能是KeyConfig.js不存在，或者在KeyConfig.js内发生语法错误。请检查是否缺少逗号 "," 或方括号 "]" "}"。',
        compensate_missing_quart:
            '检测到意外的 "]"。可能是参数引号的数量不足，将自动修正以进行解释。\n\n修正前: { before }\n修正后: { after }',
        duplicate_label:
            "标签「{ name }」在同一剧本文件中重复。请确保标签名在同一剧本文件内不重复。",
        file_not_found: "找不到文件。\n\n{ path }",
        patch_not_found: "找不到补丁文件。\n\n{ path }",
        new_patch_found:
            "找到新更新。\n\n版本: { version }\n{ message }\n\n 是否进行更新？",
        apply_web_patch: "正在应用更新。完成后，游戏将自动退出。",
        apply_patch_complete: "已应用更新。请重新启动游戏。",
    },

    novel: {
        file_menu_button_save: "menu_button_save.gif",
        file_menu_button_load: "menu_button_load.gif",
        file_menu_button_message_close: "menu_message_close.gif",
        file_menu_button_skip: "menu_button_skip.gif",
        file_menu_button_title: "menu_button_title.gif",
        file_menu_button_close: "menu_button_close.png",
        file_menu_bg: "menu_bg.jpg",
        file_save_bg: "menu_save_bg.jpg",
        file_load_bg: "menu_load_bg.jpg",
        file_button_menu: "button_menu.png",
        error_occurred: "error occurred",
    },
};
