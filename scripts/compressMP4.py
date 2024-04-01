import os
import subprocess
from tqdm import tqdm


def find_mp4_files(directory):
    mp4_files = []
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(".mp4"):
                mp4_files.append(os.path.join(root, file))
    return mp4_files


def confirm_conversion(files):
    print("以下MP4文件将被压缩:")
    for file in files:
        print(file)
    confirm = input("确认进行压缩吗？(y/n): ")
    return confirm.lower() == "y"


def compress_video(input_file, output_file):
    # 构造ffmpeg命令
    # 这里假设我们只是简单地将视频转码为H.264编码的MP4
    # 你可以根据需要调整命令
    command = [
        "ffmpeg",
        "-i",
        input_file,
        "-c:v",
        "libx264",
        "-preset",
        "fast",
        "-c:a",
        "copy",
        output_file,
    ]
    subprocess.run(command)


def main():
    directory = input("请输入包含MP4文件的目录路径: ")
    mp4_files = find_mp4_files(directory)

    if not mp4_files:
        print("未找到MP4文件。")
        return

    if not confirm_conversion(mp4_files):
        print("取消压缩。")
        return

    for file in tqdm(mp4_files, desc="压缩进度"):
        backup_file = file + ".bak"
        os.rename(file, backup_file)
        compress_video(backup_file, file)


if __name__ == "__main__":
    main()
