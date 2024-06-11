# Adding Signal Output Causes Abnormal Simulation Results in Icarus Verilog

In the following two code snippets, y is the output wire.

```
assign y = {
            forvar19
           };
```

```
assign y = {
            wire7,
            forvar19
           };
```

The original design of the two statements generated `syn_vivado.v` after synthesis in Vivado, and I simulated the synthesized code. 

Theoretically, if all other conditions remain the same, the simulation output in the `forvar19` section should be consistent, meaning that the lower bits of `y` should be the same for the `forvar19` value in both cases.

However, when I simulated using iverilog, with all other conditions being equal, the two produced different simulation outputs.
 (both `wire7` and `forvar19` I constructed are 2-bit).

![381f76d24632fb2f668830e87b70f851](https://github.com/steveicarus/iverilog/assets/168843330/92d566c4-1d21-4d83-9b85-dd0821fe1a45)
The left side only includes the `forvar19` output as shown (highlighted in yellow for the `forvar19` output section); 
the right side includes the output with the `wire7` signal as shown (highlighted in yellow for the `forvar19` output section). 

Inconsistencies appeared on lines 6, 7, and 14. 

Therefore, I used Vivado's simulation tool to simulate the synthesized output of the two statements, and the lower bits of the `forvar19` output were consistent.

![583f0e2024c1d3fcca1791c26356941b](https://github.com/steveicarus/iverilog/assets/168843330/f378a88d-f243-41df-88c7-c0df34b57401)
The left side only includes the `forvar19` output as shown (highlighted in yellow for the `forvar19` output section); 
the right side includes the output with the `wire7` signal as shown (highlighted in yellow for the `forvar19` output section). 

**Comparing the outputs of the two simulation tools mentioned above, I think that the issue might be caused by adding signal output, leading to abnormal simulation results in iverilog.** 

My original designs are as follows:

- Output including only `forvar19`:

```
module top  (y, clk, wire3, wire2, wire1, wire0);
  output wire [3:0] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire signed [(3'h4):(1'h0)] wire3;
  input wire [(3'h6):(1'h0)] wire2;
  input wire signed [(2'h2):(1'h0)] wire1;
  input wire signed [(2'h2):(1'h0)] wire0;


  wire signed [1:0] wire7;
  wire signed [(3'h4):(1'h0)] wire5;
  wire [(2'h2):(1'h0)] wire4;
  reg [(3'h4):(1'h0)] reg13 = (1'h0);

  reg signed [1:0] forvar19 = (1'h0);
  reg signed [(2'h2):(1'h0)] forvar15 = (1'h0);

  assign y = {   
               forvar19
                };
  assign wire4 = wire0;
  assign wire5 = ((((8'ha6) ? wire2 : wire0) ?
                     ((8'ha2) ? wire1 : wire1) : (8'ha5)) - wire4);


  assign wire7 = $signed((wire1[(2'h2):(2'h2)] ?
                     $unsigned(wire3) : $unsigned(wire5)));

  always
    @(posedge clk) begin
      if (wire7[(1'h1):(1'h1)])
        begin
          if ((-((forvar15 ? reg13 : wire5) ?
              wire4[(1'h0):(1'h0)] : ((8'ha5) ? (8'h9e) : forvar15))))
            begin
              for (forvar19 = (1'h0); (forvar19 < (1'h0)); forvar19 = (forvar19 + (1'h1)))
                begin

                end
            end
          else
            begin

                  for (forvar19 = (1'h0); (forvar19 < (1'h1)); forvar19 = (forvar19 + (1'h1)))
                    begin

                    end

            end
        end

    end
endmodule
```

- Vivado synthesized `syn_vivado` code is as follows:

```
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue May 21 16:27:24 2024
// Host        : zw-virtual-machine running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force syn_vivado.v
// Design      : top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module top
   (y,
    clk,
    wire3,
    wire2,
    wire1,
    wire0);
  output [3:0]y;
  input [0:0]clk;
  input [4:0]wire3;
  input [6:0]wire2;
  input [2:0]wire1;
  input [2:0]wire0;

  wire \<const0> ;
  wire GND_2;
  wire VCC_1;
  wire forvar19__0_i_1_n_0;
  wire forvar19__0_i_3_n_0;
  wire forvar19__0_i_4_n_0;
  wire forvar19__0_i_5_n_0;
  wire forvar19__0_i_6_n_0;
  wire [2:0]wire0;
  wire [2:0]wire0_IBUF;
  wire [2:0]wire1;
  wire [2:0]wire1_IBUF;
  wire [6:0]wire2;
  wire [6:0]wire2_IBUF;
  wire [4:0]wire3;
  wire [1:1]wire3_IBUF;
  wire [1:1]wire7;
  wire [3:0]y;
  wire [0:0]y_OBUF;

  GND GND
       (.G(\<const0> ));
  GND GND_1
       (.G(GND_2));
  VCC VCC
       (.P(VCC_1));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    forvar19__0
       (.CLR(GND_2),
        .D(forvar19__0_i_1_n_0),
        .G(wire7),
        .GE(VCC_1),
        .Q(y_OBUF));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    forvar19__0_i_1
       (.I0(wire0_IBUF[0]),
        .I1(forvar19__0_i_3_n_0),
        .I2(wire2_IBUF[0]),
        .I3(wire2_IBUF[5]),
        .I4(wire2_IBUF[6]),
        .I5(forvar19__0_i_4_n_0),
        .O(forvar19__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF666A0000666A)) 
    forvar19__0_i_2
       (.I0(wire0_IBUF[1]),
        .I1(forvar19__0_i_5_n_0),
        .I2(forvar19__0_i_3_n_0),
        .I3(forvar19__0_i_6_n_0),
        .I4(wire1_IBUF[2]),
        .I5(wire3_IBUF),
        .O(wire7));
  LUT4 #(
    .INIT(16'hFFFE)) 
    forvar19__0_i_3
       (.I0(wire2_IBUF[2]),
        .I1(wire2_IBUF[1]),
        .I2(wire2_IBUF[4]),
        .I3(wire2_IBUF[3]),
        .O(forvar19__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000BEFFFFBE)) 
    forvar19__0_i_4
       (.I0(wire1_IBUF[0]),
        .I1(wire0_IBUF[2]),
        .I2(wire1_IBUF[2]),
        .I3(wire1_IBUF[1]),
        .I4(wire0_IBUF[1]),
        .I5(wire0_IBUF[0]),
        .O(forvar19__0_i_4_n_0));
  LUT3 #(
    .INIT(8'hD2)) 
    forvar19__0_i_5
       (.I0(wire0_IBUF[0]),
        .I1(wire1_IBUF[0]),
        .I2(wire1_IBUF[1]),
        .O(forvar19__0_i_5_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    forvar19__0_i_6
       (.I0(wire2_IBUF[6]),
        .I1(wire2_IBUF[5]),
        .I2(wire2_IBUF[0]),
        .O(forvar19__0_i_6_n_0));
  IBUF \wire0_IBUF[0]_inst 
       (.I(wire0[0]),
        .O(wire0_IBUF[0]));
  IBUF \wire0_IBUF[1]_inst 
       (.I(wire0[1]),
        .O(wire0_IBUF[1]));
  IBUF \wire0_IBUF[2]_inst 
       (.I(wire0[2]),
        .O(wire0_IBUF[2]));
  IBUF \wire1_IBUF[0]_inst 
       (.I(wire1[0]),
        .O(wire1_IBUF[0]));
  IBUF \wire1_IBUF[1]_inst 
       (.I(wire1[1]),
        .O(wire1_IBUF[1]));
  IBUF \wire1_IBUF[2]_inst 
       (.I(wire1[2]),
        .O(wire1_IBUF[2]));
  IBUF \wire2_IBUF[0]_inst 
       (.I(wire2[0]),
        .O(wire2_IBUF[0]));
  IBUF \wire2_IBUF[1]_inst 
       (.I(wire2[1]),
        .O(wire2_IBUF[1]));
  IBUF \wire2_IBUF[2]_inst 
       (.I(wire2[2]),
        .O(wire2_IBUF[2]));
  IBUF \wire2_IBUF[3]_inst 
       (.I(wire2[3]),
        .O(wire2_IBUF[3]));
  IBUF \wire2_IBUF[4]_inst 
       (.I(wire2[4]),
        .O(wire2_IBUF[4]));
  IBUF \wire2_IBUF[5]_inst 
       (.I(wire2[5]),
        .O(wire2_IBUF[5]));
  IBUF \wire2_IBUF[6]_inst 
       (.I(wire2[6]),
        .O(wire2_IBUF[6]));
  IBUF \wire3_IBUF[1]_inst 
       (.I(wire3[1]),
        .O(wire3_IBUF));
  OBUF \y_OBUF[0]_inst 
       (.I(y_OBUF),
        .O(y[0]));
  OBUF \y_OBUF[1]_inst 
       (.I(\<const0> ),
        .O(y[1]));
  OBUF \y_OBUF[2]_inst 
       (.I(\<const0> ),
        .O(y[2]));
  OBUF \y_OBUF[3]_inst 
       (.I(\<const0> ),
        .O(y[3]));
endmodule
```

- Output with `wire7` signal:

```
module top  (y, clk, wire3, wire2, wire1, wire0);
  output wire [3:0] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire signed [(3'h4):(1'h0)] wire3;
  input wire [(3'h6):(1'h0)] wire2;
  input wire signed [(2'h2):(1'h0)] wire1;
  input wire signed [(2'h2):(1'h0)] wire0;


  wire signed [1:0] wire7;
  wire signed [(3'h4):(1'h0)] wire5;
  wire [(2'h2):(1'h0)] wire4;
  reg [(3'h4):(1'h0)] reg13 = (1'h0);

  reg signed [1:0] forvar19 = (1'h0);
  reg signed [(2'h2):(1'h0)] forvar15 = (1'h0);

  assign y = {
                 wire7,
                 forvar19
                };
  assign wire4 = wire0;
  assign wire5 = ((((8'ha6) ? wire2 : wire0) ?
                     ((8'ha2) ? wire1 : wire1) : (8'ha5)) - wire4);


  assign wire7 = $signed((wire1[(2'h2):(2'h2)] ?
                     $unsigned(wire3) : $unsigned(wire5)));

  always
    @(posedge clk) begin
      if (wire7[(1'h1):(1'h1)])
        begin
          if ((-((forvar15 ? reg13 : wire5) ?
              wire4[(1'h0):(1'h0)] : ((8'ha5) ? (8'h9e) : forvar15))))
            begin
              for (forvar19 = (1'h0); (forvar19 < (1'h0)); forvar19 = (forvar19 + (1'h1)))
                begin
                end
            end
          else
            begin

                  for (forvar19 = (1'h0); (forvar19 < (1'h1)); forvar19 = (forvar19 + (1'h1)))
                    begin
                    end
            end
        end
    end
endmodule
```

- Vivado synthesized `syn_vivado` code is as follows:

```
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue May 21 16:24:46 2024
// Host        : zw-virtual-machine running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force syn_vivado.v
// Design      : top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module top
   (y,
    clk,
    wire3,
    wire2,
    wire1,
    wire0);
  output [3:0]y;
  input [0:0]clk;
  input [4:0]wire3;
  input [6:0]wire2;
  input [2:0]wire1;
  input [2:0]wire0;

  wire \<const0> ;
  wire GND_2;
  wire VCC_1;
  wire forvar19__0_i_1_n_0;
  wire forvar19__0_i_2_n_0;
  wire forvar19__0_i_3_n_0;
  wire [2:0]wire0;
  wire [2:0]wire0_IBUF;
  wire [2:0]wire1;
  wire [2:0]wire1_IBUF;
  wire [6:0]wire2;
  wire [6:0]wire2_IBUF;
  wire [4:0]wire3;
  wire [1:0]wire3_IBUF;
  wire [3:0]y;
  wire [3:0]y_OBUF;
  wire \y_OBUF[3]_inst_i_2_n_0 ;
  wire \y_OBUF[3]_inst_i_3_n_0 ;
  wire \y_OBUF[3]_inst_i_4_n_0 ;

  GND GND
       (.G(\<const0> ));
  GND GND_1
       (.G(GND_2));
  VCC VCC
       (.P(VCC_1));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    forvar19__0
       (.CLR(GND_2),
        .D(forvar19__0_i_1_n_0),
        .G(y_OBUF[3]),
        .GE(VCC_1),
        .Q(y_OBUF[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00F1)) 
    forvar19__0_i_1
       (.I0(\y_OBUF[3]_inst_i_3_n_0 ),
        .I1(\y_OBUF[3]_inst_i_2_n_0 ),
        .I2(wire1_IBUF[0]),
        .I3(wire0_IBUF[0]),
        .I4(forvar19__0_i_2_n_0),
        .I5(forvar19__0_i_3_n_0),
        .O(forvar19__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h14)) 
    forvar19__0_i_2
       (.I0(wire0_IBUF[0]),
        .I1(wire0_IBUF[2]),
        .I2(wire1_IBUF[2]),
        .O(forvar19__0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h14)) 
    forvar19__0_i_3
       (.I0(wire0_IBUF[0]),
        .I1(wire0_IBUF[1]),
        .I2(wire1_IBUF[1]),
        .O(forvar19__0_i_3_n_0));
  IBUF \wire0_IBUF[0]_inst 
       (.I(wire0[0]),
        .O(wire0_IBUF[0]));
  IBUF \wire0_IBUF[1]_inst 
       (.I(wire0[1]),
        .O(wire0_IBUF[1]));
  IBUF \wire0_IBUF[2]_inst 
       (.I(wire0[2]),
        .O(wire0_IBUF[2]));
  IBUF \wire1_IBUF[0]_inst 
       (.I(wire1[0]),
        .O(wire1_IBUF[0]));
  IBUF \wire1_IBUF[1]_inst 
       (.I(wire1[1]),
        .O(wire1_IBUF[1]));
  IBUF \wire1_IBUF[2]_inst 
       (.I(wire1[2]),
        .O(wire1_IBUF[2]));
  IBUF \wire2_IBUF[0]_inst 
       (.I(wire2[0]),
        .O(wire2_IBUF[0]));
  IBUF \wire2_IBUF[1]_inst 
       (.I(wire2[1]),
        .O(wire2_IBUF[1]));
  IBUF \wire2_IBUF[2]_inst 
       (.I(wire2[2]),
        .O(wire2_IBUF[2]));
  IBUF \wire2_IBUF[3]_inst 
       (.I(wire2[3]),
        .O(wire2_IBUF[3]));
  IBUF \wire2_IBUF[4]_inst 
       (.I(wire2[4]),
        .O(wire2_IBUF[4]));
  IBUF \wire2_IBUF[5]_inst 
       (.I(wire2[5]),
        .O(wire2_IBUF[5]));
  IBUF \wire2_IBUF[6]_inst 
       (.I(wire2[6]),
        .O(wire2_IBUF[6]));
  IBUF \wire3_IBUF[0]_inst 
       (.I(wire3[0]),
        .O(wire3_IBUF[0]));
  IBUF \wire3_IBUF[1]_inst 
       (.I(wire3[1]),
        .O(wire3_IBUF[1]));
  OBUF \y_OBUF[0]_inst 
       (.I(y_OBUF[0]),
        .O(y[0]));
  OBUF \y_OBUF[1]_inst 
       (.I(\<const0> ),
        .O(y[1]));
  OBUF \y_OBUF[2]_inst 
       (.I(y_OBUF[2]),
        .O(y[2]));
  LUT6 #(
    .INIT(64'hAAAA3330AAAACCCF)) 
    \y_OBUF[2]_inst_i_1 
       (.I0(wire3_IBUF[0]),
        .I1(wire1_IBUF[0]),
        .I2(\y_OBUF[3]_inst_i_2_n_0 ),
        .I3(\y_OBUF[3]_inst_i_3_n_0 ),
        .I4(wire1_IBUF[2]),
        .I5(wire0_IBUF[0]),
        .O(y_OBUF[2]));
  OBUF \y_OBUF[3]_inst 
       (.I(y_OBUF[3]),
        .O(y[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA03FFFC00)) 
    \y_OBUF[3]_inst_i_1 
       (.I0(wire3_IBUF[1]),
        .I1(\y_OBUF[3]_inst_i_2_n_0 ),
        .I2(\y_OBUF[3]_inst_i_3_n_0 ),
        .I3(\y_OBUF[3]_inst_i_4_n_0 ),
        .I4(wire0_IBUF[1]),
        .I5(wire1_IBUF[2]),
        .O(y_OBUF[3]));
  LUT3 #(
    .INIT(8'hFE)) 
    \y_OBUF[3]_inst_i_2 
       (.I0(wire2_IBUF[6]),
        .I1(wire2_IBUF[5]),
        .I2(wire2_IBUF[0]),
        .O(\y_OBUF[3]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \y_OBUF[3]_inst_i_3 
       (.I0(wire2_IBUF[2]),
        .I1(wire2_IBUF[1]),
        .I2(wire2_IBUF[4]),
        .I3(wire2_IBUF[3]),
        .O(\y_OBUF[3]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \y_OBUF[3]_inst_i_4 
       (.I0(wire0_IBUF[0]),
        .I1(wire1_IBUF[0]),
        .I2(wire1_IBUF[1]),
        .O(\y_OBUF[3]_inst_i_4_n_0 ));
endmodule
```

The corresponding testbench files for both are as follows:

```
`include "./data/cells_cmos.v"
`include "./data/cells_cyclone_v.v"
`include "./data/cells_verific.v"
`include "./data/cells_xilinx_7.v"
`include "./data/cells_yosys.v"
`include "syn_vivado.v"

module testbench  ;
  wire [3:0] y;
  reg [(1'h0):(1'h0)] clk;
  reg signed [(3'h4):(1'h0)] wire3;
  reg [(3'h6):(1'h0)] wire2;
  reg signed [(2'h2):(1'h0)] wire1;
  reg signed [(2'h2):(1'h0)] wire0;
  top #() top1 (.y(y), .clk(clk), .wire3(wire3), .wire2(wire2), .wire1(wire1), .wire0(wire0));
  initial
    begin
      clk = (1'h0);
      {wire3, wire2, wire1, wire0} = (1'h0);
      #10 {wire3, wire2, wire1, wire0} = (256'hc8ed17754b580360127ef910e2932082ec2579f7a131db637cc1d86e57c7d0cb);
      #10 {wire3, wire2, wire1, wire0} = (255'h411b0c829d755a5578507cc343c86358aa8c5b35695014091f0e7fce7414d2d8);
      #10 {wire3, wire2, wire1, wire0} = (256'he988ccb1b1e636f7fe60cb67c99d4a3f77f026939dc0da989990f596381c8fb7);
      #10 {wire3, wire2, wire1, wire0} = (256'hbce57df56233b1564af674ccab0a61f6c6d3e2b868a83b8dde25d91e2f746d20);
      #10 {wire3, wire2, wire1, wire0} = (250'h22e78f6b72ab6c4a2d0465fbf8b044839785d077bd74cbb7e77a91d86849764);
      #10 {wire3, wire2, wire1, wire0} = (256'hf1f45e7f4af6216e8c5475d993934d10dbd5d49acf7db79ef3876f1f018b9634);
      #10 {wire3, wire2, wire1, wire0} = (256'ha4e0073ae205212adde488aa2beb63f4b2266b615debc792c9ca35173d66eaa3);
      #10 {wire3, wire2, wire1, wire0} = (256'h9c40041f1287529bbfd6ef4e49a30ae7f293df00f7ebd26836f912a9b61661eb);
      #10 {wire3, wire2, wire1, wire0} = (256'haadc327400bc296bb881ce7725b8139424b948d49a4d92b1f57187b308ac5d29);
      #10 {wire3, wire2, wire1, wire0} = (251'h7e6e4cda738b4d1127c9d1a5965499272ae6d3a78209e1fa0ca358a1cef3794);
      #10 {wire3, wire2, wire1, wire0} = (252'h9f0f6b1550e7fefe97d1ac1c13a3697480fb0753de77a0b331ca89a52110997);
      #10 {wire3, wire2, wire1, wire0} = (255'h5380ada6d39839dc167794994db2fb5761876cd2f2843b1b884756fd6eb650aa);
      #10 {wire3, wire2, wire1, wire0} = (254'h3c1bdca20a560571302c2f71ed694712ad226a8bb4e3a4089781a141974de41b);
      #10 {wire3, wire2, wire1, wire0} = (255'h4954b228890b33889589755c64e5c39e42f85be5960d8a924eb07ced6907e5b6);
      #10 {wire3, wire2, wire1, wire0} = (254'h39df39b1a0feb4a6d199e2a63c0f308c44efe5d009db1f7bad42bccf8cc0c5fb);
      #10 {wire3, wire2, wire1, wire0} = (256'hee4587a41fa6854e62b6cb71f5cda2d62108ecc78a3b152f925dcb069c136266);
      #10 {wire3, wire2, wire1, wire0} = (253'h170f445b2708a45d0421e6e05002a25b725face3dfc165313d4bc7fe9d27c71c);
      #10 {wire3, wire2, wire1, wire0} = (256'hcb4627d7f515fafa9b9e540c2e53cc0bd3bb81fe25f74485cd9f0d2810396ff5);
      #10 {wire3, wire2, wire1, wire0} = (254'h277c2bc07628a539fe7dfb8ce2925eb57d822e748654b9ecbce2f7a2ba561446);
      #10 {wire3, wire2, wire1, wire0} = (256'hd9b2c21a971f4fd0ea2b600114b669e7adf58ba093dcd2844dc29208e42fcb53);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
```