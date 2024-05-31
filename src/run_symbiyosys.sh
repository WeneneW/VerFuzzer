#!/bin/bash

# 检查参数数量
if [ "$#" -ne 4 ]; then
    echo "Usage: $0 <work_dir> <file1.v> <file2.v> <file3.v>"
    exit 1
fi

# 切换到工作目录
cd $1

# 创建 .sby 文件
cat << EOF > proof.sby
[options]
multiclock on
mode prove

[engines]
abc pdr

[script]
read -formal $2
read -formal $3
read -formal $4
read -formal cells_xilinx_7.v
prep -top equiv

[files]
$2
$3
$4
../../../data/cells_xilinx_7.v
EOF

# 运行 SymbiYosys 并将输出写入日志文件
sby -f proof.sby > sby.log 2>&1
# 检查命令退出状态码
if [ $? -eq 0 ]; then
    echo "Equiv Success"
else
    echo "Equiv Failed"
fi
