(* use_dsp48="no" *) (* use_dsp="no" *) module top  (y, clk, wire3, wire2, wire1, wire0);
  output wire [(32'h53):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire signed [(4'h8):(1'h0)] wire3;
  input wire [(3'h6):(1'h0)] wire2;
  input wire [(3'h7):(1'h0)] wire1;
  input wire [(3'h4):(1'h0)] wire0;
  wire signed [(2'h2):(1'h0)] wire67;
  wire signed [(4'h8):(1'h0)] wire65;
  wire signed [(3'h5):(1'h0)] wire9;
  wire [(3'h6):(1'h0)] wire8;
  wire [(3'h7):(1'h0)] wire7;
  wire [(3'h7):(1'h0)] wire6;
  wire [(2'h3):(1'h0)] wire5;
  wire [(3'h5):(1'h0)] wire4;
  reg [(3'h7):(1'h0)] reg71 = (1'h0);
  reg [(2'h2):(1'h0)] reg73 = (1'h0);
  reg [(3'h6):(1'h0)] reg72 = (1'h0);
  reg signed [(3'h5):(1'h0)] forvar71 = (1'h0);
  reg [(3'h4):(1'h0)] reg70 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg69 = (1'h0);
  reg signed [(3'h7):(1'h0)] forvar68 = (1'h0);
  assign y = {wire65, wire9, wire7, wire4, reg70, reg69, (1'h0)};
  assign wire4 = (($unsigned(wire2) ?
                     (wire1 ? wire3 : wire2) : (8'ha5)) != $unsigned("ELAOz"));
  assign wire5 = ($signed($unsigned((8'ha1))) >= wire2);
  assign wire6 = (~((~^wire2) ? wire4[(3'h4):(3'h4)] : wire0));
  assign wire7 = (~|$signed((wire5 ? (8'haa) : wire2)));
  assign wire8 = $signed($unsigned({wire2}));
  assign wire9 = {({wire6} != {wire4})};
  module10 #() modinst66 (.wire12(wire6), .wire14(wire0), .wire13(wire1), .wire11(wire7), .clk(clk), .y(wire65));
  assign wire67 = (wire9[(1'h0):(1'h0)] ? (-"F") : (^~wire0[(2'h2):(1'h1)]));
  always
    @(posedge clk) begin
      if ($unsigned((wire0 >= $unsigned((8'ha4)))))
        begin
          for (forvar68 = (1'h0); (forvar68 < (1'h1)); forvar68 = (forvar68 + (1'h1)))
            begin
              if (wire0[(2'h3):(1'h1)])
                begin
                  if (wire5)
                    begin
                      reg69 = wire1;
                    end
                  else
                    begin
                      reg69 = wire0[(3'h4):(1'h1)];
                    end
                  reg70 = ({wire8} ?
                      wire3[(3'h4):(1'h1)] : ((8'ha0) + $signed(wire65)));
                end
              else
                begin
                  if ($signed((8'ha5)))
                    begin
                      reg69 = $signed(($signed(wire9) ?
                          "5tOr" : (reg70 ? (8'h9c) : wire65)));
                      reg70 = ("xJ" > ($signed(wire0) <<< (forvar68 > wire3)));
                    end
                  else
                    begin
                      reg69 = "le";
                    end
                end
            end
          for (forvar71 = (1'h0); (forvar71 < (1'h1)); forvar71 = (forvar71 + (1'h1)))
            begin
              reg72 = "T517O";
            end
        end
      else
        begin
          for (forvar68 = (1'h0); (forvar68 < (1'h0)); forvar68 = (forvar68 + (1'h1)))
            begin
              reg71 <= (&$signed($signed(wire6)));
              reg72 = "";
            end
          reg73 = (8'ha2);
        end
    end
endmodule

(* use_dsp48="no" *) (* use_dsp="no" *) module module10  (y, clk, wire14, wire13, wire12, wire11);
  output wire [(32'hef):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire signed [(3'h4):(1'h0)] wire14;
  input wire signed [(3'h5):(1'h0)] wire13;
  input wire signed [(3'h6):(1'h0)] wire12;
  input wire signed [(2'h2):(1'h0)] wire11;
  wire signed [(2'h2):(1'h0)] wire41;
  wire [(2'h2):(1'h0)] wire40;
  wire [(3'h6):(1'h0)] wire39;
  wire signed [(3'h7):(1'h0)] wire25;
  reg [(2'h3):(1'h0)] reg64 = (1'h0);
  reg [(3'h6):(1'h0)] reg61 = (1'h0);
  reg [(2'h3):(1'h0)] reg63 = (1'h0);
  reg [(3'h7):(1'h0)] reg59 = (1'h0);
  reg [(2'h2):(1'h0)] reg57 = (1'h0);
  reg [(3'h6):(1'h0)] reg56 = (1'h0);
  reg signed [(3'h6):(1'h0)] reg48 = (1'h0);
  reg [(3'h5):(1'h0)] reg35 = (1'h0);
  reg [(2'h3):(1'h0)] reg34 = (1'h0);
  reg signed [(3'h6):(1'h0)] reg30 = (1'h0);
  reg signed [(2'h3):(1'h0)] forvar62 = (1'h0);
  reg signed [(4'h8):(1'h0)] forvar61 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg60 = (1'h0);
  reg [(3'h7):(1'h0)] forvar59 = (1'h0);
  reg signed [(3'h5):(1'h0)] forvar58 = (1'h0);
  reg signed [(3'h6):(1'h0)] reg55 = (1'h0);
  reg signed [(3'h5):(1'h0)] forvar54 = (1'h0);
  reg [(4'h8):(1'h0)] reg53 = (1'h0);
  reg signed [(2'h2):(1'h0)] forvar52 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg51 = (1'h0);
  reg signed [(3'h5):(1'h0)] reg50 = (1'h0);
  reg [(3'h4):(1'h0)] forvar49 = (1'h0);
  reg signed [(2'h2):(1'h0)] reg47 = (1'h0);
  reg [(3'h7):(1'h0)] reg46 = (1'h0);
  reg [(4'h8):(1'h0)] reg45 = (1'h0);
  reg [(4'h8):(1'h0)] forvar44 = (1'h0);
  reg [(2'h3):(1'h0)] reg44 = (1'h0);
  reg signed [(3'h5):(1'h0)] forvar43 = (1'h0);
  reg signed [(3'h4):(1'h0)] reg42 = (1'h0);
  reg signed [(3'h6):(1'h0)] reg38 = (1'h0);
  reg signed [(4'h8):(1'h0)] forvar37 = (1'h0);
  reg [(2'h3):(1'h0)] reg36 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg29 = (1'h0);
  reg signed [(4'h8):(1'h0)] forvar28 = (1'h0);
  reg [(3'h7):(1'h0)] reg33 = (1'h0);
  reg [(3'h4):(1'h0)] forvar32 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg31 = (1'h0);
  reg signed [(2'h2):(1'h0)] forvar29 = (1'h0);
  reg signed [(3'h7):(1'h0)] reg28 = (1'h0);
  reg signed [(3'h7):(1'h0)] forvar27 = (1'h0);
  assign y = {wire41,
                 wire40,
                 wire39,
                 wire25,
                 reg63,
                 reg56,
                 reg30,
                 forvar61,
                 forvar58,
                 reg50,
                 reg47,
                 forvar44,
                 reg44,
                 forvar43,
                 forvar32,
                 (1'h0)};
  module15 #() modinst26 (wire25, clk, wire11, wire14, wire13, wire12);
  always
    @(posedge clk) begin
      for (forvar27 = (1'h0); (forvar27 < (1'h0)); forvar27 = (forvar27 + (1'h1)))
        begin
          if ((^~$unsigned("uR8J")))
            begin
              reg28 = $signed($unsigned((wire11 ? forvar27 : (8'ha0))));
              for (forvar29 = (1'h0); (forvar29 < (1'h0)); forvar29 = (forvar29 + (1'h1)))
                begin
                  if (wire12)
                    begin
                      reg30 <= wire25;
                      reg31 = {{(reg30 ~^ (8'ha6))}};
                    end
                  else
                    begin
                      reg31 = (~wire25[(3'h7):(1'h1)]);
                    end
                  for (forvar32 = (1'h0); (forvar32 < (1'h0)); forvar32 = (forvar32 + (1'h1)))
                    begin
                      reg33 = $signed($signed("wZ"));
                    end
                end
            end
          else
            begin
              for (forvar28 = (1'h0); (forvar28 < (1'h0)); forvar28 = (forvar28 + (1'h1)))
                begin
                  if ($signed(wire25))
                    begin
                      reg29 = $unsigned(reg33[(1'h1):(1'h1)]);
                    end
                  else
                    begin
                      reg29 = ($signed((8'ha1)) == reg30[(1'h0):(1'h0)]);
                    end
                  reg31 = reg28[(2'h2):(1'h1)];
                end
              for (forvar32 = (1'h0); (forvar32 < (1'h1)); forvar32 = (forvar32 + (1'h1)))
                begin
                  reg33 = (reg28 << $unsigned("Ektg"));
                  reg34 <= (~|wire12);
                end
            end
        end
      if ("zA")
        begin
          reg35 <= $signed((|(wire12 ~^ wire12)));
        end
      else
        begin
          reg36 = $signed(reg31);
          for (forvar37 = (1'h0); (forvar37 < (1'h1)); forvar37 = (forvar37 + (1'h1)))
            begin
              reg38 = (~^$signed(reg30));
            end
        end
    end
  assign wire39 = $unsigned($signed($signed((8'ha8))));
  assign wire40 = (~|"a6xC");
  assign wire41 = reg30;
  always
    @(posedge clk) begin
      if ($signed(wire13[(1'h0):(1'h0)]))
        begin
          reg42 = wire40[(1'h1):(1'h1)];
          for (forvar43 = (1'h0); (forvar43 < (1'h0)); forvar43 = (forvar43 + (1'h1)))
            begin
              reg44 = "5EcPX";
            end
        end
      else
        begin
          reg42 = $signed("fv7XXaY");
          for (forvar43 = (1'h0); (forvar43 < (1'h1)); forvar43 = (forvar43 + (1'h1)))
            begin
              if ($unsigned(wire11))
                begin
                  for (forvar44 = (1'h0); (forvar44 < (1'h1)); forvar44 = (forvar44 + (1'h1)))
                    begin
                      reg45 = $signed({$unsigned((8'h9e))});
                      reg46 = "geNbPme";
                    end
                  reg47 = reg44;
                end
              else
                begin
                  reg48 <= (~^forvar44);
                  for (forvar49 = (1'h0); (forvar49 < (1'h0)); forvar49 = (forvar49 + (1'h1)))
                    begin
                      reg50 = reg44[(1'h1):(1'h1)];
                      reg51 = {reg46};
                    end
                end
              for (forvar52 = (1'h0); (forvar52 < (1'h0)); forvar52 = (forvar52 + (1'h1)))
                begin
                  reg53 = forvar49;
                  for (forvar54 = (1'h0); (forvar54 < (1'h1)); forvar54 = (forvar54 + (1'h1)))
                    begin
                      reg55 = wire25;
                      reg56 <= forvar44;
                    end
                end
            end
        end
      reg57 <= reg56[(1'h0):(1'h0)];
    end
  always
    @(posedge clk) begin
      if ((($unsigned(reg57) || $signed(reg35)) ?
          ((reg48 >>> wire12) || (~|reg35)) : (|(wire11 <<< (8'haa)))))
        begin
          if (wire39[(3'h4):(1'h1)])
            begin
              for (forvar58 = (1'h0); (forvar58 < (1'h1)); forvar58 = (forvar58 + (1'h1)))
                begin
                  reg59 <= $signed((((8'haa) ^~ wire13) > (~^wire14)));
                end
            end
          else
            begin
              for (forvar58 = (1'h0); (forvar58 < (1'h0)); forvar58 = (forvar58 + (1'h1)))
                begin
                  for (forvar59 = (1'h0); (forvar59 < (1'h0)); forvar59 = (forvar59 + (1'h1)))
                    begin
                      reg60 = $signed(($signed(wire12) <= (-wire40)));
                    end
                end
              for (forvar61 = (1'h0); (forvar61 < (1'h1)); forvar61 = (forvar61 + (1'h1)))
                begin
                  for (forvar62 = (1'h0); (forvar62 < (1'h0)); forvar62 = (forvar62 + (1'h1)))
                    begin
                      reg63 <= $unsigned(((reg60 ?
                          reg57 : reg60) < $signed(wire39)));
                    end
                end
            end
        end
      else
        begin
          for (forvar58 = (1'h0); (forvar58 < (1'h1)); forvar58 = (forvar58 + (1'h1)))
            begin
              reg60 = wire41[(1'h0):(1'h0)];
              reg61 <= $unsigned((((8'ha2) ? reg48 : wire41) ?
                  reg63 : (^forvar58)));
            end
        end
      reg64 <= "kzG";
    end
endmodule

(* use_dsp48="no" *) (* use_dsp="no" *) module module15  (y, clk, wire19, wire18, wire17, wire16);
  output wire [(32'h16):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire signed [(2'h2):(1'h0)] wire19;
  input wire signed [(2'h2):(1'h0)] wire18;
  input wire [(3'h5):(1'h0)] wire17;
  input wire signed [(3'h5):(1'h0)] wire16;
  wire [(3'h4):(1'h0)] wire24;
  wire signed [(2'h2):(1'h0)] wire23;
  wire [(3'h5):(1'h0)] wire22;
  wire [(4'h8):(1'h0)] wire21;
  reg [(2'h2):(1'h0)] reg20 = (1'h0);
  assign y = {wire24, reg20, (1'h0)};
  always
    @(posedge clk) begin
      reg20 <= wire16;
    end
  assign wire21 = wire16[(3'h5):(3'h5)];
  assign wire22 = $signed(reg20[(1'h1):(1'h0)]);
  assign wire23 = "l";
  assign wire24 = ("GbFqyZ" & $unsigned(((8'ha9) >> wire17)));
endmodule