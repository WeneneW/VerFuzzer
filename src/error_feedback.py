import os
import sys
from openai_client import client


def feedback(output_folder, str, number):
    # 构建文件路径
    if str == 'yosys':
        file_path = os.path.join(output_folder, 'identity', f'yosys_errors_{number}.log')
    elif str == 'vivado':
        file_path = os.path.join(output_folder, 'identity', f'vivado_errors{number}.log')

    # 检查文件是否存在
    if not os.path.exists(file_path):
        print(f"文件 {file_path} 不存在.")
        return

    # 打开并读取文件内容
    with open(file_path, 'r') as file:
        error_content = file.read()

    # print(error_content)
    # print(" ")

    file_verilog = os.path.join(output_folder, 'identity', 'rtl.v')
    with open(file_verilog, 'r') as file:
        verilog_code = file.read()

    error_feedback_prompt = "The above is the Verilog code and its error report. " \
             "Please modify the code according to the error report."
    # 将两个文件的内容添加到提示中
    prompt = f"{verilog_code}\n\n" + f"{error_content}\n\n" +  error_feedback_prompt

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
    modified_code_content = f"""
    {completion_message.content}
    """
    # print(testbench_code_content)
    return modified_code_content


def extract_modified_code(file_path, syn_str, num):
    modified_code_content = feedback(file_path, syn_str, num)
    # 查找testbench代码的开始和结束位置
    start_keyword = '```verilog'
    end_keyword = 'endmodule'
    start_index = modified_code_content.find(start_keyword) + len(start_keyword)
    end_index = modified_code_content.find(end_keyword) + len(end_keyword)
    # 提取testbench代码
    modified_code = modified_code_content[start_index:end_index]
    # 删除开头的空行
    modified_code = modified_code.lstrip()
    # 在开头加入 `include "syn_{}.v"

    return modified_code

if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage: python error_feednack.py output_folder syn_str num")
    else:
        output_folder = sys.argv[1]
        syn_str = sys.argv[2]
        num = sys.argv[3]
        modified_code = extract_modified_code(f"{output_folder}", f"{syn_str}", num)
        print("modified_code: \n\n")
        print(modified_code)
        print(" ")

        file_path = os.path.join(output_folder, 'identity', 'rtl.v')
        with open(file_path, 'w') as f:
            f.write(modified_code)

