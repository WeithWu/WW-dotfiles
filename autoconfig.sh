#!/bin/bash
 files=$(ls -a $1 | grep -E '.[^.]+' |grep -v .git)
 # 去掉 ls -a 返回结果中的 ". .. .git"
 for file in `echo $files`; do
     cp "."$1/$file ~/$file # 创建软链接
 done

