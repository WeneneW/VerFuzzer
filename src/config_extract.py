import toml
from openai_client import client


def read_config(file_path):
    try:
        with open(file_path, "r") as file:
            config = toml.load(file)
            return config
    except FileNotFoundError:
        print(f"Error: Config file '{file_path}' not found.")
        return None


def config_preinput(file_path):
    config = read_config(file_path)

    if config is not None:
        # 将配置转换为 TOML 格式的字符串
        config_str = toml.dumps(config)

        # 构建提示前缀
        pre_prompt = f"The following is <Config files> which is the construction prompt prefix for the Verilog code, please remember\n{config_str}"

        # 定义 messages 列表
        messages = [
            {"role": "system",
             "content": "You are a Verilog programmer, adept at writing Verilog code and explaining complex programming concepts in innovative ways."},
            {"role": "user", "content": f"{pre_prompt}"}
        ]

        # 生成对话完成
        completion = client.chat.completions.create(
            # model="gpt-3.5-turbo",
            # model="gpt-4o-vision-preview",
            model="gpt-4o",
            messages=messages,
            stream = True  # 启用流传输模式
        )

        # # 获取消息
        # completion_message = completion.choices[0].message
        #
        # # 构建输出消息
        # return_content = f"""
        #     {completion_message.content}
