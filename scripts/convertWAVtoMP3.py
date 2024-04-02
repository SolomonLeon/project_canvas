import os
import subprocess
from tqdm import tqdm


def find_wav_files(directory):
    wav_files = []
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(".wav"):
                wav_files.append(os.path.join(root, file))
    return wav_files


def confirm_conversion(files):
    print("以下wav文件将被压缩:")
    for file in files:
        print(file)
    confirm = input("确认进行压缩吗？(y/n): ")
    return confirm.lower() == "y"


def compress_video(input_file, output_file):
    # 构造ffmpeg命令
    # 将wav文件转为128kbps的mp3文件
    command = [
        "ffmpeg",
        "-i",
        input_file,
        "-b:a",
        "128k",
        output_file,
        "-y",  # 覆盖输出文件
    ]
    subprocess.run(
        command,
        # stdout=subprocess.PIPE,
        # stderr=subprocess.PIPE,
    )


def main():
    directory = input("请输入包含wav文件的目录路径: ")
    wav_files = find_wav_files(directory)

    if not wav_files:
        print("未找到wav文件。")
        return

    if not confirm_conversion(wav_files):
        print("取消压缩。")
        return

    for file in tqdm(wav_files, desc="压缩进度"):
        backup_file = file + ".bak"
        try:
            os.rename(file, backup_file)
        except OSError:
            print(f"无法重命名文件: {file}")
            continue
        compress_video(backup_file, f"{os.path.splitext(file)[0]}.mp3")


if __name__ == "__main__":
    main()
