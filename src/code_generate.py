from openai import OpenAI
import re
from openai_client import client

def generate_verilog_syntax_tree( verilog_syntax_tree=None):
    if verilog_syntax_tree is None:
        # 定义 Verilog 语法树格式
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

    # 定义 messages 列表
    messages = [
        {"role": "user",
         "content": f"Please write a Verilog code and name the top-level module as 'top',"
                    f"The Verilog code should meet that A signal (such as a network or register) can only be driven by one source.  "
                    f"then generate the corresponding syntax tree. The format of the syntax tree should follow:\n{verilog_syntax_tree}."}
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
    code_syntax_tree = f"""
    {completion_message.content}
    """
    print(code_syntax_tree)
    print("==============")
    return code_syntax_tree


def extract_verilog_base_code_and_syntax_tree(input_text):
    code_lines = []
    syntax_tree_lines = []

    # 状态机标记，用于确定当前行是代码还是语法树
    in_code_block = False
    in_syntax_tree_block = False

    for line in input_text.split('\n'):
        # 判断当前行是否属于 Verilog 代码部分
        if line.strip() == '```verilog':
            in_code_block = True
            continue
        elif line.strip() == '```':
            in_code_block = False
            continue

        # 判断当前行是否属于语法树部分
        if line.strip() == '```verilog_syntax_tree' or line.strip() == 'verilog_syntax_tree':
            in_syntax_tree_block = True
            continue
        elif line.strip() == '```':
            in_syntax_tree_block = False
            continue

        # 根据状态将行添加到相应的列表中
        if in_code_block:
            code_lines.append(line)
        elif in_syntax_tree_block:
            syntax_tree_lines.append(line)

    # 返回 Verilog 代码和语法树字符串
    return '\n'.join(code_lines), '\n'.join(syntax_tree_lines)


def generate_supplemental_code(prompt):

    # 定义 messages 列表
    messages = [
        {"role": "user", "content": f"{prompt}"}
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
    supplemental_code = f"""
    {completion_message.content}
    """
    # print(code_syntax_tree)
    return supplemental_code


def extract_supplemental_code(prompt):
    supplemental_code_content = generate_supplemental_code(prompt)
    # 查找testbench代码的开始和结束位置
    start_keyword = '```verilog'
    end_keyword = 'endmodule'
    start_index = supplemental_code_content.find(start_keyword) + len(start_keyword)
    end_index = supplemental_code_content.rfind(end_keyword) + len(end_keyword)
    # 提取testbench代码
    supplemental_code = supplemental_code_content[start_index:end_index]
    # 删除开头的空行
    supplemental_code = supplemental_code.lstrip()

    # print(supplemental_code)
    return supplemental_code
