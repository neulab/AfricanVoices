import sys
import os
import shutil

if __name__ =="__main__":
    map_file = sys.argv[1]
    src_dir = sys.argv[2]
    dest_folder = sys.argv[3]


    lines= open(map_file).readlines()
    data = [line.strip().split("\t") for line in lines]
    for line in data[1:]:
        src_file = line[0]
        shutil.copy2(src_dir+"/"+src_file, dest_folder)


