#!/bin/bash

# 检查参数个数
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <output_directory> <total_iterations>"
    exit 1
fi

# 获取参数
output_directory=$1
total_iterations=$2

# 检查并创建 temp_save 目录及文件
mkdir -p temp_save
touch temp_save/tem_ast.txt temp_save/temp.v

# 循环执行
for (( i=1; i<=total_iterations; i++ ))
do
    # 创建日志目录
    mkdir -p "${output_directory}/${i}"

    # 执行 run_main.sh 脚本并将输出重定向到对应的日志文件
    bash run_main.sh "${output_directory}" "$i" > "${output_directory}/${i}/log.txt" 2>&1

    # 每三次循环清空 tem_ast.txt 和 temp.v 文件内容
    if (( i % 3 == 0 )); then
        echo "" > temp_save/tem_ast.txt
        echo "" > temp_save/temp.v
    fi
done

echo "All iterations completed."
