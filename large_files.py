import os
import argparse

def find_large_files(directory, size_limit=100*1024*1024):  # size_limit in bytes
    """
    Recursively searches for and prints out files larger than size_limit in the given directory.

    :param directory: The directory to search in.
    :param size_limit: The file size limit in bytes.
    """
    for root, dirs, files in os.walk(directory):
        for file in files:
            file_path = os.path.join(root, file)
            if os.path.getsize(file_path) > size_limit:
                print(f"Large file: {file_path} ({os.path.getsize(file_path)} bytes)")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Find large files in a directory.')
    parser.add_argument('--directory', type=str, help='The directory to search in.')
    args = parser.parse_args()

    find_large_files(args.directory)
