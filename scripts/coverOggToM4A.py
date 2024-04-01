import os
import subprocess
from tqdm import tqdm


# 检查ffmpeg是否安装
def check_ffmpeg_installed():
    try:
        subprocess.run(
            ["ffmpeg", "-version"], stdout=subprocess.PIPE, stderr=subprocess.PIPE
        )
        return True
    except FileNotFoundError:
        return False


# 搜索所有的ogg文件
def find_ogg_files(directory):
    ogg_files = []
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(".ogg"):
                ogg_files.append(os.path.join(root, file))
    return ogg_files


# 获取转换后文件名
def get_m4a_filename(ogg_file):
    return f"{os.path.splitext(ogg_file)[0]}.m4a"


# 转换ogg文件为m4a
def convert_ogg_to_m4a(ogg_file):
    m4a_file = get_m4a_filename(ogg_file)
    subprocess.run(
        [
            "ffmpeg",
            "-i",
            ogg_file,
            "-c:a",
            "aac",
            "-b:a",
            "128k",
            m4a_file,
            "-y",
        ],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )
    return m4a_file


# 主函数
def main():
    if not check_ffmpeg_installed():
        print("Error: ffmpeg is not installed or not found in the system PATH.")
        return

    directory = input("请输入包含OGG文件的目录路径: ")
    ogg_files = find_ogg_files(directory)

    if not ogg_files:
        print("没有找到OGG文件。")
        return

    # 显示所有找到的ogg文件
    print("找到以下OGG文件：")
    for file in ogg_files:
        print(file, "->", get_m4a_filename(file))

    # 等待用户确认
    confirm = input("是否开始转换这些文件为m4a？(yes/no): ")
    if confirm.lower() != "yes":
        print("转换取消。")
        return

    # 开始转换并显示进度条
    print("开始转换OGG文件为m4a...")
    for ogg_file in tqdm(ogg_files, unit="file"):
        convert_ogg_to_m4a(ogg_file)

    print("所有文件转换完成。")


if __name__ == "__main__":
    main()
