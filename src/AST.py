from openai import OpenAI
import re
import os
import sys
from openai_client import client


def generate_corre_AST(output_folder):
    verilog_syntax_tree = """
           verilog_syntax_tree
                   Module
                   |
                   |-- Identifier: 
                   |
                   |-- Port List
                   |   |
                   |   |-- Input: 
                   |   |-- Input: 
                   |   |-- Output:
                   |
                   |-- Always Block
                       |
                       |-- Sensitivity List
                       |   |
                       |   |-- Posedge: 
                       |   |-- Posedge: 
                       |
                       |-- If Statement
                           |
                           |-- Condition: 
                           |
                           |-- True Statement:
                           |
                           |-- False Statement:
                   ...
           end
                   """
    file_path = os.path.join(output_folder, 'identity', 'rtl.v')

    with open(file_path, 'r') as f:
        code_cotent = f.read()

    # 定义 messages 列表
    messages = [
        {"role": "user",
         "content": f"The format of the Verilog syntax tree is as follows:\n {verilog_syntax_tree} ,"
                    f"Please generate the corresponding syntax tree for this verilog code:\n {code_cotent} \n based on the format of the syntax tree.  "}
    ]

    # 生成对话完成
    completion = client.chat.completions.create(
        # model="gpt-3.5-turbo",
        # model="gpt-4o-vision-preview",
        model="gpt-4o",
        messages=messages
    )

    # 获取消息
    completion_message = completion.choices[0].message

    # 构建输出消息
    syntax_tree = f"""
    {completion_message.content}
    """
    print(syntax_tree)




def tree_extract(output_folder):
    # input_text = generate_corre_AST(output_folder)
    input_text = """
           verilog_syntax_tree
                   Module
                   |
                   |-- Identifier: 
                   |
                   |-- Port List
                   |   |
                   |   |-- Input: 
                   |   |-- Input: 
                   |   |-- Output:
                   |
                   |-- Always Block
                       |
                       |-- Sensitivity List
                       |   |
                       |   |-- Posedge: 
                       |   |-- Posedge: 
                       |
                       |-- If Statement
                           |
                           |-- Condition: 
                           |
                           |-- True Statement:
                           |
                           |-- False Statement:
                   ...
           end
                   """
    syntax_tree_lines = []

    # 状态机标记，用于确定当前行是代码还是语法树

    in_syntax_tree_block = False

    for line in input_text.split('\n'):

        # 判断当前行是否属于语法树部分
        if line.strip() == '```verilog_syntax_tree' or line.strip() == 'verilog_syntax_tree':
            in_syntax_tree_block = True
            continue
        elif line.strip() == '```':
            in_syntax_tree_block = False
            continue

        # 根据状态将行添加到相应的列表中

        elif in_syntax_tree_block:
            syntax_tree_lines.append(line)

    # 返回 Verilog 代码和语法树字符串
    return '\n'.join(syntax_tree_lines)


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python AST.py output_folder")
    else:
        output_folder = sys.argv[1]
    tree = tree_extract(output_folder = output_folder)

    file_path_tree = os.path.join(output_folder, 'identity', 'ast.txt')
    with open(file_path_tree, 'w') as f:
        f.write('    verilog_syntax_tree:\n')  # 先写入 'verilog_syntax_tree' 并换行
        f.write(tree + '\n')  # 写入 tree 并换行
        f.write('end')  # 最后写入 'end'





