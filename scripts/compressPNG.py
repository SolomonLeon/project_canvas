import os
import shutil
from concurrent.futures import ThreadPoolExecutor, as_completed
from tqdm import tqdm
import tinify

# 替换为你的Tinify API密钥
tinify.key = os.environ.get("TINIFY_API_KEY")


def find_png_files(path):
    """找到指定路径下所有的PNG文件，包括子文件夹内的PNG文件"""
    files = []
    for root, _, filenames in os.walk(path):
        for filename in filenames:
            if filename.lower().endswith(".png"):
                files.append(os.path.join(root, filename))
    return files


def confirm_action(message):
    """请求用户确认操作"""
    while True:
        confirm = input(f"{message} (y/n): ").lower()
        if confirm == "y":
            return True
        elif confirm == "n":
            return False
        else:
            print("请输入'y'或'n'进行确认。")


def compress_png_file(file):
    """压缩单个PNG文件"""
    try:
        # 重命名源文件
        bak_file = f"{file}.bak.png"
        shutil.move(file, bak_file)

        # 压缩文件
        source = tinify.from_file(bak_file)
        source.to_file(file)
        return file
    except Exception as e:
        print(f"压缩文件 {file} 时出错: {e}")
        return None


def compress_png_files(png_files):
    """使用多线程压缩PNG文件"""
    with ThreadPoolExecutor(max_workers=5) as executor:  # 使用5个工作线程
        futures = [executor.submit(compress_png_file, file) for file in png_files]
        for future in tqdm(
            as_completed(futures), total=len(futures), desc="压缩进度", unit="file"
        ):
            future.result()


def main():
    path = input("请输入要压缩PNG文件的路径: ")
    png_files = find_png_files(path)

    if not png_files:
        print("没有找到PNG文件。")
        return

    # 显示找到的所有PNG文件
    print("找到以下PNG文件：")
    for file in png_files:
        print(file)

    # 请求用户确认
    if not confirm_action("是否开始压缩这些文件？"):
        print("操作已取消。")
        return

    # 压缩PNG文件
    compress_png_files(png_files)
    print("所有文件已压缩完成。")


if __name__ == "__main__":
    main()
