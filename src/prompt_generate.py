import random
from openai_client import client

def select_operation(probabilities):
    """
    probabilities: A dictionary containing the probabilities for each operation.
                   Example: {"module_declaration": 0.7, "enrich_module_behavior": 0.3}
    """
    # 获取所有操作及其对应的概率
    operations = list(probabilities.keys())
    probs = list(probabilities.values())

    # 根据概率分布选择操作
    selected_operation = random.choices(operations, weights=probs, k=1)[0]

    return selected_operation
# 操作选择函数
# probabilities = {"module_declaration": 0.7, "enrich_module_behavior": 0.3}
# selected_op = select_operation(probabilities)
# print(selected_op)





def generate_rule():
    rule_map = {
      "rule_1": {"description": "Add declarations for wires and registers.", "probability": 0.1},
      "rule_2": {"description": "Add arithmetic and other operations.", "probability": 0.2},
      "rule_3": {"description": "Add bitwise operations.", "probability": 0.15},
      "rule_4": {"description": "Add shift operations.", "probability": 0.1},
      "rule_5": {"description": "Add arrays.", "probability": 0.05},
      "rule_6": {"description": "Add conditional statements (if-else).", "probability": 0.1},
      "rule_7": {"description": "Add loop statements.", "probability": 0.1},
      "rule_8": {"description": "Add case statements.", "probability": 0},
      "rule_9": {"description": "Add begin-end blocks.", "probability": 0.05},
      "rule_10": {"description": "Add parameter declarations.", "probability": 0.05},
      "rule_11": {"description": "Add generate blocks.", "probability": 0.05}
    }
    # 计算概率总和
    total_probability = sum(data["probability"] for data in rule_map.values())

    # 根据总概率归一化每个操作的概率
    for data in rule_map.values():
        data["probability"] /= total_probability

    # 概率选择规则
    selected_rules = []
    num_rules = random.randint(1, len(rule_map))  # 随机选择 1 到规则总数之间的数量
    while len(selected_rules) < num_rules:
        random_value = random.random()
        cumulative_probability = 0
        for op, data in rule_map.items():
            cumulative_probability += data["probability"]
            if random_value <= cumulative_probability:
                selected_rules.append(data["description"])
                break

    return selected_rules



def extend_code_rule(operation):
    if operation == "module_declaration":
        # 生成模块的子模块，并将其实例化
        prompt_operation = "Generate submodule for the module and instantiate it"

    elif operation == "enrich_module_behavior":
        # 在当前模块的基础上，添加其他行为
        prompt_operation = "Add additional behavior to the current module"

    else:
        raise ValueError("Invalid operation")
    rule_description = generate_rule()
    rule_description = "  ".join(rule_description)
    # print(f"Generate Rule: {rule_description}")
    return prompt_operation + "  Reference practices:    " + rule_description





# 示例用法
# probabilities = {"module_declaration": 0.7, "enrich_module_behavior": 0.3}
# selected_operation = select_operation(probabilities)
# print(selected_operation)
# # generated_rule = generate_rule()
# extend_code_description=extend_code_rule(selected_operation)
# print("Selected Operation:", selected_operation)
# print("extend_code_description:", extend_code_description)

def generate_supplementary_code_prompt():

    prompt = "Please generate a supplementary code of the input <Verilog Basic Code> by <expanded code rule> and utilizing the <Verilog Basic Syntax Tree>, " \
             "under the probability constraints in <Config files>." \
             "Additionally, ensure that the top-level module is named \"top\"and that the Verilog code generated complies with the Verilog-2005 version."

    return prompt

# # 示例用法
# prompt = generate_supplementary_code_prompt()
# print(prompt)



def bug_prompt_preinput():

    bug_prompt_preinput = ""
    # 定义 messages 列表
    messages = [
        {"role": "user", "content": f"The following are common verilog error messages, please remember not to make them again: \n {bug_prompt_preinput}"}
    ]

    # 生成对话完成
    completion = client.chat.completions.create(
        # model="gpt-3.5-turbo",
        # model="gpt-4o-vision-preview",
        model="gpt-4o",
        messages=messages
    )

    # 获取消息
    # completion_message = completion.choices[0].message

    # # 构建输出消息
    # return_content = f"""
    #     {completion_message.content}
