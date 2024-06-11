(* use_dsp48="no" *) (* use_dsp="no" *) module top
#(parameter param319 = ((((^~((8'h9c) ? (8'hb9) : (7'h43))) ? ((~^(8'hbe)) >= ((8'h9c) ~^ (8'hbd))) : (^((8'h9d) >= (8'ha2)))) ? ((|{(8'hac), (7'h40)}) >>> (&((7'h40) != (8'ha2)))) : (({(7'h41), (7'h44)} && ((8'h9e) ? (8'hb3) : (7'h40))) ? (((8'ha1) + (8'ha4)) ^~ ((8'ha3) || (8'hb2))) : (&((8'ha0) ^ (7'h41))))) || (|((((8'hb3) ? (8'ha8) : (8'hb6)) ^ (~(8'hab))) ? (((8'h9f) ? (8'hbb) : (8'had)) ? (-(8'h9f)) : (&(8'hb3))) : (!(!(7'h40)))))))
(y, clk, wire0, wire1, wire2, wire3);
  output wire [(32'h152):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire signed [(5'h10):(1'h0)] wire0;
  input wire [(5'h15):(1'h0)] wire1;
  input wire signed [(5'h13):(1'h0)] wire2;
  input wire [(3'h7):(1'h0)] wire3;
  wire [(5'h11):(1'h0)] wire318;
  wire signed [(4'hc):(1'h0)] wire316;
  wire [(4'he):(1'h0)] wire311;
  wire signed [(4'hb):(1'h0)] wire309;
  wire signed [(4'ha):(1'h0)] wire108;
  wire [(4'hf):(1'h0)] wire107;
  wire [(5'h14):(1'h0)] wire106;
  wire [(2'h2):(1'h0)] wire105;
  wire signed [(4'h9):(1'h0)] wire104;
  wire [(5'h13):(1'h0)] wire4;
  wire [(4'he):(1'h0)] wire5;
  wire signed [(3'h6):(1'h0)] wire6;
  wire [(4'hc):(1'h0)] wire7;
  wire signed [(3'h5):(1'h0)] wire8;
  wire signed [(4'h9):(1'h0)] wire9;
  wire signed [(4'hc):(1'h0)] wire19;
  wire [(4'hf):(1'h0)] wire102;
  reg [(5'h14):(1'h0)] reg315 = (1'h0);
  reg [(4'hc):(1'h0)] reg314 = (1'h0);
  reg [(2'h3):(1'h0)] reg313 = (1'h0);
  reg [(2'h3):(1'h0)] reg312 = (1'h0);
  reg [(5'h12):(1'h0)] reg18 = (1'h0);
  reg [(4'h9):(1'h0)] reg17 = (1'h0);
  reg [(4'he):(1'h0)] reg16 = (1'h0);
  reg [(2'h2):(1'h0)] reg15 = (1'h0);
  reg [(3'h4):(1'h0)] reg14 = (1'h0);
  reg signed [(4'hb):(1'h0)] reg13 = (1'h0);
  reg signed [(4'hb):(1'h0)] reg12 = (1'h0);
  reg signed [(4'hd):(1'h0)] reg11 = (1'h0);
  reg signed [(4'hf):(1'h0)] reg10 = (1'h0);
  assign y = {wire318,
                 wire316,
                 wire311,
                 wire309,
                 wire108,
                 wire107,
                 wire106,
                 wire105,
                 wire104,
                 wire4,
                 wire5,
                 wire6,
                 wire7,
                 wire8,
                 wire9,
                 wire19,
                 wire102,
                 reg315,
                 reg314,
                 reg313,
                 reg312,
                 reg18,
                 reg17,
                 reg16,
                 reg15,
                 reg14,
                 reg13,
                 reg12,
                 reg11,
                 reg10,
                 (1'h0)};
  assign wire4 = wire0[(4'he):(4'h8)];
  assign wire5 = wire1;
  assign wire6 = {wire0};
  assign wire7 = $signed((wire4 << wire4[(2'h2):(1'h0)]));
  assign wire8 = {(($unsigned({wire7}) >> $unsigned((~^wire1))) ?
                         (|wire2) : $unsigned(wire7[(4'hb):(3'h7)]))};
  assign wire9 = (~&(wire1 < {wire0, wire7[(1'h1):(1'h0)]}));
  always
    @(posedge clk) begin
      reg10 <= $unsigned({$signed(wire8)});
      reg11 <= $signed(wire0);
      if ({wire1[(5'h13):(5'h11)], $signed((&{(reg10 ? wire8 : wire4)}))})
        begin
          reg12 <= (((($signed((8'hb3)) << (~wire0)) ?
                      ($signed(wire7) << (reg11 >> wire7)) : wire3[(1'h0):(1'h0)]) ?
                  (wire6[(1'h0):(1'h0)] == (&((8'hab) ^ (7'h40)))) : $signed({reg11[(2'h3):(1'h0)],
                      (wire1 <<< reg11)})) ?
              ((~&wire6) - $unsigned($signed((wire4 ?
                  wire1 : wire1)))) : wire3[(2'h3):(2'h2)]);
          reg13 <= (|$signed(wire3));
          reg14 <= $unsigned(wire1);
          reg15 <= ((wire4 ?
              ($unsigned({reg10, reg11}) ?
                  reg12 : (!{reg14,
                      wire8})) : (~^wire4[(3'h5):(1'h0)])) > (^~(~((wire8 - wire1) - (8'hb3)))));
          reg16 <= (-reg12[(4'h8):(3'h5)]);
        end
      else
        begin
          reg12 <= $signed($signed($unsigned($unsigned($signed(reg11)))));
        end
      reg17 <= (!(reg11[(3'h6):(3'h4)] ?
          ($unsigned({(8'hb3)}) >> ((reg10 ^~ wire1) * wire2)) : ((reg10[(1'h0):(1'h0)] ^ (~|(8'ha7))) ?
              ($unsigned(reg16) ?
                  {wire0,
                      wire5} : $signed((8'h9c))) : ((8'hb0) == reg16[(1'h1):(1'h0)]))));
      reg18 <= (-wire6);
    end
  assign wire19 = (~&wire9[(2'h3):(2'h2)]);
  module20 #() modinst103 (wire102, clk, wire1, wire5, reg11, wire2);
  assign wire104 = $signed((-(~|$unsigned((wire2 << reg11)))));
  assign wire105 = $signed(($signed(wire19[(3'h7):(2'h2)]) ?
                       reg17[(4'h9):(3'h5)] : (~|$unsigned(wire1))));
  assign wire106 = (&({$unsigned(reg13[(1'h0):(1'h0)])} ?
                       {(reg14[(3'h4):(1'h0)] - reg18),
                           $signed(reg13[(2'h3):(2'h3)])} : (8'h9f)));
  assign wire107 = ((^~wire1) ?
                       $unsigned($unsigned($signed($unsigned(reg18)))) : $unsigned($unsigned(reg15)));
  assign wire108 = (|(8'h9c));
  module109 #() modinst310 (.wire114(wire108), .y(wire309), .wire110(reg10), .wire113(wire106), .wire111(reg12), .clk(clk), .wire112(reg16));
  assign wire311 = $signed((wire3 ?
                       (^~$signed(((8'hbb) ?
                           reg12 : reg13))) : $signed(wire6)));
  always
    @(posedge clk) begin
      reg312 <= $signed($unsigned((reg10[(4'h9):(3'h5)] ?
          ({wire105} ? (~^(8'hae)) : $unsigned((8'hbf))) : {$signed(wire102),
              (+reg15)})));
      reg313 <= {(~$signed((((8'ha9) ? wire7 : (8'ha0)) ?
              {wire105} : (wire9 || wire108))))};
      reg314 <= {(^wire309[(3'h7):(2'h2)]),
          ($unsigned((reg17 && wire104[(1'h1):(1'h0)])) ?
              ($signed((wire108 <= (7'h44))) | $signed($signed(wire102))) : (+$unsigned(wire108[(4'h8):(3'h5)])))};
      reg315 <= $unsigned(reg14[(2'h2):(1'h1)]);
    end
  module176 #() modinst317 (wire316, clk, reg314, wire107, reg11, wire102);
  assign wire318 = (reg12 ?
                       {{(|reg314), (~|(!(7'h42)))},
                           ((~^$signed(wire1)) ?
                               wire8[(3'h4):(2'h2)] : $signed($signed(reg314)))} : (($signed(wire5) > ($unsigned((8'hbc)) >> $unsigned(reg314))) * {wire3[(3'h7):(2'h2)],
                           $unsigned($unsigned(wire104))}));
endmodule

(* use_dsp48="no" *) (* use_dsp="no" *) module module109  (y, clk, wire110, wire111, wire112, wire113, wire114);
  output wire [(32'h389):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(4'hf):(1'h0)] wire110;
  input wire [(4'hb):(1'h0)] wire111;
  input wire [(4'he):(1'h0)] wire112;
  input wire [(5'h14):(1'h0)] wire113;
  input wire [(3'h7):(1'h0)] wire114;
  wire signed [(3'h7):(1'h0)] wire308;
  wire [(5'h14):(1'h0)] wire307;
  wire signed [(4'h8):(1'h0)] wire306;
  wire signed [(4'he):(1'h0)] wire305;
  wire signed [(4'hb):(1'h0)] wire304;
  wire signed [(4'ha):(1'h0)] wire298;
  wire [(4'ha):(1'h0)] wire293;
  wire signed [(3'h6):(1'h0)] wire292;
  wire signed [(4'h9):(1'h0)] wire275;
  wire signed [(3'h5):(1'h0)] wire269;
  wire [(5'h15):(1'h0)] wire162;
  wire [(4'hc):(1'h0)] wire133;
  wire [(5'h14):(1'h0)] wire129;
  wire [(4'hd):(1'h0)] wire173;
  wire signed [(4'hd):(1'h0)] wire175;
  wire [(5'h12):(1'h0)] wire213;
  wire signed [(4'he):(1'h0)] wire267;
  reg [(5'h14):(1'h0)] reg303 = (1'h0);
  reg signed [(4'he):(1'h0)] reg302 = (1'h0);
  reg [(4'ha):(1'h0)] reg301 = (1'h0);
  reg signed [(4'hf):(1'h0)] reg300 = (1'h0);
  reg signed [(5'h13):(1'h0)] reg299 = (1'h0);
  reg [(3'h6):(1'h0)] reg297 = (1'h0);
  reg signed [(4'hb):(1'h0)] reg296 = (1'h0);
  reg signed [(4'hf):(1'h0)] reg295 = (1'h0);
  reg [(5'h14):(1'h0)] reg294 = (1'h0);
  reg [(4'hc):(1'h0)] reg291 = (1'h0);
  reg [(4'h9):(1'h0)] reg290 = (1'h0);
  reg [(5'h12):(1'h0)] reg289 = (1'h0);
  reg signed [(4'ha):(1'h0)] reg288 = (1'h0);
  reg [(4'hf):(1'h0)] reg287 = (1'h0);
  reg [(2'h2):(1'h0)] reg286 = (1'h0);
  reg signed [(5'h12):(1'h0)] reg285 = (1'h0);
  reg signed [(3'h6):(1'h0)] reg284 = (1'h0);
  reg signed [(5'h15):(1'h0)] reg283 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg282 = (1'h0);
  reg [(4'hd):(1'h0)] reg281 = (1'h0);
  reg [(2'h2):(1'h0)] reg280 = (1'h0);
  reg signed [(4'ha):(1'h0)] reg279 = (1'h0);
  reg [(2'h3):(1'h0)] reg278 = (1'h0);
  reg signed [(4'hc):(1'h0)] reg277 = (1'h0);
  reg signed [(2'h2):(1'h0)] reg276 = (1'h0);
  reg [(4'hf):(1'h0)] reg274 = (1'h0);
  reg signed [(4'he):(1'h0)] reg273 = (1'h0);
  reg signed [(5'h15):(1'h0)] reg272 = (1'h0);
  reg [(2'h3):(1'h0)] reg271 = (1'h0);
  reg signed [(4'ha):(1'h0)] reg270 = (1'h0);
  reg signed [(5'h11):(1'h0)] reg131 = (1'h0);
  reg [(3'h5):(1'h0)] reg132 = (1'h0);
  reg signed [(5'h15):(1'h0)] reg215 = (1'h0);
  reg signed [(5'h12):(1'h0)] reg216 = (1'h0);
  reg [(5'h15):(1'h0)] reg217 = (1'h0);
  reg signed [(5'h11):(1'h0)] reg218 = (1'h0);
  reg [(5'h14):(1'h0)] reg219 = (1'h0);
  reg [(5'h14):(1'h0)] reg220 = (1'h0);
  reg signed [(5'h11):(1'h0)] reg221 = (1'h0);
  reg signed [(5'h15):(1'h0)] reg222 = (1'h0);
  reg signed [(3'h5):(1'h0)] reg223 = (1'h0);
  reg signed [(5'h12):(1'h0)] reg224 = (1'h0);
  reg signed [(4'he):(1'h0)] reg225 = (1'h0);
  reg [(4'h8):(1'h0)] reg226 = (1'h0);
  reg signed [(3'h6):(1'h0)] reg227 = (1'h0);
  reg [(5'h10):(1'h0)] reg228 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg229 = (1'h0);
  reg [(3'h4):(1'h0)] reg230 = (1'h0);
  reg [(4'hc):(1'h0)] reg231 = (1'h0);
  reg signed [(5'h15):(1'h0)] reg232 = (1'h0);
  reg signed [(2'h3):(1'h0)] reg233 = (1'h0);
  reg [(5'h10):(1'h0)] reg234 = (1'h0);
  reg [(5'h15):(1'h0)] reg235 = (1'h0);
  reg signed [(4'ha):(1'h0)] reg236 = (1'h0);
  assign y = {wire308,
                 wire307,
                 wire306,
                 wire305,
                 wire304,
                 wire298,
                 wire293,
                 wire292,
                 wire275,
                 wire269,
                 wire162,
                 wire133,
                 wire129,
                 wire173,
                 wire175,
                 wire213,
                 wire267,
                 reg303,
                 reg302,
                 reg301,
                 reg300,
                 reg299,
                 reg297,
                 reg296,
                 reg295,
                 reg294,
                 reg291,
                 reg290,
                 reg289,
                 reg288,
                 reg287,
                 reg286,
                 reg285,
                 reg284,
                 reg283,
                 reg282,
                 reg281,
                 reg280,
                 reg279,
                 reg278,
                 reg277,
                 reg276,
                 reg274,
                 reg273,
                 reg272,
                 reg271,
                 reg270,
                 reg131,
                 reg132,
                 reg215,
                 reg216,
                 reg217,
                 reg218,
                 reg219,
                 reg220,
                 reg221,
                 reg222,
                 reg223,
                 reg224,
                 reg225,
                 reg226,
                 reg227,
                 reg228,
                 reg229,
                 reg230,
                 reg231,
                 reg232,
                 reg233,
                 reg234,
                 reg235,
                 reg236,
                 (1'h0)};
  module115 #() modinst130 (.clk(clk), .wire118(wire110), .y(wire129), .wire120(wire112), .wire116(wire113), .wire117(wire114), .wire119(wire111));
  always
    @(posedge clk) begin
      reg131 <= ($unsigned($unsigned((wire111 == (wire112 ?
              (8'hb5) : wire110)))) ?
          $signed((wire113[(3'h4):(1'h0)] ?
              {(wire112 ?
                      wire114 : wire114)} : wire129)) : (!$unsigned($unsigned((~wire129)))));
      reg132 <= wire113;
    end
  assign wire133 = $signed({(~(~&$unsigned(wire112)))});
  module134 #() modinst163 (.wire136(wire110), .wire139(wire113), .wire137(wire129), .clk(clk), .y(wire162), .wire135(wire133), .wire138(wire114));
  module164 #() modinst174 (.wire168(reg132), .clk(clk), .wire165(wire129), .y(wire173), .wire166(wire110), .wire167(reg131));
  assign wire175 = (|$signed((~&wire112[(3'h7):(3'h4)])));
  module176 #() modinst214 (wire213, clk, wire133, wire162, wire173, wire129);
  always
    @(posedge clk) begin
      if ((8'hbd))
        begin
          if (wire175[(3'h4):(2'h3)])
            begin
              reg215 <= wire114[(3'h7):(1'h1)];
              reg216 <= (~({{wire110[(4'he):(1'h1)], ((8'ha2) * wire213)}} ?
                  {$unsigned($unsigned(wire113))} : {$signed($unsigned(reg131)),
                      $unsigned((wire114 >= (8'ha9)))}));
              reg217 <= wire173[(2'h2):(1'h1)];
              reg218 <= ({$unsigned($signed($unsigned(reg215)))} == $signed($signed(($signed((8'h9c)) ?
                  $signed((8'ha5)) : $signed((8'ha3))))));
            end
          else
            begin
              reg215 <= wire114;
              reg216 <= ((~reg216[(3'h5):(3'h5)]) != {(~^wire112[(2'h2):(2'h2)]),
                  wire129});
              reg217 <= wire110[(4'h9):(1'h0)];
              reg218 <= {wire110, (+reg131)};
            end
          if ((^((wire111 > (|reg132)) || $signed($signed((wire162 ?
              wire110 : wire111))))))
            begin
              reg219 <= ((^$unsigned((!(wire110 ? (8'hab) : wire213)))) ?
                  (($signed(wire213[(3'h5):(3'h4)]) <<< (~|reg216)) ?
                      $unsigned(reg216) : wire173) : $unsigned((($unsigned(wire162) ?
                      (wire114 ? wire213 : wire173) : (wire113 ?
                          wire129 : reg216)) | wire114[(2'h3):(2'h3)])));
            end
          else
            begin
              reg219 <= (~|({((wire112 ?
                      wire111 : wire110) != $unsigned(wire173))} * ({$unsigned(reg216),
                  (-wire162)} * ((reg215 != reg131) <<< wire110[(4'hf):(4'h8)]))));
              reg220 <= (wire133[(4'ha):(4'ha)] ?
                  (~&$signed($unsigned((wire111 >>> (7'h42))))) : wire114);
            end
          if ((reg216 ?
              (~$signed({$unsigned(reg216)})) : {(reg219 << wire129[(5'h13):(3'h4)]),
                  (($unsigned(wire112) ?
                      wire129 : (reg217 < reg218)) ~^ $signed(wire175[(3'h6):(3'h5)]))}))
            begin
              reg221 <= $signed($unsigned((((7'h41) <<< (~wire110)) ?
                  $signed($unsigned(wire173)) : reg217[(5'h14):(2'h2)])));
              reg222 <= ($signed((^~$signed($unsigned(reg219)))) ?
                  (~wire112) : (-wire110));
            end
          else
            begin
              reg221 <= (~|(^~(($unsigned(wire110) ?
                  reg216[(5'h10):(3'h6)] : (-reg217)) + wire113[(4'hf):(2'h3)])));
            end
        end
      else
        begin
          reg215 <= $unsigned((((+$signed(wire162)) - reg131[(4'he):(3'h5)]) ^ $unsigned($signed((reg215 ?
              wire175 : wire113)))));
          reg216 <= $signed(reg217);
          reg217 <= ($unsigned($signed(reg219)) ?
              reg215[(3'h7):(2'h3)] : ((({reg131, wire110} ?
                  {wire129,
                      wire175} : $signed((8'ha9))) * $signed((&wire175))) > $signed(((reg216 ?
                  (8'hb9) : wire129) >> (~|reg217)))));
          if ($signed($unsigned(reg221[(5'h10):(5'h10)])))
            begin
              reg218 <= ($unsigned({{$signed(wire162)},
                  ($unsigned(wire112) + wire110[(4'hb):(3'h4)])}) ^~ ((-reg220[(4'hf):(3'h6)]) ?
                  reg218[(3'h6):(3'h4)] : (wire162 > {(~&reg222)})));
              reg219 <= $unsigned({wire129,
                  (reg216[(4'hd):(2'h3)] ^~ {(wire133 - wire113),
                      $signed(wire129)})});
              reg220 <= reg222;
            end
          else
            begin
              reg218 <= ($signed($signed((|((7'h44) ^~ reg222)))) ~^ wire175);
              reg219 <= $signed($unsigned(wire113[(5'h14):(4'hb)]));
            end
          reg221 <= wire162[(5'h12):(3'h5)];
        end
      if ((8'hb5))
        begin
          reg223 <= $signed(reg219[(5'h11):(4'h9)]);
          reg224 <= (wire129 ?
              $signed(((+reg132[(1'h1):(1'h1)]) ?
                  wire111[(3'h7):(2'h2)] : reg222)) : $signed((~^(~|reg216))));
          reg225 <= $unsigned({(reg223 <= (wire112[(3'h5):(2'h2)] ?
                  (reg215 && (8'ha9)) : $signed(reg222))),
              (+(^~$signed(wire111)))});
          reg226 <= (reg217 ?
              (|wire175[(4'hd):(2'h3)]) : (+((~^$signed(reg218)) - (((8'hb2) >>> reg221) & $unsigned(reg131)))));
          if ($signed($unsigned($unsigned($signed((wire162 == reg222))))))
            begin
              reg227 <= $unsigned($signed(reg132));
              reg228 <= ((($unsigned($signed(reg220)) && (-(^~(8'ha7)))) ?
                      ($unsigned(reg132) < {(wire112 ? (8'hb2) : (7'h43)),
                          $unsigned(reg226)}) : reg215) ?
                  reg215[(4'hf):(4'he)] : (wire110 && wire129));
              reg229 <= reg224[(1'h0):(1'h0)];
              reg230 <= {wire213};
            end
          else
            begin
              reg227 <= reg227[(3'h4):(1'h0)];
            end
        end
      else
        begin
          reg223 <= $signed(((|reg132) ?
              ((8'ha9) ?
                  ((~&reg226) - (reg228 >>> reg230)) : {(wire112 >= wire173)}) : ($unsigned((|reg223)) - $signed($unsigned(wire112)))));
          if ((~|$unsigned((^$unsigned(((8'hbc) ? reg227 : reg228))))))
            begin
              reg224 <= (($unsigned(wire162[(1'h0):(1'h0)]) ?
                  {wire173[(3'h6):(3'h5)]} : ({(reg218 < wire110),
                          $unsigned(reg216)} ?
                      (wire113[(1'h1):(1'h1)] ^ reg218) : ((reg132 ?
                          wire129 : reg217) != reg222[(4'ha):(3'h6)]))) && (~($unsigned(wire173) && ((~|(8'hb7)) != $unsigned(wire114)))));
              reg225 <= (8'h9d);
              reg226 <= ((~&(($unsigned(wire114) ?
                      {wire112} : wire112[(4'h8):(2'h3)]) ?
                  wire110[(2'h2):(1'h0)] : (^{reg220}))) >= $signed(($signed($signed((8'h9e))) ?
                  $unsigned($unsigned((8'ha3))) : (wire133[(3'h5):(3'h5)] >= reg221))));
              reg227 <= {$signed(reg228)};
              reg228 <= (!(8'h9c));
            end
          else
            begin
              reg224 <= reg228[(3'h5):(3'h4)];
              reg225 <= (reg216 ?
                  $unsigned($signed(wire175)) : $signed($unsigned($unsigned((8'hb9)))));
            end
          if ((~&(~|(((wire113 ?
              wire111 : reg131) > $unsigned(reg218)) >= {reg218,
              $unsigned(reg224)}))))
            begin
              reg229 <= reg229;
              reg230 <= wire111[(1'h0):(1'h0)];
              reg231 <= ((~|{wire175}) ? wire110[(4'h8):(3'h7)] : reg221);
            end
          else
            begin
              reg229 <= (((($unsigned(reg229) ?
                          $unsigned(wire213) : $signed(reg132)) & $signed((wire114 ?
                          wire175 : reg220))) ?
                      reg223[(3'h5):(1'h1)] : reg216[(5'h12):(5'h11)]) ?
                  $unsigned(wire133[(4'hc):(2'h2)]) : (wire213 >> reg220[(4'hb):(2'h3)]));
              reg230 <= (((+$unsigned(((8'hb3) <<< reg218))) <<< {$unsigned($signed(reg132)),
                  wire133[(2'h2):(1'h1)]}) && ({$signed((reg225 | reg222))} ?
                  ((wire213 == {reg227, reg228}) ?
                      wire111 : ($unsigned(reg231) - (reg215 ?
                          wire113 : reg220))) : (-reg215[(4'h8):(2'h3)])));
              reg231 <= wire110[(2'h3):(2'h3)];
            end
          reg232 <= (&wire173);
          reg233 <= ($signed($unsigned(wire110[(1'h1):(1'h0)])) ^~ (!wire133[(1'h0):(1'h0)]));
        end
      reg234 <= $unsigned(($unsigned({reg223[(1'h1):(1'h0)]}) ?
          $unsigned(reg222) : ($signed(wire113[(3'h6):(1'h1)]) >>> (8'hba))));
      reg235 <= (^{(((reg228 == wire129) ?
                  $unsigned((8'hbb)) : (wire175 ? reg232 : wire175)) ?
              reg131[(4'ha):(4'ha)] : $unsigned((wire173 ?
                  wire111 : wire173)))});
      reg236 <= (reg221 ?
          $unsigned(reg217[(3'h5):(3'h5)]) : ((+$unsigned((reg228 ~^ wire175))) ^~ (-$signed((~&reg222)))));
    end
  module237 #() modinst268 (.wire238(wire213), .wire240(reg229), .clk(clk), .wire239(reg218), .wire241(reg231), .y(wire267));
  assign wire269 = reg227[(2'h2):(1'h0)];
  always
    @(posedge clk) begin
      if (wire213[(1'h0):(1'h0)])
        begin
          reg270 <= ($unsigned(($signed((wire114 ? (8'hbe) : (8'ha8))) ?
              ((-wire129) * (~|(8'h9f))) : $signed({wire111}))) | wire114);
          reg271 <= wire267[(1'h1):(1'h0)];
          reg272 <= $unsigned((reg232[(4'h8):(2'h2)] <= $unsigned(((reg216 ?
                  reg234 : wire175) ?
              reg229 : $unsigned((8'ha5))))));
          reg273 <= wire173;
          reg274 <= (wire110[(1'h0):(1'h0)] ?
              reg225[(4'hc):(3'h7)] : $unsigned((^($signed(wire173) ?
                  (reg215 ? (8'hbc) : (8'hb6)) : reg132[(1'h1):(1'h0)]))));
        end
      else
        begin
          reg270 <= (reg235[(5'h15):(3'h4)] ?
              ({reg223, $signed((reg218 & reg233))} ?
                  (&wire112) : (~wire173[(1'h1):(1'h0)])) : (^~(-$unsigned({reg229,
                  reg230}))));
          reg271 <= reg234;
          reg272 <= (8'hb3);
        end
    end
  assign wire275 = $signed(wire175[(4'hb):(4'ha)]);
  always
    @(posedge clk) begin
      reg276 <= $unsigned((^(^reg215)));
      reg277 <= (~|wire269);
      reg278 <= $unsigned($unsigned($signed($unsigned($unsigned(reg218)))));
      reg279 <= ({reg278[(2'h3):(2'h3)]} ?
          {reg236[(2'h2):(1'h0)],
              reg228[(2'h2):(1'h1)]} : (wire112[(3'h7):(3'h4)] ?
              reg224[(4'h9):(3'h5)] : reg216));
      if ($unsigned($unsigned(reg216)))
        begin
          if ({reg270[(4'h9):(4'h8)]})
            begin
              reg280 <= (~reg271);
              reg281 <= reg221;
              reg282 <= (|$unsigned((reg219 ? reg224 : (8'had))));
            end
          else
            begin
              reg280 <= $signed(reg230[(2'h3):(1'h1)]);
              reg281 <= wire267[(3'h6):(3'h6)];
            end
          if ($signed(reg281))
            begin
              reg283 <= (~&$signed($signed($unsigned({reg280, reg236}))));
              reg284 <= {$unsigned($unsigned($unsigned((wire269 ?
                      wire275 : reg235)))),
                  $signed(($signed((reg218 ?
                      reg279 : reg236)) & {wire173[(2'h2):(1'h1)],
                      wire112[(3'h4):(3'h4)]}))};
              reg285 <= $signed({reg222, wire110[(2'h3):(2'h2)]});
            end
          else
            begin
              reg283 <= {($signed((reg274[(3'h7):(3'h4)] < $unsigned(reg227))) * (!$signed((~^reg219)))),
                  reg273[(4'hc):(3'h4)]};
              reg284 <= reg278[(2'h2):(2'h2)];
              reg285 <= ({((reg274[(3'h7):(3'h7)] < ((8'hac) || wire129)) & (reg220 + $signed(reg132))),
                  reg272} <= ($unsigned($unsigned($signed(reg280))) <<< reg221[(3'h4):(2'h3)]));
              reg286 <= ($signed(reg232[(4'hb):(3'h4)]) * (!$signed(((|wire129) > (reg228 ?
                  wire275 : wire110)))));
            end
          reg287 <= reg218[(2'h3):(2'h3)];
          if (($unsigned({reg274[(4'he):(4'h9)]}) * $unsigned((reg226 ?
              $unsigned($signed(reg223)) : (reg281 ?
                  reg276 : $signed(reg233))))))
            begin
              reg288 <= reg233;
              reg289 <= (^$signed((8'hae)));
              reg290 <= (8'hb9);
              reg291 <= {(reg131 <= {(wire110[(4'ha):(2'h2)] ?
                          {(8'ha9)} : reg223),
                      ($signed((7'h40)) < reg221)})};
            end
          else
            begin
              reg288 <= (+$signed({$unsigned(reg215[(2'h3):(2'h3)]),
                  ((reg272 | wire175) * reg222)}));
              reg289 <= reg224[(4'hb):(4'hb)];
              reg290 <= reg277[(2'h3):(1'h0)];
            end
        end
      else
        begin
          reg280 <= $unsigned({$signed(((reg272 << reg274) ?
                  wire133[(4'h8):(1'h1)] : (reg215 ? reg215 : reg216)))});
          reg281 <= $unsigned($unsigned(((!$signed(reg224)) || (^(reg233 < (8'hbe))))));
          reg282 <= $unsigned({({$unsigned(reg234)} * (~$signed(reg273))),
              (8'hab)});
          reg283 <= (-(($signed((wire269 <<< (8'ha4))) ?
              $unsigned((-reg282)) : $unsigned((reg234 ?
                  (7'h44) : reg289))) ^ reg215));
          reg284 <= reg277;
        end
    end
  assign wire292 = {wire112[(1'h1):(1'h1)],
                       (reg236[(1'h0):(1'h0)] ?
                           (!($signed((8'hbe)) ^~ {reg221,
                               (8'hbf)})) : (~|reg229[(1'h1):(1'h0)]))};
  assign wire293 = $unsigned($unsigned((~&$signed({reg284, reg289}))));
  always
    @(posedge clk) begin
      reg294 <= ((reg230[(2'h3):(1'h1)] & (8'hb1)) & $signed({(reg288 ?
              reg285[(4'h8):(2'h2)] : (wire162 ? wire293 : reg223)),
          reg220}));
      reg295 <= ($unsigned($signed(wire112)) ?
          $unsigned(reg285) : {$signed(({reg216, reg230} != ((8'ha5) ?
                  reg235 : (7'h40))))});
      reg296 <= (reg272[(5'h11):(3'h6)] - (((8'hb6) ?
          ($unsigned(reg277) >= (reg229 ?
              wire173 : wire267)) : $signed((reg235 >> reg216))) && (((wire213 ?
          wire292 : (8'hac)) > (~^(8'hb5))) * (reg273[(4'hd):(4'ha)] + reg271[(1'h1):(1'h0)]))));
      reg297 <= $unsigned((^~reg220[(5'h14):(4'hc)]));
    end
  assign wire298 = (wire293 ?
                       $signed(reg230[(2'h2):(1'h1)]) : (~|$signed({{reg270}})));
  always
    @(posedge clk) begin
      reg299 <= $unsigned($signed(reg297));
      reg300 <= reg299[(5'h11):(4'he)];
      reg301 <= reg294;
      reg302 <= wire113;
      reg303 <= reg296[(3'h5):(1'h0)];
    end
  assign wire304 = (($unsigned($unsigned($signed(reg283))) ?
                           (~^$unsigned((reg278 ?
                               reg227 : wire213))) : reg279[(1'h0):(1'h0)]) ?
                       (|($signed($signed(reg233)) < wire162[(4'ha):(4'h8)])) : $signed($unsigned(wire114[(3'h4):(1'h1)])));
  assign wire305 = wire293;
  assign wire306 = {reg228};
  assign wire307 = ((8'haa) ?
                       $signed(reg296[(3'h6):(3'h6)]) : {((^~reg221[(5'h11):(4'hd)]) ?
                               (7'h41) : (8'ha3))});
  assign wire308 = $unsigned((~&(((+reg291) | wire269) >= wire129[(3'h5):(2'h2)])));
endmodule

(* use_dsp48="no" *) (* use_dsp="no" *) module module20  (y, clk, wire21, wire22, wire23, wire24);
  output wire [(32'h42):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(5'h10):(1'h0)] wire21;
  input wire [(4'he):(1'h0)] wire22;
  input wire [(3'h6):(1'h0)] wire23;
  input wire [(5'h12):(1'h0)] wire24;
  wire [(3'h7):(1'h0)] wire101;
  wire signed [(5'h15):(1'h0)] wire99;
  wire [(4'hd):(1'h0)] wire76;
  wire [(4'hf):(1'h0)] wire25;
  wire [(4'h9):(1'h0)] wire74;
  assign y = {wire101, wire99, wire76, wire25, wire74, (1'h0)};
  assign wire25 = (((^~{(wire21 != wire23)}) ?
                          wire24[(3'h5):(2'h3)] : $signed($unsigned((~&wire21)))) ?
                      (&$unsigned(wire23)) : ((+wire21) && $signed($unsigned(wire23))));
  module26 #() modinst75 (.wire27(wire23), .wire30(wire24), .wire31(wire22), .clk(clk), .y(wire74), .wire29(wire21), .wire28(wire25));
  assign wire76 = ((^{({wire74,
                          wire23} | $unsigned(wire22))}) < ((wire24[(3'h7):(3'h7)] ?
                          $signed({wire22}) : $unsigned(((8'hb1) == wire23))) ?
                      ({(wire22 < wire74)} & wire74) : (+(wire22 ?
                          {wire23} : $unsigned((8'hb2))))));
  module77 #() modinst100 (wire99, clk, wire23, wire76, wire21, wire22);
  assign wire101 = $unsigned((~^$signed({$signed(wire99)})));
endmodule

(* use_dsp48="no" *) (* use_dsp="no" *) module module77  (y, clk, wire81, wire80, wire79, wire78);
  output wire [(32'hcd):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire signed [(3'h4):(1'h0)] wire81;
  input wire [(4'h8):(1'h0)] wire80;
  input wire [(5'h10):(1'h0)] wire79;
  input wire signed [(4'hb):(1'h0)] wire78;
  wire [(5'h11):(1'h0)] wire98;
  wire [(3'h7):(1'h0)] wire92;
  wire [(2'h2):(1'h0)] wire86;
  wire [(5'h11):(1'h0)] wire85;
  wire signed [(4'hf):(1'h0)] wire84;
  wire signed [(3'h4):(1'h0)] wire83;
  wire [(5'h11):(1'h0)] wire82;
  reg signed [(4'ha):(1'h0)] reg97 = (1'h0);
  reg [(5'h14):(1'h0)] reg96 = (1'h0);
  reg signed [(4'hd):(1'h0)] reg95 = (1'h0);
  reg [(5'h12):(1'h0)] reg94 = (1'h0);
  reg [(3'h7):(1'h0)] reg93 = (1'h0);
  reg signed [(5'h10):(1'h0)] reg91 = (1'h0);
  reg [(4'hc):(1'h0)] reg90 = (1'h0);
  reg [(4'h9):(1'h0)] reg89 = (1'h0);
  reg signed [(3'h4):(1'h0)] reg88 = (1'h0);
  reg signed [(5'h10):(1'h0)] reg87 = (1'h0);
  assign y = {wire98,
                 wire92,
                 wire86,
                 wire85,
                 wire84,
                 wire83,
                 wire82,
                 reg97,
                 reg96,
                 reg95,
                 reg94,
                 reg93,
                 reg91,
                 reg90,
                 reg89,
                 reg88,
                 reg87,
                 (1'h0)};
  assign wire82 = wire80;
  assign wire83 = (wire82 > ($unsigned($unsigned((wire79 >>> wire79))) ?
                      wire80 : $signed(wire78)));
  assign wire84 = (($signed((^~$unsigned(wire80))) * {(wire83[(2'h3):(2'h3)] ?
                              {wire81, wire79} : $signed(wire81))}) ?
                      wire80 : (((((8'hb7) + (8'ha3)) * wire83[(3'h4):(1'h1)]) ?
                          {(^(8'had)),
                              (wire81 ?
                                  wire82 : wire80)} : (~|wire80)) & $signed(wire78[(1'h1):(1'h0)])));
  assign wire85 = (wire84[(1'h1):(1'h0)] <<< wire84[(1'h1):(1'h1)]);
  assign wire86 = $signed($signed((~^((wire85 ?
                      wire85 : wire80) << $signed(wire79)))));
  always
    @(posedge clk) begin
      reg87 <= (wire80 ?
          {$signed(($signed(wire86) ? $signed((7'h44)) : (!wire80))),
              (~^$signed($unsigned(wire82)))} : (wire80[(2'h3):(1'h1)] ?
              $signed(($unsigned(wire79) <= $unsigned(wire81))) : wire86[(1'h1):(1'h0)]));
      reg88 <= (~|$unsigned(reg87[(4'ha):(3'h6)]));
      reg89 <= ((((^wire84) - ({wire86} * (wire82 ^~ wire80))) ^~ ({wire82} & wire86)) & (~$unsigned(reg88)));
      reg90 <= $signed($unsigned($signed($unsigned($signed(wire83)))));
      reg91 <= $unsigned(reg87);
    end
  assign wire92 = $unsigned((8'ha3));
  always
    @(posedge clk) begin
      reg93 <= $unsigned($unsigned(wire86));
      reg94 <= wire81;
      reg95 <= $signed($unsigned($unsigned({(wire82 >> reg87)})));
      reg96 <= reg87[(4'ha):(1'h1)];
      reg97 <= $unsigned($unsigned((reg95[(3'h6):(2'h3)] ?
          reg93[(1'h1):(1'h1)] : ((^(8'haa)) == (wire84 ? reg91 : (8'haf))))));
    end
  assign wire98 = (-wire85[(1'h1):(1'h1)]);
endmodule

(* use_dsp48="no" *) (* use_dsp="no" *) module module26  (y, clk, wire31, wire30, wire29, wire28, wire27);
  output wire [(32'h1d1):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire signed [(4'h9):(1'h0)] wire31;
  input wire signed [(3'h6):(1'h0)] wire30;
  input wire signed [(4'hc):(1'h0)] wire29;
  input wire [(4'hf):(1'h0)] wire28;
  input wire signed [(2'h3):(1'h0)] wire27;
  wire [(3'h6):(1'h0)] wire73;
  wire signed [(4'hc):(1'h0)] wire72;
  wire [(4'hb):(1'h0)] wire63;
  wire [(5'h10):(1'h0)] wire62;
  wire signed [(3'h5):(1'h0)] wire61;
  wire [(4'he):(1'h0)] wire60;
  wire [(4'h9):(1'h0)] wire59;
  wire signed [(5'h15):(1'h0)] wire58;
  wire signed [(3'h5):(1'h0)] wire57;
  wire [(4'hf):(1'h0)] wire56;
  wire [(3'h4):(1'h0)] wire55;
  wire [(4'hb):(1'h0)] wire54;
  wire signed [(3'h6):(1'h0)] wire53;
  wire [(3'h7):(1'h0)] wire52;
  wire [(4'hd):(1'h0)] wire51;
  wire signed [(4'h8):(1'h0)] wire50;
  wire signed [(4'he):(1'h0)] wire49;
  wire [(5'h13):(1'h0)] wire48;
  wire signed [(4'hf):(1'h0)] wire47;
  wire [(4'hc):(1'h0)] wire46;
  reg signed [(4'hf):(1'h0)] reg71 = (1'h0);
  reg signed [(5'h14):(1'h0)] reg70 = (1'h0);
  reg signed [(5'h13):(1'h0)] reg69 = (1'h0);
  reg signed [(4'hc):(1'h0)] reg68 = (1'h0);
  reg [(3'h7):(1'h0)] reg67 = (1'h0);
  reg signed [(3'h6):(1'h0)] reg66 = (1'h0);
  reg [(3'h4):(1'h0)] reg65 = (1'h0);
  reg [(3'h7):(1'h0)] reg64 = (1'h0);
  reg [(4'he):(1'h0)] reg45 = (1'h0);
  reg [(5'h11):(1'h0)] reg44 = (1'h0);
  reg [(2'h2):(1'h0)] reg43 = (1'h0);
  reg signed [(5'h15):(1'h0)] reg42 = (1'h0);
  reg [(4'h9):(1'h0)] reg41 = (1'h0);
  reg signed [(5'h13):(1'h0)] reg40 = (1'h0);
  reg [(4'ha):(1'h0)] reg39 = (1'h0);
  reg signed [(4'he):(1'h0)] reg38 = (1'h0);
  reg signed [(5'h11):(1'h0)] reg37 = (1'h0);
  reg [(2'h2):(1'h0)] reg36 = (1'h0);
  reg [(2'h3):(1'h0)] reg35 = (1'h0);
  reg signed [(4'hb):(1'h0)] reg34 = (1'h0);
  reg [(2'h2):(1'h0)] reg33 = (1'h0);
  reg [(4'ha):(1'h0)] reg32 = (1'h0);
  assign y = {wire73,
                 wire72,
                 wire63,
                 wire62,
                 wire61,
                 wire60,
                 wire59,
                 wire58,
                 wire57,
                 wire56,
                 wire55,
                 wire54,
                 wire53,
                 wire52,
                 wire51,
                 wire50,
                 wire49,
                 wire48,
                 wire47,
                 wire46,
                 reg71,
                 reg70,
                 reg69,
                 reg68,
                 reg67,
                 reg66,
                 reg65,
                 reg64,
                 reg45,
                 reg44,
                 reg43,
                 reg42,
                 reg41,
                 reg40,
                 reg39,
                 reg38,
                 reg37,
                 reg36,
                 reg35,
                 reg34,
                 reg33,
                 reg32,
                 (1'h0)};
  always
    @(posedge clk) begin
      reg32 <= wire29;
      if ($unsigned(reg32))
        begin
          reg33 <= (^(wire28[(4'hb):(4'ha)] ?
              $signed((wire31 ?
                  (wire28 ?
                      wire30 : wire29) : $unsigned(wire28))) : $unsigned((8'hb3))));
          reg34 <= wire28;
          reg35 <= wire28;
          reg36 <= reg35[(2'h3):(2'h3)];
          reg37 <= (!((reg34 ?
              reg34[(3'h5):(2'h2)] : ($signed(wire28) ?
                  wire28[(4'hf):(4'hb)] : (reg36 ^ reg33))) >> ({reg32[(1'h1):(1'h1)]} ?
              wire27[(1'h0):(1'h0)] : wire28)));
        end
      else
        begin
          if ((reg36[(2'h2):(2'h2)] ?
              $signed($signed($signed(wire27[(1'h1):(1'h1)]))) : ($unsigned($unsigned(reg32[(1'h0):(1'h0)])) ?
                  (~^reg33) : (8'ha4))))
            begin
              reg33 <= wire28[(4'hf):(3'h6)];
              reg34 <= $unsigned((wire28[(4'hb):(1'h0)] ?
                  {reg33, $signed((reg36 >> wire28))} : $signed(wire27)));
              reg35 <= reg37;
              reg36 <= $signed((($signed((reg32 ? reg33 : (8'h9f))) ?
                      ((wire30 < wire30) - $signed(reg36)) : (reg36 ?
                          reg34 : reg36)) ?
                  wire30[(1'h1):(1'h1)] : $unsigned(((wire27 ?
                      reg35 : wire27) - $unsigned(reg37)))));
            end
          else
            begin
              reg33 <= (8'hba);
              reg34 <= (reg35[(1'h0):(1'h0)] ?
                  ($unsigned(((^~reg35) ? {wire29} : (8'hbc))) << (((wire31 ?
                              (8'hbc) : wire29) ?
                          reg34[(4'h9):(3'h7)] : reg33[(1'h0):(1'h0)]) ?
                      (7'h43) : ($unsigned(wire27) ?
                          $signed(reg35) : $signed(reg33)))) : $unsigned((^~(reg33[(2'h2):(1'h0)] << (reg35 ?
                      (8'hb0) : wire31)))));
              reg35 <= $signed(wire27[(1'h1):(1'h0)]);
              reg36 <= $unsigned(reg34[(4'hb):(3'h6)]);
            end
        end
    end
  always
    @(posedge clk) begin
      if ({(8'ha3)})
        begin
          reg38 <= $unsigned(reg37);
          reg39 <= (+(&(reg38 << (wire28[(3'h4):(1'h1)] ?
              (wire30 | reg33) : reg32[(4'h9):(3'h7)]))));
          reg40 <= reg38;
        end
      else
        begin
          reg38 <= {$signed(wire29[(1'h1):(1'h1)])};
          reg39 <= reg32[(4'h9):(4'h9)];
          if ((-reg38[(3'h7):(1'h1)]))
            begin
              reg40 <= (8'hb8);
              reg41 <= $unsigned((&reg35));
              reg42 <= {wire27[(2'h2):(1'h0)],
                  $unsigned(($unsigned((+reg37)) ?
                      ((wire28 ? reg38 : reg33) ?
                          (8'ha7) : (wire29 || wire27)) : ($signed(wire27) ^~ {reg33})))};
            end
          else
            begin
              reg40 <= wire29;
              reg41 <= (^$unsigned((((+reg32) & (reg33 ?
                  reg39 : wire29)) & $signed(reg32))));
              reg42 <= reg40[(4'ha):(3'h5)];
            end
          if ((|($signed(({wire28} | $unsigned(wire30))) ?
              $signed($signed((reg37 | wire30))) : (~$signed({(8'hb6)})))))
            begin
              reg43 <= wire29[(4'hb):(1'h0)];
              reg44 <= (8'ha0);
            end
          else
            begin
              reg43 <= $signed((((reg33[(2'h2):(2'h2)] ?
                      reg39 : $unsigned(reg34)) ?
                  {reg39[(4'ha):(4'h9)]} : (reg37[(4'ha):(4'ha)] ?
                      wire27[(1'h0):(1'h0)] : (reg43 ?
                          (8'ha4) : reg37))) ^~ {(-$unsigned(reg42)),
                  (reg32[(2'h2):(1'h0)] ? reg36[(1'h0):(1'h0)] : {wire27})}));
            end
        end
      reg45 <= {({reg43[(1'h0):(1'h0)]} - $signed((^$signed(reg38)))),
          (~^($signed($signed(wire29)) ?
              reg37[(4'hf):(3'h6)] : (|(reg41 == reg44))))};
    end
  assign wire46 = $signed(reg44);
  assign wire47 = $signed((reg38 ^ reg32[(3'h4):(1'h1)]));
  assign wire48 = (reg34 ?
                      $unsigned(((-$signed(reg35)) & $unsigned($unsigned(wire47)))) : (|(-wire29)));
  assign wire49 = reg40[(4'h8):(2'h2)];
  assign wire50 = $signed((reg42[(2'h3):(1'h1)] ?
                      $unsigned(reg35[(2'h2):(2'h2)]) : (+(reg33[(1'h0):(1'h0)] ?
                          {wire48, (8'haf)} : wire27))));
  assign wire51 = (8'hb1);
  assign wire52 = reg42[(5'h11):(4'he)];
  assign wire53 = $unsigned((^~reg35[(1'h0):(1'h0)]));
  assign wire54 = $signed($signed((reg36[(1'h0):(1'h0)] ~^ $signed($signed(wire49)))));
  assign wire55 = (wire48[(4'h9):(3'h7)] ?
                      {$signed(wire54[(3'h5):(3'h4)]),
                          (((reg34 ? wire49 : wire47) ?
                              (wire53 ?
                                  (8'hbd) : reg37) : $signed((8'had))) & {(reg33 ?
                                  reg42 : wire47),
                              wire31[(3'h7):(3'h6)]})} : ((((~wire30) ?
                          (8'hb3) : reg38[(2'h2):(2'h2)]) != {(^reg33)}) & (wire47 ?
                          $unsigned((reg39 | reg36)) : wire31[(1'h0):(1'h0)])));
  assign wire56 = (($signed((8'ha9)) ?
                          wire55 : {($signed(wire49) ?
                                  (wire55 ?
                                      wire28 : wire50) : (reg42 || reg42))}) ?
                      (^$unsigned(($signed(reg43) ?
                          (8'hb4) : ((7'h42) ?
                              reg34 : wire55)))) : ((^reg34[(4'hb):(4'hb)]) >= wire54));
  assign wire57 = (~^(&(+$unsigned({(8'ha5), reg32}))));
  assign wire58 = $signed($unsigned($signed(reg38[(4'h9):(2'h3)])));
  assign wire59 = (~wire53[(3'h5):(2'h2)]);
  assign wire60 = (^wire30);
  assign wire61 = reg40[(4'hc):(4'h8)];
  assign wire62 = reg38[(3'h7):(3'h4)];
  assign wire63 = reg39[(2'h3):(2'h2)];
  always
    @(posedge clk) begin
      reg64 <= $signed($unsigned(wire58));
      reg65 <= ((~(~&$signed(reg64[(3'h6):(2'h3)]))) <= ($unsigned(reg32) | (~$unsigned((wire52 && wire49)))));
      if ($unsigned(wire29))
        begin
          if (((~$unsigned(reg38)) - $signed({((wire52 ?
                  reg65 : (8'hbf)) <<< (8'h9c))})))
            begin
              reg66 <= {reg42, wire59};
              reg67 <= ((!(&wire63)) ?
                  ({(8'ha0)} != (^~(^(^wire63)))) : wire60[(4'h9):(4'h9)]);
            end
          else
            begin
              reg66 <= ($unsigned(($signed((wire60 > reg33)) ?
                      {(reg40 ^~ wire62)} : (^(8'ha5)))) ?
                  $signed((8'hb6)) : ($unsigned($signed(wire31)) ^~ reg38[(1'h1):(1'h0)]));
            end
        end
      else
        begin
          if ($unsigned($unsigned((wire58[(5'h14):(3'h5)] ?
              ((wire51 >= wire57) ^ reg42[(3'h4):(1'h0)]) : $unsigned((-wire53))))))
            begin
              reg66 <= reg65;
            end
          else
            begin
              reg66 <= $signed((^~wire49));
            end
          reg67 <= (^~{(reg32[(1'h0):(1'h0)] ?
                  ((&wire62) ? (~&wire27) : (reg44 * reg42)) : reg64),
              {(^$unsigned(wire47))}});
          reg68 <= (~|($signed($signed(reg39[(4'h9):(4'h8)])) ?
              (8'hb3) : (~((wire27 ? wire47 : (8'hae)) ?
                  $unsigned(reg33) : {(8'hb5)}))));
          reg69 <= $unsigned($signed(wire60[(4'hb):(1'h0)]));
        end
      reg70 <= (reg33[(2'h2):(2'h2)] ?
          reg45[(3'h6):(1'h1)] : $signed(($signed($signed((8'h9e))) ?
              $unsigned(wire51[(4'hc):(4'h9)]) : (reg40 ?
                  (wire53 ~^ wire59) : wire58))));
      reg71 <= (~&(wire50 ?
          $signed(wire47[(4'h8):(2'h3)]) : $unsigned((~reg37[(4'h9):(3'h6)]))));
    end
  assign wire72 = reg35;
  assign wire73 = (wire51 ?
                      ({reg67} ?
                          wire60[(1'h1):(1'h0)] : reg33) : ($signed(((^~reg39) ?
                          {wire61} : (wire62 ?
                              wire31 : wire47))) * $unsigned({$signed(wire51)})));
endmodule

(* use_dsp48="no" *) (* use_dsp="no" *) module module237
#(parameter param265 = (+(8'ha4)), 
parameter param266 = param265)
(y, clk, wire241, wire240, wire239, wire238);
  output wire [(32'h103):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire signed [(3'h6):(1'h0)] wire241;
  input wire [(4'h8):(1'h0)] wire240;
  input wire [(4'he):(1'h0)] wire239;
  input wire signed [(2'h2):(1'h0)] wire238;
  wire [(3'h7):(1'h0)] wire258;
  wire signed [(5'h15):(1'h0)] wire257;
  wire [(2'h2):(1'h0)] wire256;
  wire signed [(4'hc):(1'h0)] wire255;
  wire [(5'h14):(1'h0)] wire254;
  wire [(4'hb):(1'h0)] wire253;
  wire signed [(5'h13):(1'h0)] wire252;
  wire signed [(3'h4):(1'h0)] wire251;
  wire signed [(4'hf):(1'h0)] wire250;
  wire [(4'hf):(1'h0)] wire249;
  wire [(3'h7):(1'h0)] wire248;
  wire signed [(3'h5):(1'h0)] wire247;
  wire signed [(3'h7):(1'h0)] wire246;
  wire signed [(4'ha):(1'h0)] wire245;
  wire signed [(4'he):(1'h0)] wire244;
  wire signed [(4'hc):(1'h0)] wire243;
  wire signed [(5'h14):(1'h0)] wire242;
  reg signed [(5'h15):(1'h0)] reg264 = (1'h0);
  reg [(3'h5):(1'h0)] reg263 = (1'h0);
  reg signed [(3'h5):(1'h0)] reg262 = (1'h0);
  reg [(3'h4):(1'h0)] reg261 = (1'h0);
  reg signed [(4'he):(1'h0)] reg260 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg259 = (1'h0);
  assign y = {wire258,
                 wire257,
                 wire256,
                 wire255,
                 wire254,
                 wire253,
                 wire252,
                 wire251,
                 wire250,
                 wire249,
                 wire248,
                 wire247,
                 wire246,
                 wire245,
                 wire244,
                 wire243,
                 wire242,
                 reg264,
                 reg263,
                 reg262,
                 reg261,
                 reg260,
                 reg259,
                 (1'h0)};
  assign wire242 = $unsigned((8'hb1));
  assign wire243 = $signed(wire239[(3'h4):(3'h4)]);
  assign wire244 = ((^~($unsigned($unsigned(wire238)) ?
                           wire238[(1'h0):(1'h0)] : wire243[(3'h7):(2'h2)])) ?
                       (((+((8'h9d) ?
                           wire243 : wire240)) == wire243) + ($signed({wire238,
                               wire241}) ?
                           (-((8'ha8) >>> (8'hb7))) : wire240[(3'h7):(3'h4)])) : (~|{$unsigned({wire238})}));
  assign wire245 = (8'hbd);
  assign wire246 = ({$signed(wire241)} ?
                       wire238 : (~^($unsigned(wire244) > $unsigned($unsigned((8'hba))))));
  assign wire247 = ((wire242[(3'h6):(1'h1)] ?
                           wire240 : ($unsigned($unsigned(wire245)) >= wire240[(3'h7):(3'h5)])) ?
                       wire241[(3'h6):(1'h0)] : (~&{$unsigned(wire242[(4'hd):(4'h8)]),
                           ((wire245 != wire240) * wire244[(4'h8):(1'h0)])}));
  assign wire248 = (^~((~wire240) & $signed(($unsigned((8'hb2)) ?
                       (|wire246) : wire246[(3'h6):(1'h1)]))));
  assign wire249 = $signed(wire244);
  assign wire250 = wire246;
  assign wire251 = (~|$unsigned(wire245));
  assign wire252 = ((wire250 >>> $signed($unsigned($unsigned(wire243)))) ^~ wire250[(4'hf):(3'h4)]);
  assign wire253 = wire252[(4'hb):(2'h3)];
  assign wire254 = $unsigned($signed((($unsigned(wire247) ?
                           wire241 : $unsigned(wire238)) ?
                       {(wire246 ? wire247 : wire249),
                           $signed(wire245)} : (((8'hb5) ?
                           (7'h44) : wire238) - $unsigned(wire250)))));
  assign wire255 = (($signed(wire252[(5'h11):(2'h3)]) ?
                           (~^wire251[(1'h0):(1'h0)]) : (~wire254)) ?
                       $unsigned($unsigned(($unsigned(wire250) ?
                           (!wire253) : wire245))) : $signed($unsigned($unsigned(wire244))));
  assign wire256 = (~^$unsigned($unsigned((~&$unsigned(wire253)))));
  assign wire257 = {$signed($unsigned((((8'h9e) ?
                           wire238 : (8'h9d)) ^~ (wire254 < wire256)))),
                       wire246[(3'h7):(3'h5)]};
  assign wire258 = $unsigned(((wire238[(2'h2):(2'h2)] ?
                       wire250 : (!{wire256})) >= $unsigned((wire241 != wire241))));
  always
    @(posedge clk) begin
      if (wire251[(2'h2):(2'h2)])
        begin
          reg259 <= wire245;
          reg260 <= $unsigned((&(-((!wire244) ?
              {wire255, wire250} : wire248[(3'h7):(2'h2)]))));
          if (wire257)
            begin
              reg261 <= (reg260[(4'h8):(3'h6)] ?
                  $unsigned($unsigned($unsigned(reg259))) : ((^(8'hb2)) ~^ wire253[(2'h3):(2'h3)]));
              reg262 <= $signed(wire258);
              reg263 <= (wire243[(4'ha):(3'h5)] ?
                  (wire253 ?
                      (-{wire239[(2'h3):(2'h3)],
                          (^wire250)}) : wire246[(3'h4):(2'h2)]) : ($unsigned(($unsigned(wire253) > (8'hbd))) != wire258[(3'h6):(2'h2)]));
            end
          else
            begin
              reg261 <= wire241[(1'h0):(1'h0)];
              reg262 <= (wire244 ? $signed(wire241) : wire252);
            end
        end
      else
        begin
          reg259 <= reg261;
          reg260 <= $signed((&((8'hb2) ?
              {wire253} : ($unsigned((8'hb0)) ?
                  $unsigned(wire248) : $signed((8'ha5))))));
        end
      reg264 <= (~(-$signed((^~$unsigned((7'h40))))));
    end
endmodule

(* use_dsp48="no" *) (* use_dsp="no" *) module module176
#(parameter param211 = {{(({(7'h43)} ? (|(8'hbb)) : (8'haf)) ? (|((8'hb7) <<< (8'haf))) : (-{(8'hac), (8'hb9)})), ((~((8'hbe) ? (8'hbc) : (8'h9e))) < ((~&(8'hb1)) ? ((8'hb2) ? (8'hb2) : (8'hbc)) : (|(8'ha6))))}, (!({(~^(8'ha4)), ((8'h9e) ^ (8'hb2))} ? ((|(8'ha6)) ? ((8'hbc) ? (8'hb1) : (8'had)) : (8'hb9)) : (-((8'hbf) ? (8'hbf) : (8'hb4)))))}, 
parameter param212 = ((~^(~(^(param211 >> param211)))) >> (!(|(-param211)))))
(y, clk, wire180, wire179, wire178, wire177);
  output wire [(32'h171):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(4'hc):(1'h0)] wire180;
  input wire [(4'ha):(1'h0)] wire179;
  input wire [(4'hd):(1'h0)] wire178;
  input wire [(4'hf):(1'h0)] wire177;
  wire [(5'h12):(1'h0)] wire210;
  wire [(4'h9):(1'h0)] wire209;
  wire signed [(5'h11):(1'h0)] wire208;
  wire signed [(4'hc):(1'h0)] wire207;
  wire signed [(4'hc):(1'h0)] wire206;
  wire signed [(5'h10):(1'h0)] wire205;
  wire [(5'h15):(1'h0)] wire204;
  wire signed [(4'hc):(1'h0)] wire203;
  wire [(5'h13):(1'h0)] wire202;
  wire [(5'h11):(1'h0)] wire201;
  wire signed [(4'hd):(1'h0)] wire200;
  wire [(2'h3):(1'h0)] wire199;
  wire signed [(3'h4):(1'h0)] wire198;
  wire [(4'he):(1'h0)] wire187;
  wire signed [(2'h2):(1'h0)] wire186;
  wire signed [(3'h7):(1'h0)] wire185;
  wire signed [(3'h4):(1'h0)] wire184;
  wire signed [(5'h14):(1'h0)] wire183;
  wire signed [(4'hc):(1'h0)] wire182;
  wire signed [(5'h15):(1'h0)] wire181;
  reg signed [(4'ha):(1'h0)] reg197 = (1'h0);
  reg signed [(3'h5):(1'h0)] reg196 = (1'h0);
  reg [(4'hc):(1'h0)] reg195 = (1'h0);
  reg signed [(5'h14):(1'h0)] reg194 = (1'h0);
  reg [(4'hc):(1'h0)] reg193 = (1'h0);
  reg [(5'h15):(1'h0)] reg192 = (1'h0);
  reg [(4'h9):(1'h0)] reg191 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg190 = (1'h0);
  reg [(4'hb):(1'h0)] reg189 = (1'h0);
  reg signed [(3'h7):(1'h0)] reg188 = (1'h0);
  assign y = {wire210,
                 wire209,
                 wire208,
                 wire207,
                 wire206,
                 wire205,
                 wire204,
                 wire203,
                 wire202,
                 wire201,
                 wire200,
                 wire199,
                 wire198,
                 wire187,
                 wire186,
                 wire185,
                 wire184,
                 wire183,
                 wire182,
                 wire181,
                 reg197,
                 reg196,
                 reg195,
                 reg194,
                 reg193,
                 reg192,
                 reg191,
                 reg190,
                 reg189,
                 reg188,
                 (1'h0)};
  assign wire181 = (~$unsigned($unsigned(((wire179 * wire180) >= (wire179 ?
                       wire178 : wire177)))));
  assign wire182 = wire179[(1'h0):(1'h0)];
  assign wire183 = (~|wire178);
  assign wire184 = $signed($unsigned({($signed(wire178) & wire179[(2'h2):(2'h2)])}));
  assign wire185 = (+(wire181[(5'h11):(2'h2)] | ($signed({wire183}) ?
                       $signed($unsigned(wire178)) : wire181)));
  assign wire186 = $signed(wire177[(4'hc):(1'h0)]);
  assign wire187 = ((($signed($signed(wire186)) ?
                           wire181 : ($signed(wire186) && $signed(wire185))) ?
                       wire184 : {$signed($unsigned(wire184)),
                           $signed(wire183[(4'hb):(4'ha)])}) && wire179[(4'h9):(3'h4)]);
  always
    @(posedge clk) begin
      reg188 <= (|wire186);
      if ((!$signed(wire181)))
        begin
          reg189 <= {{wire177[(2'h2):(2'h2)]}};
        end
      else
        begin
          reg189 <= wire181;
          if ((+(~^({(^(8'hb2))} >> (8'hb9)))))
            begin
              reg190 <= ((~&((((8'haf) * (8'haa)) <= (reg188 > wire183)) ?
                  {((7'h43) != wire186)} : wire185)) ^ wire178[(1'h1):(1'h1)]);
              reg191 <= $signed((8'hb7));
            end
          else
            begin
              reg190 <= $unsigned((reg189[(1'h1):(1'h1)] ?
                  {wire184[(1'h0):(1'h0)]} : (reg190[(1'h0):(1'h0)] <<< (-$signed(reg188)))));
              reg191 <= $signed($unsigned(reg189));
              reg192 <= $unsigned($unsigned($unsigned(({(8'haa)} >= (~wire184)))));
              reg193 <= (8'hbb);
            end
          reg194 <= ((($unsigned(wire183) <<< ((reg193 - reg191) ?
                  wire179[(1'h1):(1'h1)] : (reg188 ? (8'hb7) : reg191))) ?
              $signed(($signed(wire177) == wire187)) : ((!(~^(8'hba))) ?
                  $unsigned(reg191) : wire187)) ^ (8'hb8));
          reg195 <= (~^(((!((8'h9d) - wire182)) ?
              $signed($signed(wire180)) : $unsigned(reg194)) + reg192));
        end
      reg196 <= wire186[(2'h2):(1'h1)];
      reg197 <= $unsigned(reg196[(1'h1):(1'h0)]);
    end
  assign wire198 = $signed(($signed((-wire183[(3'h6):(1'h0)])) >>> (!(reg190 >= $signed(wire181)))));
  assign wire199 = wire184[(2'h2):(1'h0)];
  assign wire200 = $unsigned((wire178 ? reg191[(2'h2):(2'h2)] : (~|reg189)));
  assign wire201 = (|wire177);
  assign wire202 = (((8'hb0) >> reg189[(2'h3):(1'h1)]) ?
                       ((&($unsigned(wire201) <= $unsigned(wire181))) ?
                           wire177 : wire201) : $unsigned(wire187));
  assign wire203 = reg188;
  assign wire204 = (~&$signed(reg195));
  assign wire205 = ($signed(((|wire201) || $signed($signed(wire198)))) >>> $unsigned($unsigned(reg193)));
  assign wire206 = (~((^wire178) < (wire198[(2'h2):(1'h1)] ?
                       $unsigned((8'h9f)) : $unsigned($unsigned((7'h43))))));
  assign wire207 = (~^(~({reg194[(4'h9):(3'h5)], $signed(wire202)} ?
                       $signed((wire203 >> (8'haf))) : (-((8'hb7) ?
                           wire177 : wire199)))));
  assign wire208 = $unsigned({(~^$unsigned(wire187[(3'h5):(3'h4)]))});
  assign wire209 = (^$signed({reg194,
                       ((~^reg190) ? (8'ha0) : $signed((8'h9e)))}));
  assign wire210 = (~&(wire204 >> wire209));
endmodule

(* use_dsp48="no" *) (* use_dsp="no" *) module module164  (y, clk, wire168, wire167, wire166, wire165);
  output wire [(32'h22):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(2'h3):(1'h0)] wire168;
  input wire [(5'h11):(1'h0)] wire167;
  input wire signed [(4'hf):(1'h0)] wire166;
  input wire [(5'h14):(1'h0)] wire165;
  wire signed [(4'ha):(1'h0)] wire172;
  wire signed [(3'h5):(1'h0)] wire171;
  wire signed [(4'hb):(1'h0)] wire170;
  wire signed [(3'h7):(1'h0)] wire169;
  assign y = {wire172, wire171, wire170, wire169, (1'h0)};
  assign wire169 = (|(wire167 ~^ wire167));
  assign wire170 = ((wire167[(4'ha):(3'h6)] == ((-$unsigned(wire169)) >>> (8'h9e))) | wire166);
  assign wire171 = ((~|((+(wire167 ? wire167 : wire166)) ?
                           wire167[(4'hd):(4'hd)] : wire165[(4'hf):(4'h9)])) ?
                       $signed((((wire165 ?
                               wire170 : wire166) <<< (~&wire170)) ?
                           $unsigned(wire169) : $signed((wire165 <<< wire167)))) : (~{(^~wire165)}));
  assign wire172 = wire168;
endmodule

(* use_dsp48="no" *) (* use_dsp="no" *) module module134
#(parameter param160 = (((^~(+(+(8'hba)))) >= ((~&{(8'hba)}) ? ((8'had) != ((8'hb5) ? (8'hac) : (8'hb7))) : (8'ha1))) ^ ((((!(7'h44)) ? ((8'hbd) <<< (8'h9f)) : ((8'hb9) ? (8'hbf) : (8'hb1))) ? ({(8'hac)} ? (~|(8'hbe)) : ((8'hb3) ? (8'ha3) : (8'h9f))) : (^{(8'hb3), (8'hbc)})) ? ({((8'hbc) && (8'h9f))} && (~&{(7'h40)})) : ((((7'h41) ? (7'h43) : (8'ha1)) && (^(7'h41))) ? (-(~^(8'ha1))) : (((8'ha6) > (8'ha2)) * {(8'hb9)})))), 
parameter param161 = (param160 ? (param160 ? ({param160} <= (|param160)) : param160) : (^(({param160, param160} ? (param160 ? param160 : param160) : {param160}) ? {(param160 == param160), (param160 ? param160 : param160)} : param160))))
(y, clk, wire139, wire138, wire137, wire136, wire135);
  output wire [(32'hca):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire signed [(5'h14):(1'h0)] wire139;
  input wire [(2'h2):(1'h0)] wire138;
  input wire [(5'h10):(1'h0)] wire137;
  input wire [(3'h6):(1'h0)] wire136;
  input wire signed [(4'h9):(1'h0)] wire135;
  wire signed [(2'h2):(1'h0)] wire159;
  wire signed [(2'h3):(1'h0)] wire158;
  wire [(5'h10):(1'h0)] wire157;
  wire [(5'h13):(1'h0)] wire156;
  wire [(4'hf):(1'h0)] wire155;
  wire [(4'he):(1'h0)] wire154;
  wire signed [(3'h5):(1'h0)] wire153;
  wire [(4'hf):(1'h0)] wire152;
  wire signed [(4'h8):(1'h0)] wire151;
  wire signed [(3'h5):(1'h0)] wire150;
  wire signed [(4'he):(1'h0)] wire149;
  wire signed [(3'h7):(1'h0)] wire148;
  wire signed [(3'h6):(1'h0)] wire147;
  wire [(4'hd):(1'h0)] wire146;
  wire signed [(5'h11):(1'h0)] wire144;
  wire signed [(4'hc):(1'h0)] wire140;
  reg signed [(4'h9):(1'h0)] reg145 = (1'h0);
  reg [(3'h5):(1'h0)] reg143 = (1'h0);
  reg signed [(4'ha):(1'h0)] reg142 = (1'h0);
  reg [(3'h6):(1'h0)] reg141 = (1'h0);
  assign y = {wire159,
                 wire158,
                 wire157,
                 wire156,
                 wire155,
                 wire154,
                 wire153,
                 wire152,
                 wire151,
                 wire150,
                 wire149,
                 wire148,
                 wire147,
                 wire146,
                 wire144,
                 wire140,
                 reg145,
                 reg143,
                 reg142,
                 reg141,
                 (1'h0)};
  assign wire140 = wire139;
  always
    @(posedge clk) begin
      reg141 <= wire136;
      reg142 <= (+((wire136 ?
              $signed((wire139 && wire137)) : (^~((8'hb6) ?
                  wire136 : wire135))) ?
          (($signed((8'h9d)) ? (+(8'ha9)) : wire138) ?
              (wire140 + (^wire135)) : wire139) : (wire140 & ($signed(wire138) && $signed((8'ha9))))));
      reg143 <= $unsigned(((!wire136) ?
          (($signed(wire139) ?
              (^~wire138) : (wire138 ? reg142 : wire135)) <= (+(wire140 ?
              (7'h41) : reg141))) : $signed($signed($signed(wire140)))));
    end
  assign wire144 = $unsigned(($signed(({(8'hab), reg143} ?
                       (^~reg142) : reg143)) >= $unsigned((wire139[(4'hd):(4'hb)] >> wire138))));
  always
    @(posedge clk) begin
      reg145 <= {wire137[(1'h1):(1'h1)]};
    end
  assign wire146 = ($unsigned((~^$signed($unsigned(reg141)))) ?
                       reg142[(3'h6):(3'h4)] : ($unsigned($unsigned((^~reg142))) ?
                           $signed($unsigned(wire135[(1'h1):(1'h1)])) : {wire140}));
  assign wire147 = (|$unsigned($signed((wire136 ?
                       (wire146 ? wire144 : wire138) : $signed(reg142)))));
  assign wire148 = wire147;
  assign wire149 = ($unsigned($unsigned((~^wire147))) ~^ (~(~^wire144[(5'h10):(3'h6)])));
  assign wire150 = $unsigned(reg145[(3'h5):(3'h5)]);
  assign wire151 = wire137[(3'h5):(2'h3)];
  assign wire152 = (~(~|$unsigned({$unsigned(wire148)})));
  assign wire153 = $signed(((wire139 || (|wire138[(1'h1):(1'h1)])) && $signed((((8'hac) ?
                       wire146 : (8'hb8)) ^~ $signed(wire146)))));
  assign wire154 = $unsigned($unsigned(($signed((&wire139)) ?
                       wire138 : (wire136[(3'h6):(3'h4)] ?
                           wire136[(3'h4):(1'h1)] : (8'ha1)))));
  assign wire155 = $signed($unsigned($unsigned(wire144[(4'h9):(3'h4)])));
  assign wire156 = wire146[(2'h2):(2'h2)];
  assign wire157 = $unsigned(wire136);
  assign wire158 = (wire157 >> wire152);
  assign wire159 = reg141;
endmodule

(* use_dsp48="no" *) (* use_dsp="no" *) module module115  (y, clk, wire120, wire119, wire118, wire117, wire116);
  output wire [(32'h60):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(2'h3):(1'h0)] wire120;
  input wire signed [(4'hb):(1'h0)] wire119;
  input wire signed [(2'h3):(1'h0)] wire118;
  input wire [(3'h4):(1'h0)] wire117;
  input wire signed [(4'ha):(1'h0)] wire116;
  wire signed [(4'hf):(1'h0)] wire128;
  wire signed [(4'h8):(1'h0)] wire125;
  wire signed [(4'ha):(1'h0)] wire124;
  wire signed [(5'h14):(1'h0)] wire123;
  wire [(4'h8):(1'h0)] wire122;
  wire [(3'h5):(1'h0)] wire121;
  reg [(4'hb):(1'h0)] reg127 = (1'h0);
  reg [(5'h12):(1'h0)] reg126 = (1'h0);
  assign y = {wire128,
                 wire125,
                 wire124,
                 wire123,
                 wire122,
                 wire121,
                 reg127,
                 reg126,
                 (1'h0)};
  assign wire121 = wire116;
  assign wire122 = wire121;
  assign wire123 = {$signed({wire120[(2'h3):(1'h0)]}),
                       ($unsigned($unsigned(wire118[(2'h2):(1'h1)])) || ((8'hb0) < wire118[(1'h0):(1'h0)]))};
  assign wire124 = ((wire118 ?
                           wire118[(2'h2):(2'h2)] : (wire121[(2'h2):(1'h1)] ?
                               wire118 : wire116[(1'h1):(1'h0)])) ?
                       {wire121[(2'h2):(1'h1)],
                           $unsigned(wire122)} : (wire122 > (8'hb5)));
  assign wire125 = (((~|(~&$unsigned(wire116))) >= ((!$signed(wire124)) * (wire117 || wire117))) > wire124[(3'h5):(3'h4)]);
  always
    @(posedge clk) begin
      reg126 <= (~^$signed((wire119 ?
          ((8'had) + (wire125 ? wire121 : wire122)) : (|wire117))));
      reg127 <= $unsigned({{wire117}});
    end
  assign wire128 = wire121;
endmodule