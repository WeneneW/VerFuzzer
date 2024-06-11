## 	Abnormal Output from Yosys Synthesis

Version
Yosys 0.39+165

On which OS did this happen?
Linux

Reproduction Steps

Considering the following code (I have tried my best to minimize test cases)
```
module top  (y, clk, wire0);

output wire y;
input wire clk;
input wire [2:0] wire0;

reg reg264 = 1'b0;
reg [2:0] reg274 = 3'b000;

wire [2:0] wire6;
wire wire4;
reg reg278 = 1'b0;

assign y = reg278;
assign wire4 = (8'ha6 > wire0) <= wire0[0];
assign wire6 = {2'b0, wire4};

  always
    @(posedge clk) 
    begin
      reg274 <= wire0[(1'h1):(1'h1)];
      if ({$unsigned((wire0 >> wire6))})
        begin
        end
      else
        begin
          reg278 = $unsigned(({reg274} > $unsigned(reg264)));
        end
    end
  
endmodule
```
When given the testbench as follows:
```
`include "rtl.v"

module testbench;
  wire [(1'h0):(1'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg [(1'h1):(1'h0)] wire3;
  reg [(2'h2):(1'h0)] wire2;
  reg [(2'h2):(1'h0)] wire1;
  reg [(2'h2):(1'h0)] wire0;
  
  top #() top1 (.y(y), .clk(clk), .wire3(wire3), .wire2(wire2), .wire1(wire1), .wire0(wire0));
  
  initial begin
    clk = (1'h0);
    {wire3, wire2, wire1, wire0} = (1'h0);
    #10 {wire3, wire2, wire1, wire0} = (254'h3ecf65db8c1905e863c6aa92edab0d5b1b358ee783776e29672e5e8bb9eb6477);
    #10 {wire3, wire2, wire1, wire0} = (254'h2884a51cb1d03e457c6242b3f96e708eb45f3e680a6197fc8d2c24a5b27419a9);
    #10 {wire3, wire2, wire1, wire0} = (256'he640c8cc70437d047d402395d6091fa950ae83373dfb48e43c45c117f598eeac);
    #10 {wire3, wire2, wire1, wire0} = (250'h2c30f1b546c5f337b5d47eecf74c613caca1c73dcd91051dea5ece33ce609a8);
    #10 {wire3, wire2, wire1, wire0} = (256'hf67860cc9450dc05d9aee79bc5164f69493e9d63a941570a939237b2c52031a2);
    #10 $finish;
  end

  always
    #5 clk = (~clk);

  always @(posedge clk)
    $strobe("Time: %0t, y: %b", $time, y);
endmodule

```
![images](./Inconsistent.png)

Consistent output before and after synthesis
I also conducted the above test using Vivado and it did not encounter this issue
