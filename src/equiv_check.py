from equivcheck_code import *
import sys
import subprocess

def equivcheck(output_folder):

    print("\n### Starting Equivalence Check ###\n")

    #执行yosys等价性检查
    print("Running equivalence check for identity and yosys")
    yosys_equiv(output_dir= output_folder)

    # 要执行的bash脚本命令
    bash_script = "./run_symbiyosys.sh"

    # 参数列表
    arguments_yosys = [f"{output_folder}/equiv_identity_yosys/", "syn_identity.v", "syn_yosys.v", "equiv.v"]

    # 将参数列表转换为一个字符串
    arguments_str = ' '.join(arguments_yosys)

    # 使用subprocess运行bash脚本，并传递参数
    subprocess.run(f"{bash_script} {arguments_str}", shell=True)

    print("Finished equivalence check for identity and yosys\n")


    #执行vivado等价性检查
    print("Running equivalence check for identity and vivado")

    vivado_equiv(output_dir= output_folder)

    # 要执行的bash脚本命令
    bash_script = "./run_symbiyosys.sh"

    # 参数列表
    arguments_yosys = [f"{output_folder}/equiv_identity_vivado/", "syn_identity.v", "syn_vivado.v", "equiv.v"]

    # 将参数列表转换为一个字符串
    arguments_str = ' '.join(arguments_yosys)

    # 使用subprocess运行bash脚本，并传递参数
    subprocess.run(f"{bash_script} {arguments_str}", shell=True)

    print("Finished equivalence check for identity and vivado\n\n")
    print("### Finished Equivalence Check###\n")





if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python equiv_check.py output_folder")
    else:
        output_folder = sys.argv[1]
    equivcheck(output_folder = output_folder)


