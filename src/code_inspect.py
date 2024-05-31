import os
import subprocess
from pyverilog.vparser.parser import parse
from pyverilog.vparser.ast import ModuleDef, Input, Output, Wire, Assign, Identifier, IntConst, Partselect

class VerilogChecker(object):
    def __init__(self):
        self.errors = []

    def check(self, ast):
        self.visit(ast)

    def visit(self, node):
        method = 'visit_' + node.__class__.__name__
        visitor = getattr(self, method, self.generic_visit)
        visitor(node)

    def generic_visit(self, node):
        for child in node.children():
            self.visit(child)

    def visit_ModuleDef(self, node):
        for item in node.items:
            if isinstance(item, (Input, Output)):
                if not isinstance(item, Wire):
                    self.errors.append(f"模块输入/输出 {item.name} 必须是网络")

    def visit_Assign(self, node):
        if isinstance(node.left, Identifier):
            self.errors.append(f"不允许对变量 {node.left.name} 进行连续赋值")

    def visit_Partselect(self, node):
        if isinstance(node.var, Identifier) and (node.lb.value > node.rb.value or node.lb.value < 0):
            self.errors.append("选择超出范围的位")

    def visit_Identifier(self, node):
        if node.scope is None:
            self.errors.append(f"使用未声明的变量或网络 {node.name}")

def code_inspect():
    verilog_file = "rtl.v"

    ast, _ = parse([verilog_file])

    checker = VerilogChecker()
    checker.check(ast)

    if checker.errors:
        for error in checker.errors:
            print(error)
    else:
        print("No errors found.")

    print("Code check completed.")


# code_inspect()
