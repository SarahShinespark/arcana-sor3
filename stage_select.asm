org $86DDBD
Stage_Select_Ch2:
  dw $0000              ;06DDBD; $11C3-11CA (Condition)
  dw $0000              ;06DDBF;  
  dw $0000              ;06DDC1;  
  dw $0002              ;06DDC3;  
  dw $0000              ;06DDC5; $11DB-11E2 (Condition mirror)
  dw $0000              ;06DDC7;  
  dw $0000              ;06DDC9;  
  dw $0001              ;06DDCB;  
  dw $0000              ;06DDCD; $11F3-11FA
  dw $0001              ;06DDCF;  
  dw $0002              ;06DDD1;  
  dw $0003              ;06DDD3;  
  dw $002B              ;06DDD5; $1223-122A (Strength)
  dw $001A              ;06DDD7;  
  dw $0011              ;06DDD9;  
  dw $0000              ;06DDDB;  
  dw $0023              ;06DDDD; $123B-1242 (Intelligence)
  dw $002B              ;06DDDF;  
  dw $001A              ;06DDE1;  
  dw $0000              ;06DDE3;  
  dw $002B              ;06DDE5; $1253-125A (Endurance)
  dw $002B              ;06DDE7;  
  dw $0019              ;06DDE9;  
  dw $0000              ;06DDEB;  
  dw $0023              ;06DDED; $126B-1272 (Alertness)
  dw $0026              ;06DDEF;  
  dw $0016              ;06DDF1;  
  dw $0000              ;06DDF3;
; $1283-128A (Equipped Weapon)  
  dw $0004              ;06DDF5; Broad Sword (Rooks)
  dw $0000              ;06DDF7;  
  dw $0619              ;06DDF9; Flare Wand (Sarah)
  dw $0000              ;06DDFB;
; $129B-12A2 (Equipped Armor)  
  dw $002B              ;06DDFD; Ring Mail (Rooks)
  dw $0000              ;06DDFF;  
  dw $063D              ;06DE01; Mythril Robe (Sarah)
  dw $0000              ;06DE03;
; $12B3-12BA (Equipped Amulet)  
  dw $0052              ;06DE05; Large Shield (Rooks)
  dw $0000              ;06DE07;  
  dw $0651              ;06DE09; Small Shield (Sarah)
  dw $0000              ;06DE0B;
; $12CB-12D2 (Equipped Ring)  
  dw $0000              ;06DE0D;
  dw $0000              ;06DE0F;  
  dw $0000              ;06DE11;  
  dw $0000              ;06DE13;
; $12F3-12FA (Current HP)  
  dw $0135              ;06DE15;
  dw $00E6              ;06DE17;  
  dw $00E2              ;06DE19;  
  dw $0000              ;06DE1B;  
  dw $0135              ;06DE1D;  
  dw $00E6              ;06DE1F;  
  dw $00E2              ;06DE21;  
  dw $0000              ;06DE23;
; $1323-132A (Current MP)  
  dw $004A              ;06DE25;
  dw $004A              ;06DE27;  
  dw $002F              ;06DE29;  
  dw $0000              ;06DE2B;  
  dw $004A              ;06DE2D;  
  dw $004A              ;06DE2F;  
  dw $002F              ;06DE31;  
  dw $0000              ;06DE33;  
  dw $00E6              ;06DE35; $1353-135A (Spirits current HP) ??
  dw $FFFF              ;06DE37;  
  dw $FFFF              ;06DE39;  
  dw $FFFF              ;06DE3B;  
  dw $004A              ;06DE3D; $135B-1362 (Spirits current MP) ??
  dw $FFFF              ;06DE3F;  
  dw $FFFF              ;06DE41;  
  dw $FFFF              ;06DE43;  
  dw $0190              ;06DE45; $1363-136A (EXP to next level)
  dw $0096              ;06DE47;  
  dw $0096              ;06DE49;  
  dw $0000              ;06DE4B;  
  dw $000A              ;06DE4D; $137B-1382 (Current LVL)
  dw $000A              ;06DE4F;  
  dw $0007              ;06DE51;  
  dw $0000              ;06DE53;  
  dw $0135              ;06DE55; $1393-139A (Max HP)
  dw $00E6              ;06DE57;  
  dw $00E2              ;06DE59;  
  dw $0000              ;06DE5B;  
  dw $004A              ;06DE5D; $139B-13A2 (Max MP)
  dw $004A              ;06DE5F;  
  dw $002F              ;06DE61;  
  dw $0000              ;06DE63;  
  dw $000E              ;06DE65;  
  ; Card inventory  $13A9
  dw $0406              ;06DE67; Fog Card x4
  dw $0604              ;06DE69; Fire Card x6
  dw $0903              ;06DE6B; Water Card x9
  dw $0301              ;06DE6D; Wind Card x3
  dw $0302              ;06DE6F; Earth Card x3
  dw $0105              ;06DE71; Blood Card x1
  dw $0107              ;06DE73; Call Amulet x1
  dw $0000              ;06DE75;  
  ; Item inventory  $13B9
  dw $000B              ;06DE77; Herbs
  dw $000B              ;06DE79; Herbs
  dw $0003              ;06DE7B; Sleeping Bag
  dw $0003              ;06DE7D; Sleeping Bag
  dw $0003              ;06DE7F; Sleeping Bag
  dw $0001              ;06DE81; Return Ring
  dw $0000              ;06DE83;  
  dw $0000              ;06DE85;  
  dw $0000              ;06DE87;  
  dw $0000              ;06DE89;  
  dw $0000              ;06DE8B;  
  dw $0000              ;06DE8D;  
  dw $0000              ;06DE8F;  
  dw $0000              ;06DE91;  
  dw $0000              ;06DE93;  
  dw $0000              ;06DE95;  
  dw $0000              ;06DE97;  
  dw $0000              ;06DE99;  
  dw $0000              ;06DE9B;  
  dw $0000              ;06DE9D;  
  dw $0000              ;06DE9F;  
  dw $0000              ;06DEA1;  
  dw $0000              ;06DEA3;  
  dw $0000              ;06DEA5;  
  dw $0000              ;06DEA7;  
  dw $0000              ;06DEA9;  
  dw $0000              ;06DEAB;  
  dw $0000              ;06DEAD;  
  dw $0000              ;06DEAF;  
  dw $0000              ;06DEB1;  
  dw $0000              ;06DEB3;  
  dw $0000              ;06DEB5;  
  dw $0000              ;06DEB7;  
  dw $0000              ;06DEB9;  
  dw $0000              ;06DEBB;  
  dw $0000              ;06DEBD;  
  dw $0000              ;06DEBF;  
  dw $0000              ;06DEC1;  
  dw $0000              ;06DEC3;  
  dw $0000              ;06DEC5;  
  dw $0000              ;06DEC7;  
  dw $0000              ;06DEC9;  
  dw $0000              ;06DECB;  
  dw $0000              ;06DECD;  
  dw $0000              ;06DECF;  
  dw $0000              ;06DED1;  
  dw $0000              ;06DED3;  
  dw $0000              ;06DED5;
; Equipment inventory  $1419
  dw $0004              ;06DED7; Broad Sword (Rooks)
  dw $002B              ;06DED9; Ring Mail (Rooks)
  dw $0052              ;06DEDB; Large Shield (Rooks)
  dw $0619              ;06DEDD; Flare Wand (Sarah)
  dw $063D              ;06DEDF; Mythril Robe (Sarah)
  dw $0651              ;06DEE1; Small Shield (Sarah)
  dw $FF04              ;06DEE3; Broad Sword
  dw $FF2A              ;06DEE5; Hard Leather
  dw $FF5C              ;06DEE7; Metal Bracelet
  dw $FF76              ;06DEE9; Tiamat Repellent
  dw $FF00              ;06DEEB;  
  dw $FF00              ;06DEED;  
  dw $FF00              ;06DEEF;  
  dw $FF00              ;06DEF1;  
  dw $FF00              ;06DEF3;  
  dw $FF00              ;06DEF5;  
  dw $FF00              ;06DEF7;  
  dw $FF00              ;06DEF9;  
  dw $FF00              ;06DEFB;  
  dw $FF00              ;06DEFD;  
  dw $FF00              ;06DEFF;  
  dw $FF00              ;06DF01;  
  dw $FF00              ;06DF03;  
  dw $FF00              ;06DF05;  
  dw $FF00              ;06DF07;  
  dw $FF00              ;06DF09;  
  dw $FF00              ;06DF0B;  
  dw $FF00              ;06DF0D;  
  dw $FF00              ;06DF0F;  
  dw $FF00              ;06DF11;  
  dw $FF00              ;06DF13;  
  dw $FF00              ;06DF15;  
  dw $0021              ;06DF17; Rooks' spells
  dw $0038              ;06DF19;  
  dw $004B              ;06DF1B;  
  dw $0000              ;06DF1D;  
  dw $0000              ;06DF1F;  
  dw $0000              ;06DF21;  
  dw $0000              ;06DF23;  
  dw $0000              ;06DF25;  
  dw $0000              ;06DF27;  
  dw $0000              ;06DF29;  
  dw $0000              ;06DF2B;  
  dw $0000              ;06DF2D;  
  dw $0000              ;06DF2F;  
  dw $0000              ;06DF31;  
  dw $0000              ;06DF33;  
  dw $0000              ;06DF35;  
  dw $0000              ;06DF37;  
  dw $0000              ;06DF39;  
  dw $0000              ;06DF3B;  
  dw $0000              ;06DF3D;  
  dw $0000              ;06DF3F;  
  dw $0000              ;06DF41;  
  dw $0000              ;06DF43;  
  dw $0000              ;06DF45;  
  dw $0000              ;06DF47;  
  dw $0000              ;06DF49;  
  dw $0000              ;06DF4B;  
  dw $0000              ;06DF4D;  
  dw $0000              ;06DF4F;  
  dw $0000              ;06DF51;  
  dw $0000              ;06DF53;  
  dw $0000              ;06DF55;  
  dw $0043              ;06DF57; Sylph's spells
  dw $0001              ;06DF59;  
  dw $003F              ;06DF5B;  
  dw $0000              ;06DF5D;  
  dw $0000              ;06DF5F;  
  dw $0000              ;06DF61;  
  dw $0000              ;06DF63;  
  dw $0000              ;06DF65;  
  dw $0000              ;06DF67;  
  dw $0000              ;06DF69;  
  dw $0000              ;06DF6B;  
  dw $0000              ;06DF6D;  
  dw $0000              ;06DF6F;  
  dw $0000              ;06DF71;  
  dw $0000              ;06DF73;  
  dw $0000              ;06DF75;  
  dw $0000              ;06DF77;  
  dw $0000              ;06DF79;  
  dw $0000              ;06DF7B;  
  dw $0000              ;06DF7D;  
  dw $0000              ;06DF7F;  
  dw $0000              ;06DF81;  
  dw $0000              ;06DF83;  
  dw $0000              ;06DF85;  
  dw $0000              ;06DF87;  
  dw $0000              ;06DF89;  
  dw $0000              ;06DF8B;  
  dw $0000              ;06DF8D;  
  dw $0000              ;06DF8F;  
  dw $0000              ;06DF91;  
  dw $0000              ;06DF93;  
  dw $0000              ;06DF95;  
  dw $0020              ;06DF97; Salah's spells
  dw $0012              ;06DF99;  
  dw $000F              ;06DF9B;  
  dw $0000              ;06DF9D;  
  dw $0000              ;06DF9F;  
  dw $0000              ;06DFA1;  
  dw $0000              ;06DFA3;  
  dw $0000              ;06DFA5;  
  dw $0000              ;06DFA7;  
  dw $0000              ;06DFA9;  
  dw $0000              ;06DFAB;  
  dw $0000              ;06DFAD;  
  dw $0000              ;06DFAF;  
  dw $0000              ;06DFB1;  
  dw $0000              ;06DFB3;  
  dw $0000              ;06DFB5;  
  dw $0000              ;06DFB7;  
  dw $0000              ;06DFB9;  
  dw $0000              ;06DFBB;  
  dw $0000              ;06DFBD;  
  dw $0000              ;06DFBF;  
  dw $0000              ;06DFC1;  
  dw $0000              ;06DFC3;  
  dw $0000              ;06DFC5;  
  dw $0000              ;06DFC7;  
  dw $0000              ;06DFC9;  
  dw $0000              ;06DFCB;  
  dw $0000              ;06DFCD;  
  dw $0000              ;06DFCF;  
  dw $0000              ;06DFD1;  
  dw $0000              ;06DFD3;  
  dw $0000              ;06DFD5;  
  dw $0000              ;06DFD7; (Unused)
  dw $0000              ;06DFD9;  
  dw $0000              ;06DFDB;  
  dw $0000              ;06DFDD;  
  dw $0000              ;06DFDF;  
  dw $0000              ;06DFE1;  
  dw $0000              ;06DFE3;  
  dw $0000              ;06DFE5;  
  dw $0000              ;06DFE7;  
  dw $0000              ;06DFE9;  
  dw $0000              ;06DFEB;  
  dw $0000              ;06DFED;  
  dw $0000              ;06DFEF;  
  dw $0000              ;06DFF1;  
  dw $0000              ;06DFF3;  
  dw $0000              ;06DFF5;  
  dw $0000              ;06DFF7;  
  dw $0000              ;06DFF9;  
  dw $0000              ;06DFFB;  
  dw $0000              ;06DFFD;  
  dw $0000              ;06DFFF;  
  dw $0000              ;06E001;  
  dw $0000              ;06E003;  
  dw $0000              ;06E005;  
  dw $0000              ;06E007;  
  dw $0000              ;06E009;  
  dw $0000              ;06E00B;  
  dw $0000              ;06E00D;  
  dw $0000              ;06E00F;  
  dw $0000              ;06E011;  
  dw $0000              ;06E013;  
  dw $0000              ;06E015;  
  dw $03E8              ;06E017; Starting GP
  dw $0000              ;06E019; Starting party (00 = Rooks)
  dw $0001              ;06E01B; Sylph
  dw $0006              ;06E01D; Salah
  dw $0009              ;06E01F; Empty slot
  dw $0001              ;06E021;  
  dw $0000              ;06E023;  
  dw $0002              ;06E025;  
  dw $0000              ;06E027;  
  dw $0000              ;06E029;  
  dw $0000              ;06E02B;  
  dw $0000              ;06E02D;  
  dw $0000              ;06E02F;  
  dw $0005              ;06E031; Event flag? CH2

org $86E2BD 
Stage_Select_Ch3:
  dw $0000              ;06E2BD; $11C3-11CA (Condition)
  dw $0000              ;06E2BF;  
  dw $0002              ;06E2C1;  
  dw $0002              ;06E2C3;  
  dw $0000              ;06E2C5; $11DB-11E2 (Condition mirror)
  dw $0000              ;06E2C7;  
  dw $0000              ;06E2C9;  
  dw $0000              ;06E2CB;  
  dw $0000              ;06E2CD; $11F3-11FA
  dw $0001              ;06E2CF;  
  dw $0002              ;06E2D1;  
  dw $0003              ;06E2D3;  
  dw $004C              ;06E2D5; $1223-122A (Strength)
  dw $0050              ;06E2D7;  
  dw $0000              ;06E2D9;  
  dw $0000              ;06E2DB;  
  dw $003C              ;06E2DD; $123B-1242 (Intelligence)
  dw $003F              ;06E2DF;  
  dw $0000              ;06E2E1;  
  dw $0000              ;06E2E3;  
  dw $004C              ;06E2E5; $1253-125A (Endurance)
  dw $002D              ;06E2E7;  
  dw $0000              ;06E2E9;  
  dw $0000              ;06E2EB;  
  dw $003C              ;06E2ED; $126B-1272 (Alertness)
  dw $0050              ;06E2EF;  
  dw $0000              ;06E2F1;  
  dw $0000              ;06E2F3;
; $1283-128A (Equipped Weapon)  
  dw $0007              ;06E2F5;
  dw $0000              ;06E2F7;  
  dw $0000              ;06E2F9;  
  dw $0000              ;06E2FB;  
; $129B-12A2 (Equipped Armor)
  dw $002F              ;06E2FD;
  dw $0000              ;06E2FF;  
  dw $0000              ;06E301;  
  dw $0000              ;06E303;  
; $12B3-12BA (Equipped Amulet)
  dw $0055              ;06E305;
  dw $0000              ;06E307;  
  dw $0000              ;06E309;  
  dw $0000              ;06E30B;
; $12CB-12D2 (Equipped Ring)  
  dw $0000              ;06E30D;
  dw $0000              ;06E30F;  
  dw $0000              ;06E311;  
  dw $0000              ;06E313;  
  dw $01AD              ;06E315; $12F3-12FA (Current HP)
  dw $0172              ;06E317;  
  dw $0000              ;06E319;  
  dw $0000              ;06E31B;  
  dw $01AD              ;06E31D;  
  dw $0172              ;06E31F;  
  dw $0000              ;06E321;  
  dw $0000              ;06E323;  
  dw $0073              ;06E325; $1323-132A (Current MP)
  dw $006E              ;06E327;  
  dw $0000              ;06E329;  
  dw $0000              ;06E32B;  
  dw $0073              ;06E32D;  
  dw $006E              ;06E32F;  
  dw $0000              ;06E331;  
  dw $0000              ;06E333;  
  dw $FFFF              ;06E335; $1353-135A (Spirits current HP) ??
  dw $FFFF              ;06E337;  
  dw $FFFF              ;06E339;  
  dw $0172              ;06E33B;  
  dw $FFFF              ;06E33D; $135B-1362 (Spirits current MP) ??
  dw $FFFF              ;06E33F;  
  dw $FFFF              ;06E341;  
  dw $006E              ;06E343;  
  dw $0834              ;06E345; $1363-136A (EXP to next level)
  dw $0258              ;06E347;  
  dw $0000              ;06E349;  
  dw $0000              ;06E34B;  
  dw $0014              ;06E34D; $137B-1382 (Current LVL)
  dw $0014              ;06E34F;  
  dw $0000              ;06E351;  
  dw $0000              ;06E353;  
  dw $01AD              ;06E355; $1393-139A (Max HP)
  dw $0172              ;06E357;  
  dw $0000              ;06E359;  
  dw $0000              ;06E35B;  
  dw $0073              ;06E35D; $139B-13A2 (Max MP)
  dw $006E              ;06E35F;  
  dw $0000              ;06E361;  
  dw $0000              ;06E363;  
  dw $0006              ;06E365;
; Card inventory (ID/Quantity)  
  dw $0806              ;06E367; Fog Card x8
  dw $0902              ;06E369; Earth Card x9
  dw $0903              ;06E36B; Water Card x9
  dw $0901              ;06E36D; Wind Card x9
  dw $0904              ;06E36F; Fire Card x9
  dw $0305              ;06E371; Blood Card x3
  dw $0307              ;06E373; Call Amulet x3
  dw $0000              ;06E375;
; Item inventory Ch3  
  dw $000B              ;06E377; Herbs
  dw $0003              ;06E379; Sleeping Bag x7
  dw $0003              ;06E37B;  
  dw $0003              ;06E37D;  
  dw $0003              ;06E37F;  
  dw $0003              ;06E381;  
  dw $0003              ;06E383;  
  dw $0003              ;06E385;  
  dw $0001              ;06E387; Return Ring
  dw $0006              ;06E389; Wise Honey
  dw $0007              ;06E38B; Tough Honey
  dw $0008              ;06E38D; Quick Honey
  dw $0009              ;06E38F; Life Honey
  dw $000A              ;06E391; Mana Honey
  dw $0000              ;06E393;  
  dw $0000              ;06E395;  
  dw $0000              ;06E397;  
  dw $0000              ;06E399;  
  dw $0000              ;06E39B;  
  dw $0000              ;06E39D;  
  dw $0000              ;06E39F;  
  dw $0000              ;06E3A1;  
  dw $0000              ;06E3A3;  
  dw $0000              ;06E3A5;  
  dw $0000              ;06E3A7;  
  dw $0000              ;06E3A9;  
  dw $0000              ;06E3AB;  
  dw $0000              ;06E3AD;  
  dw $0000              ;06E3AF;  
  dw $0000              ;06E3B1;  
  dw $0000              ;06E3B3;  
  dw $0000              ;06E3B5;  
  dw $0000              ;06E3B7;  
  dw $0000              ;06E3B9;  
  dw $0000              ;06E3BB;  
  dw $0000              ;06E3BD;  
  dw $0000              ;06E3BF;  
  dw $0000              ;06E3C1;  
  dw $0000              ;06E3C3;  
  dw $0000              ;06E3C5;  
  dw $0000              ;06E3C7;  
  dw $0000              ;06E3C9;  
  dw $0000              ;06E3CB;  
  dw $0000              ;06E3CD;  
  dw $0000              ;06E3CF;  
  dw $0000              ;06E3D1;  
  dw $0000              ;06E3D3;  
  dw $0000              ;06E3D5;
; Equipment inventory  
  dw $0007              ;06E3D7; Wightslayer (Rooks)
  dw $002F              ;06E3D9; Breastplate (Rooks)
  dw $0055              ;06E3DB; Mythril Shield (Rooks)
  dw $FF21              ;06E3DD; Morning Star
  dw $FF30              ;06E3DF; Splint Mail
  dw $FF53              ;06E3E1; Buckler
  dw $FF06              ;06E3E3; Ice Blade
  dw $FF05              ;06E3E5; Bastard Sword
  dw $FF76              ;06E3E7; Tiamat Repellent
  dw $FF00              ;06E3E9;  
  dw $FF00              ;06E3EB;  
  dw $FF00              ;06E3ED;  
  dw $FF00              ;06E3EF;  
  dw $FF00              ;06E3F1;  
  dw $FF00              ;06E3F3;  
  dw $FF00              ;06E3F5;  
  dw $FF00              ;06E3F7;  
  dw $FF00              ;06E3F9;  
  dw $FF00              ;06E3FB;  
  dw $FF00              ;06E3FD;  
  dw $FF00              ;06E3FF;  
  dw $FF00              ;06E401;  
  dw $FF00              ;06E403;  
  dw $FF00              ;06E405;  
  dw $FF00              ;06E407;  
  dw $FF00              ;06E409;  
  dw $FF00              ;06E40B;  
  dw $FF00              ;06E40D;  
  dw $FF00              ;06E40F;  
  dw $FF00              ;06E411;  
  dw $FF00              ;06E413;  
  dw $FF00              ;06E415;  
  dw $0021              ;06E417; Rooks' spells (Chapter 3)
  dw $0038              ;06E419;  
  dw $004B              ;06E41B;  
  dw $0034              ;06E41D;  
  dw $004D              ;06E41F;  
  dw $004C              ;06E421;  
  dw $0022              ;06E423;  
  dw $0000              ;06E425;  
  dw $0000              ;06E427;  
  dw $0000              ;06E429;  
  dw $0000              ;06E42B;  
  dw $0000              ;06E42D;  
  dw $0000              ;06E42F;  
  dw $0000              ;06E431;  
  dw $0000              ;06E433;  
  dw $0000              ;06E435;  
  dw $0000              ;06E437;  
  dw $0000              ;06E439;  
  dw $0000              ;06E43B;  
  dw $0000              ;06E43D;  
  dw $0000              ;06E43F;  
  dw $0000              ;06E441;  
  dw $0000              ;06E443;  
  dw $0000              ;06E445;  
  dw $0000              ;06E447;  
  dw $0000              ;06E449;  
  dw $0000              ;06E44B;  
  dw $0000              ;06E44D;  
  dw $0000              ;06E44F;  
  dw $0000              ;06E451;  
  dw $0000              ;06E453;  
  dw $0000              ;06E455;  
  dw $0046              ;06E457; Efrite's spells (Chapter 3)
  dw $000A              ;06E459;  
  dw $0042              ;06E45B;  
  dw $000B              ;06E45D;  
  dw $001F              ;06E45F;  
  dw $002C              ;06E461;  
  dw $0000              ;06E463;  
  dw $0000              ;06E465;  
  dw $0000              ;06E467;  
  dw $0000              ;06E469;  
  dw $0000              ;06E46B;  
  dw $0000              ;06E46D;  
  dw $0000              ;06E46F;  
  dw $0000              ;06E471;  
  dw $0000              ;06E473;  
  dw $0000              ;06E475;  
  dw $0000              ;06E477;  
  dw $0000              ;06E479;  
  dw $0000              ;06E47B;  
  dw $0000              ;06E47D;  
  dw $0000              ;06E47F;  
  dw $0000              ;06E481;  
  dw $0000              ;06E483;  
  dw $0000              ;06E485;  
  dw $0000              ;06E487;  
  dw $0000              ;06E489;  
  dw $0000              ;06E48B;  
  dw $0000              ;06E48D;  
  dw $0000              ;06E48F;  
  dw $0000              ;06E491;  
  dw $0000              ;06E493;  
  dw $0000              ;06E495;  
  dw $0000              ;06E497; (Empty space)
  dw $0000              ;06E499;  
  dw $0000              ;06E49B;  
  dw $0000              ;06E49D;  
  dw $0000              ;06E49F;  
  dw $0000              ;06E4A1;  
  dw $0000              ;06E4A3;  
  dw $0000              ;06E4A5;  
  dw $0000              ;06E4A7;  
  dw $0000              ;06E4A9;  
  dw $0000              ;06E4AB;  
  dw $0000              ;06E4AD;  
  dw $0000              ;06E4AF;  
  dw $0000              ;06E4B1;  
  dw $0000              ;06E4B3;  
  dw $0000              ;06E4B5;  
  dw $0000              ;06E4B7;  
  dw $0000              ;06E4B9;  
  dw $0000              ;06E4BB;  
  dw $0000              ;06E4BD;  
  dw $0000              ;06E4BF;  
  dw $0000              ;06E4C1;  
  dw $0000              ;06E4C3;  
  dw $0000              ;06E4C5;  
  dw $0000              ;06E4C7;  
  dw $0000              ;06E4C9;  
  dw $0000              ;06E4CB;  
  dw $0000              ;06E4CD;  
  dw $0000              ;06E4CF;  
  dw $0000              ;06E4D1;  
  dw $0000              ;06E4D3;  
  dw $0000              ;06E4D5;  
  dw $0000              ;06E4D7; (Empty space)
  dw $0000              ;06E4D9;  
  dw $0000              ;06E4DB;  
  dw $0000              ;06E4DD;  
  dw $0000              ;06E4DF;  
  dw $0000              ;06E4E1;  
  dw $0000              ;06E4E3;  
  dw $0000              ;06E4E5;  
  dw $0000              ;06E4E7;  
  dw $0000              ;06E4E9;  
  dw $0000              ;06E4EB;  
  dw $0000              ;06E4ED;  
  dw $0000              ;06E4EF;  
  dw $0000              ;06E4F1;  
  dw $0000              ;06E4F3;  
  dw $0000              ;06E4F5;  
  dw $0000              ;06E4F7;  
  dw $0000              ;06E4F9;  
  dw $0000              ;06E4FB;  
  dw $0000              ;06E4FD;  
  dw $0000              ;06E4FF;  
  dw $0000              ;06E501;  
  dw $0000              ;06E503;  
  dw $0000              ;06E505;  
  dw $0000              ;06E507;  
  dw $0000              ;06E509;  
  dw $0000              ;06E50B;  
  dw $0000              ;06E50D;  
  dw $0000              ;06E50F;  
  dw $0000              ;06E511;  
  dw $0000              ;06E513;  
  dw $0000              ;06E515;  
  dw $07D0              ;06E517; Starting GP
  dw $0000              ;06E519; Starting party (00 = Rooks)
  dw $0004              ;06E51B; Efrite
  dw $0009              ;06E51D; Empty slot
  dw $0009              ;06E51F; Empty slot
  dw $0002              ;06E521;  
  dw $0000              ;06E523;  
  dw $0003              ;06E525;  
  dw $0000              ;06E527;  
  dw $0000              ;06E529;  
  dw $0000              ;06E52B;  
  dw $0000              ;06E52D;  
  dw $0000              ;06E52F;  
  dw $000A              ;06E531; Event flag CH3

org $86E7BD
Stage_Select_Ch4:
  dw $0000              ;06E7BD; $11C3-11CA (Condition)
  dw $0000              ;06E7BF;  
  dw $0002              ;06E7C1;  
  dw $0000              ;06E7C3;  
  dw $0000              ;06E7C5; $11DB-11E2 (Condition mirror)
  dw $0000              ;06E7C7;  
  dw $0000              ;06E7C9;  
  dw $0000              ;06E7CB;  
  dw $0000              ;06E7CD; $11F3-11FA
  dw $0002              ;06E7CF;  
  dw $0003              ;06E7D1;  
  dw $0001              ;06E7D3;  
  dw $006D              ;06E7D5; $1223-122A (Strength)
  dw $0070              ;06E7D7;  
  dw $0000              ;06E7D9;  
  dw $0077              ;06E7DB;  
  dw $0055              ;06E7DD; $123B-1242 (Intelligence)
  dw $0057              ;06E7DF;  
  dw $0000              ;06E7E1;  
  dw $0049              ;06E7E3;  
  dw $006D              ;06E7E5; $1253-125A (Endurance)
  dw $003F              ;06E7E7;  
  dw $0000              ;06E7E9;  
  dw $0078              ;06E7EB;  
  dw $0055              ;06E7ED; $126B-1272 (Alertness)
  dw $0071              ;06E7EF;  
  dw $0000              ;06E7F1;  
  dw $004A              ;06E7F3;
; $1283-128A (Equipped Weapon)  
  dw $0009              ;06E7F5;
  dw $0000              ;06E7F7;  
  dw $0000              ;06E7F9;  
  dw $0821              ;06E7FB;
; $129B-12A2 (Equipped Armor)  
  dw $0033              ;06E7FD;
  dw $0000              ;06E7FF;  
  dw $0000              ;06E801;  
  dw $0832              ;06E803;
; $12B3-12BA (Equipped Amulet)  
  dw $0055              ;06E805;
  dw $0000              ;06E807;  
  dw $0000              ;06E809;  
  dw $0855              ;06E80B;
; $12CB-12D2 (Equipped Ring)  
  dw $0000              ;06E80D;
  dw $0000              ;06E80F;  
  dw $0000              ;06E811;  
  dw $0000              ;06E813;  
  dw $0211              ;06E815; $12F3-12FA (Current HP)
  dw $01CC              ;06E817;  
  dw $0000              ;06E819;  
  dw $0246              ;06E81B;  
  dw $0211              ;06E81D;  
  dw $01CC              ;06E81F;  
  dw $0000              ;06E821;  
  dw $0246              ;06E823;  
  dw $009F              ;06E825; $1323-132A (Current MP)
  dw $0092              ;06E827;  
  dw $0000              ;06E829;  
  dw $0064              ;06E82B;  
  dw $009F              ;06E82D;  
  dw $0092              ;06E82F;  
  dw $0000              ;06E831;  
  dw $0064              ;06E833;  
  dw $FFFF              ;06E835; $1353-135A (Spirits current HP) ??
  dw $FFFF              ;06E837;  
  dw $FFFF              ;06E839;  
  dw $01CC              ;06E83B;  
  dw $FFFF              ;06E83D; $135B-1362 (Spirits current MP) ??
  dw $FFFF              ;06E83F;  
  dw $FFFF              ;06E841;  
  dw $0092              ;06E843;  
  dw $0A28              ;06E845; $1363-136A (EXP to next level)
  dw $07D0              ;06E847;  
  dw $0000              ;06E849;  
  dw $0C1C              ;06E84B;  
  dw $001E              ;06E84D; $137B-1382 (Current LVL)
  dw $001E              ;06E84F;  
  dw $0000              ;06E851;  
  dw $001E              ;06E853;  
  dw $0211              ;06E855; $1393-139A (Max HP)
  dw $01CC              ;06E857;  
  dw $0000              ;06E859;  
  dw $0246              ;06E85B;  
  dw $009F              ;06E85D; $139B-13A2 (Max MP)
  dw $0092              ;06E85F;  
  dw $0000              ;06E861;  
  dw $0064              ;06E863;  
  dw $0002              ;06E865;
; Card inventory Ch4  
  dw $0906              ;06E867; Fog Card x9
  dw $0902              ;06E869; Elemental Cards x9
  dw $0903              ;06E86B;  
  dw $0901              ;06E86D;  
  dw $0904              ;06E86F;  
  dw $0405              ;06E871; Blood Card x4
  dw $0407              ;06E873; Call Amulet x4
  dw $0000              ;06E875;
; Item inventory Ch4  
  dw $000C              ;06E877; Medicine
  dw $0003              ;06E879; Sleeping Bag x4
  dw $0003              ;06E87B;  
  dw $0003              ;06E87D;  
  dw $0003              ;06E87F;  
  dw $0004              ;06E881; Tent x2 
  dw $0004              ;06E883;  
  dw $0001              ;06E885; Return Ring
  dw $0000              ;06E887;
  dw $0000              ;06E889;
  dw $0000              ;06E88B;
  dw $0000              ;06E88D;
  dw $0000              ;06E88F;
  dw $0000              ;06E891;
  dw $0000              ;06E893;  
  dw $0000              ;06E895;  
  dw $0000              ;06E897;  
  dw $0000              ;06E899;  
  dw $0000              ;06E89B;  
  dw $0000              ;06E89D;  
  dw $0000              ;06E89F;  
  dw $0000              ;06E8A1;  
  dw $0000              ;06E8A3;  
  dw $0000              ;06E8A5;  
  dw $0000              ;06E8A7;  
  dw $0000              ;06E8A9;  
  dw $0000              ;06E8AB;  
  dw $0000              ;06E8AD;  
  dw $0000              ;06E8AF;  
  dw $0000              ;06E8B1;  
  dw $0000              ;06E8B3;  
  dw $0000              ;06E8B5;  
  dw $0000              ;06E8B7;  
  dw $0000              ;06E8B9;  
  dw $0000              ;06E8BB;  
  dw $0000              ;06E8BD;  
  dw $0000              ;06E8BF;  
  dw $0000              ;06E8C1;  
  dw $0000              ;06E8C3;  
  dw $0000              ;06E8C5;  
  dw $0000              ;06E8C7;  
  dw $0000              ;06E8C9;  
  dw $0000              ;06E8CB;  
  dw $0000              ;06E8CD;  
  dw $0000              ;06E8CF;  
  dw $0000              ;06E8D1;  
  dw $0000              ;06E8D3;  
  dw $0000              ;06E8D5;  
; Equipment inventory Ch4
  dw $0009              ;06E8D7; Dragon Blade (Rooks)
  dw $0033              ;06E8D9; Mythril Plate (Rooks)
  dw $0055              ;06E8DB; Mythril Shield (Rooks)
  dw $0821              ;06E8DD; Morning Star (Axs)
  dw $0832              ;06E8DF; Mythril Chain (Axs)
  dw $0855              ;06E8E1; Mythril Shield (Axs)
  dw $FF08              ;06E8E3; Fire Blade
  dw $FF07              ;06E8E5; Wightslayer
  dw $FF1B              ;06E8E7; Wand of Lords
  dw $FF3E              ;06E8E9; White Robe
  dw $FF58              ;06E8EB; Magic Shield
  dw $FF1A              ;06E8ED; Sage's Staff
  dw $FF5E              ;06E8EF; Mythril Bracelet
  dw $FF76              ;06E8F1; Tiamat Repellent
  dw $FF00              ;06E8F3;  
  dw $FF00              ;06E8F5;  
  dw $FF00              ;06E8F7;  
  dw $FF00              ;06E8F9;  
  dw $FF00              ;06E8FB;  
  dw $FF00              ;06E8FD;  
  dw $FF00              ;06E8FF;  
  dw $FF00              ;06E901;  
  dw $FF00              ;06E903;  
  dw $FF00              ;06E905;  
  dw $FF00              ;06E907;  
  dw $FF00              ;06E909;  
  dw $FF00              ;06E90B;  
  dw $FF00              ;06E90D;  
  dw $FF00              ;06E90F;  
  dw $FF00              ;06E911;  
  dw $FF00              ;06E913;  
  dw $FF00              ;06E915;
; Rooks' spells (Chapter 4)  
  dw $0021              ;06E917; Heal 2
  dw $0038              ;06E919; Attack Down
  dw $0036              ;06E91B; Accuracy Down (from Unpetrify)
  dw $0034              ;06E91D; Defense Down
  dw $004D              ;06E91F; Gate
  dw $004C              ;06E921; Revive Spirit
  dw $0022              ;06E923; Heal Max
  dw $0031              ;06E925; Confuse Flame
  dw $003D              ;06E927;  
  dw $0000              ;06E929;  
  dw $0000              ;06E92B;  
  dw $0000              ;06E92D;  
  dw $0000              ;06E92F;  
  dw $0000              ;06E931;  
  dw $0000              ;06E933;  
  dw $0000              ;06E935;  
  dw $0000              ;06E937;  
  dw $0000              ;06E939;  
  dw $0000              ;06E93B;  
  dw $0000              ;06E93D;  
  dw $0000              ;06E93F;  
  dw $0000              ;06E941;  
  dw $0000              ;06E943;  
  dw $0000              ;06E945;  
  dw $0000              ;06E947;  
  dw $0000              ;06E949;  
  dw $0000              ;06E94B;  
  dw $0000              ;06E94D;  
  dw $0000              ;06E94F;  
  dw $0000              ;06E951;  
  dw $0000              ;06E953;  
  dw $0000              ;06E955;  
  dw $0046              ;06E957; Efrite's spells (Chapter 4)
  dw $000A              ;06E959;  
  dw $0042              ;06E95B;  
  dw $000B              ;06E95D;  
  dw $001F              ;06E95F;  
  dw $002C              ;06E961;  
  dw $000C              ;06E963;  
  dw $0027              ;06E965;  
  dw $0000              ;06E967;  
  dw $0000              ;06E969;  
  dw $0000              ;06E96B;  
  dw $0000              ;06E96D;  
  dw $0000              ;06E96F;  
  dw $0000              ;06E971;  
  dw $0000              ;06E973;  
  dw $0000              ;06E975;  
  dw $0000              ;06E977;  
  dw $0000              ;06E979;  
  dw $0000              ;06E97B;  
  dw $0000              ;06E97D;  
  dw $0000              ;06E97F;  
  dw $0000              ;06E981;  
  dw $0000              ;06E983;  
  dw $0000              ;06E985;  
  dw $0000              ;06E987;  
  dw $0000              ;06E989;  
  dw $0000              ;06E98B;  
  dw $0000              ;06E98D;  
  dw $0000              ;06E98F;  
  dw $0000              ;06E991;  
  dw $0000              ;06E993;  
  dw $0000              ;06E995;  
  dw $0000              ;06E997; (Empty space)
  dw $0000              ;06E999;  
  dw $0000              ;06E99B;  
  dw $0000              ;06E99D;  
  dw $0000              ;06E99F;  
  dw $0000              ;06E9A1;  
  dw $0000              ;06E9A3;  
  dw $0000              ;06E9A5;  
  dw $0000              ;06E9A7;  
  dw $0000              ;06E9A9;  
  dw $0000              ;06E9AB;  
  dw $0000              ;06E9AD;  
  dw $0000              ;06E9AF;  
  dw $0000              ;06E9B1;  
  dw $0000              ;06E9B3;  
  dw $0000              ;06E9B5;  
  dw $0000              ;06E9B7;  
  dw $0000              ;06E9B9;  
  dw $0000              ;06E9BB;  
  dw $0000              ;06E9BD;  
  dw $0000              ;06E9BF;  
  dw $0000              ;06E9C1;  
  dw $0000              ;06E9C3;  
  dw $0000              ;06E9C5;  
  dw $0000              ;06E9C7;  
  dw $0000              ;06E9C9;  
  dw $0000              ;06E9CB;  
  dw $0000              ;06E9CD;  
  dw $0000              ;06E9CF;  
  dw $0000              ;06E9D1;  
  dw $0000              ;06E9D3;  
  dw $0000              ;06E9D5;  
  dw $0032              ;06E9D7; (Empty space)
  dw $0020              ;06E9D9;  
  dw $003E              ;06E9DB;  
  dw $0030              ;06E9DD;  
  dw $0000              ;06E9DF;  
  dw $0000              ;06E9E1;  
  dw $0000              ;06E9E3;  
  dw $0000              ;06E9E5;  
  dw $0000              ;06E9E7;  
  dw $0000              ;06E9E9;  
  dw $0000              ;06E9EB;  
  dw $0000              ;06E9ED;  
  dw $0000              ;06E9EF;  
  dw $0000              ;06E9F1;  
  dw $0000              ;06E9F3;  
  dw $0000              ;06E9F5;  
  dw $0000              ;06E9F7;  
  dw $0000              ;06E9F9;  
  dw $0000              ;06E9FB;  
  dw $0000              ;06E9FD;  
  dw $0000              ;06E9FF;  
  dw $0000              ;06EA01;  
  dw $0000              ;06EA03;  
  dw $0000              ;06EA05;  
  dw $0000              ;06EA07;  
  dw $0000              ;06EA09;  
  dw $0000              ;06EA0B;  
  dw $0000              ;06EA0D;  
  dw $0000              ;06EA0F;  
  dw $0000              ;06EA11;  
  dw $0000              ;06EA13;  
  dw $0000              ;06EA15;  
  dw $0FA0              ;06EA17; Starting GP
  dw $0000              ;06EA19; Starting party (Rooks = 00)
  dw $0004              ;06EA1B; Efrite
  dw $0009              ;06EA1D; Empty slot
  dw $0008              ;06EA1F; Axs
  dw $0003              ;06EA21;  
  dw $0000              ;06EA23;  
  dw $0004              ;06EA25;  
  dw $0000              ;06EA27;  
  dw $0000              ;06EA29;  
  dw $0000              ;06EA2B;  
  dw $0000              ;06EA2D;  
  dw $0000              ;06EA2F;  
  dw $000E              ;06EA31; Event flag? CH4

org $86ECBD
Stage_Select_Ch5:
  dw $0003              ;06ECBD; $11C3-11CA (Condition)
  dw $0000              ;06ECBF;  
  dw $0006              ;06ECC1;  
  dw $0004              ;06ECC3;  
  dw $0003              ;06ECC5; $11DB-11E2 (Condition mirror)
  dw $0000              ;06ECC7;  
  dw $0006              ;06ECC9;  
  dw $0004              ;06ECCB;  
  dw $0000              ;06ECCD; $11F3-11FA
  dw $0001              ;06ECCF;  
  dw $0002              ;06ECD1;  
  dw $0003              ;06ECD3;  
  dw $008E              ;06ECD5; $1223-122A (Strength)
  dw $004E              ;06ECD7;  
  dw $0044              ;06ECD9;  
  dw $0098              ;06ECDB;  
  dw $006E              ;06ECDD; $123B-1242 (Intelligence)
  dw $0092              ;06ECDF;  
  dw $007E              ;06ECE1;  
  dw $0059              ;06ECE3;  
  dw $008E              ;06ECE5; $1253-125A (Endurance)
  dw $0050              ;06ECE7;  
  dw $0082              ;06ECE9;  
  dw $0099              ;06ECEB;  
  dw $006E              ;06ECED; $126B-1272 (Alertness)
  dw $0092              ;06ECEF;  
  dw $0062              ;06ECF1;  
  dw $005A              ;06ECF3;  
  dw $0009              ;06ECF5; $1283-128A (Equipped Weapon)
  dw $0000              ;06ECF7;  
  dw $061B              ;06ECF9;  
  dw $0815              ;06ECFB;  
  dw $0038              ;06ECFD; $129B-12A2 (Equipped Armor)
  dw $0000              ;06ECFF;  
  dw $063F              ;06ED01;  
  dw $0835              ;06ED03;  
  dw $0059              ;06ED05; $12B3-12BA (Equipped Amulet)
  dw $0000              ;06ED07;  
  dw $0658              ;06ED09;  
  dw $0857              ;06ED0B;  
  dw $0000              ;06ED0D; $12CB-12D2 (Equipped Ring)
  dw $0000              ;06ED0F;  
  dw $0600              ;06ED11;  
  dw $0800              ;06ED13;  
  dw $027A              ;06ED15; $12F3-12FA (Current HP)
  dw $0203              ;06ED17;  
  dw $01E4              ;06ED19;  
  dw $02B9              ;06ED1B;  
  dw $027A              ;06ED1D; $130B-1312 (Copy of Current HP)
  dw $0203              ;06ED1F;  
  dw $01E4              ;06ED21;  
  dw $02B9              ;06ED23;  
  dw $00C7              ;06ED25; $1323-132A (Current MP)
  dw $00F0              ;06ED27;  
  dw $00C2              ;06ED29;  
  dw $007E              ;06ED2B;  
  dw $00C7              ;06ED2D; $133B-1342 (Copy of Current MP)
  dw $00F0              ;06ED2F;  
  dw $00C2              ;06ED31;  
  dw $007E              ;06ED33;  
  dw $FFFF              ;06ED35; $1353-135A (Spirits current HP) ??
  dw $FFFF              ;06ED37;  
  dw $FFFF              ;06ED39;  
  dw $0203              ;06ED3B;  
  dw $FFFF              ;06ED3D; $135B-1362 (Spirits current MP) ??
  dw $FFFF              ;06ED3F;  
  dw $FFFF              ;06ED41;  
  dw $00F0              ;06ED43;  
  dw $1B58              ;06ED45; $1363-136A (EXP to next level)
  dw $0FA0              ;06ED47;  
  dw $157C              ;06ED49;  
  dw $1B58              ;06ED4B;  
; $137B-1382 (Current LVL)
  dw $0028              ;06ED4D;
  dw $0028              ;06ED4F;  
  dw $0025              ;06ED51;  
  dw $0028              ;06ED53;  
; $1393-139A (Max HP)
  dw $027A              ;06ED55
  dw $0203              ;06ED57;  
  dw $01E4              ;06ED59;  
  dw $02B9              ;06ED5B;  
; $139B-13A2 (Max MP)
  dw $00C7              ;06ED5D;
  dw $00F0              ;06ED5F;  
  dw $00C2              ;06ED61;  
  dw $007E              ;06ED63;  
  dw $0000              ;06ED65; $13A7-13A8
; $13A9-13B9 (Card inventory) (x8)
  dw $0906              ;06ED67;
  dw $0901              ;06ED69;  
  dw $0902              ;06ED6B;  
  dw $0903              ;06ED6D;  
  dw $0904              ;06ED6F;  
  dw $0905              ;06ED71;  
  dw $0907              ;06ED73;  
  dw $0907              ;06ED75;  
; $13B9-1418 (Item inventory) (x48)
  dw $000C              ;06ED77;
  dw $000C              ;06ED79;  
  dw $0004              ;06ED7B;  
  dw $0004              ;06ED7D;  
  dw $0004              ;06ED7F;  
  dw $0004              ;06ED81;  
  dw $0004              ;06ED83;  
  dw $0001              ;06ED85;  
  dw $0006              ;06ED87;  Wise Honey x16
  dw $0006              ;06ED89;  
  dw $0006              ;06ED8B;  
  dw $0006              ;06ED8D;  
  dw $0006              ;06ED8F;  
  dw $0006              ;06ED91;  
  dw $0006              ;06ED93;  
  dw $0006              ;06ED95;  
  dw $0006              ;06ED97;  
  dw $0006              ;06ED99;  
  dw $0006              ;06ED9B;  
  dw $0006              ;06ED9D;  
  dw $0006              ;06ED9F;  
  dw $0006              ;06EDA1;  
  dw $0006              ;06EDA3;  
  dw $0006              ;06EDA5;  
  dw $0000              ;06EDA7;  
  dw $0000              ;06EDA9;  
  dw $0000              ;06EDAB;  
  dw $0000              ;06EDAD;  
  dw $0000              ;06EDAF;  
  dw $0000              ;06EDB1;  
  dw $0000              ;06EDB3;  
  dw $0000              ;06EDB5;  
  dw $0000              ;06EDB7;  
  dw $0000              ;06EDB9;  
  dw $0000              ;06EDBB;  
  dw $0000              ;06EDBD;  
  dw $0000              ;06EDBF;  
  dw $0000              ;06EDC1;  
  dw $0000              ;06EDC3;  
  dw $0000              ;06EDC5;  
  dw $0000              ;06EDC7;  
  dw $0000              ;06EDC9;  
  dw $0000              ;06EDCB;  
  dw $0000              ;06EDCD;  
  dw $0000              ;06EDCF;  
  dw $0000              ;06EDD1;  
  dw $0000              ;06EDD3;  
  dw $0000              ;06EDD5;  
; $1419-1458 (Equipment inventory) (32x)
  dw $0009              ;06EDD7;  Dragon Blade (Rooks)
  dw $0038              ;06EDD9;  Magic Mail (Rooks)
  dw $0059              ;06EDDB;  Kaiser Shield (Rooks)
  dw $0815              ;06EDDF;  Devil Axe (Axs)
  dw $0835              ;06EDE1;  Devil Mail (Axs)
  dw $0857              ;06EDE3;  Devil Shield (Axs)
  dw $061B              ;06EDE7;  Wand of Lords (Sarah)
  dw $063F              ;06EDE9;  Priest Robe (Sarah)
  dw $0658              ;06EDEB;  Magic Shield (Sarah)
  dw $FF0A              ;06EDEF;  Mythril Sword
  dw $FF0B              ;06EDF1;  Thunder Blade
  dw $FF10              ;06EDF3;  Golden Sword  
  dw $FF3B              ;06EDF5;  Gorgeous Mail    
  dw $FF76              ;06EDF7;  Tiamat Repellent
  dw $FF00              ;06EDF7;  
  dw $FF00              ;06EDF7;  
  dw $FF00              ;06EDF7;  
  dw $FF00              ;06EDF9;  
  dw $FF00              ;06EDFB;  
  dw $FF00              ;06EDFD;  
  dw $FF00              ;06EDFF;  
  dw $FF00              ;06EE01;  
  dw $FF00              ;06EE03;  
  dw $FF00              ;06EE05;  
  dw $FF00              ;06EE07;  
  dw $FF00              ;06EE09;  
  dw $FF00              ;06EE0B;  
  dw $FF00              ;06EE0D;  
  dw $FF00              ;06EE0F;  
  dw $FF00              ;06EE11;  
  dw $FF00              ;06EE13;  
  dw $FF00              ;06EE15;
; $1459- 1498 (Rooks' spells) (32x)  
  dw $0021              ;06EE17;  Heal 2
  dw $0038              ;06EE19;  Attack Down
  dw $004B              ;06EE1B;  Unpetrify
  dw $0034              ;06EE1D;  Defense Down
  dw $004D              ;06EE1F;  Gate
  dw $004C              ;06EE21;  Revive Spirit
  dw $0022              ;06EE23;  Heal Max
  dw $0031              ;06EE25;  Confuse Flame
  dw $003D              ;06EE27;  Last Resort
  dw $0018              ;06EE29;  Summon Wind Spirit
  dw $001B              ;06EE2B;  Summon Fire Spirit
  dw $001A              ;06EE2D;  Summon Water Spirit
  dw $0019              ;06EE2F;  Summon Earth Spirit
  dw $004A              ;06EE31;  Unparalyze (new)
  dw $0000              ;06EE33;  
  dw $0000              ;06EE35;  
  dw $0000              ;06EE37;  
  dw $0000              ;06EE39;  
  dw $0000              ;06EE3B;  
  dw $0000              ;06EE3D;  
  dw $0000              ;06EE3F;  
  dw $0000              ;06EE41;  
  dw $0000              ;06EE43;  
  dw $0000              ;06EE45;  
  dw $0000              ;06EE47;  
  dw $0000              ;06EE49;  
  dw $0000              ;06EE4B;  
  dw $0000              ;06EE4D;  
  dw $0000              ;06EE4F;  
  dw $0000              ;06EE51;  
  dw $0000              ;06EE53;  
  dw $0000              ;06EE55;  
; $1499-14D8 (Marid's spells) (32x)
  dw $0045              ;06EE57;  Barrier of Water
  dw $0007              ;06EE59;  Water Shot
  dw $0041              ;06EE5B;  Accuracy Up All
  dw $0008              ;06EE5D;  Water Volley
  dw $001E              ;06EE5F;  Healing Water All
  dw $002B              ;06EE61;  Sleep Mist All
  dw $0009              ;06EE63;  Water Barrage
  dw $0049              ;06EE65;  Purify All
  dw $0000              ;06EE67;
  dw $0000              ;06EE69;  
  dw $0000              ;06EE6B;  
  dw $0000              ;06EE6D;  
  dw $0000              ;06EE6F;  
  dw $0000              ;06EE71;  
  dw $0000              ;06EE73;  
  dw $0000              ;06EE75;  
  dw $0000              ;06EE77;  
  dw $0000              ;06EE79;  
  dw $0000              ;06EE7B;  
  dw $0000              ;06EE7D;  
  dw $0000              ;06EE7F;  
  dw $0000              ;06EE81;  
  dw $0000              ;06EE83;  
  dw $0000              ;06EE85;  
  dw $0000              ;06EE87;  
  dw $0000              ;06EE89;  
  dw $0000              ;06EE8B;  
  dw $0000              ;06EE8D;  
  dw $0000              ;06EE8F;  
  dw $0000              ;06EE91;  
  dw $0000              ;06EE93;  
  dw $0000              ;06EE95;  
; $14D9-1518 (Sarah's spells) (32x)
  dw $0020              ;06EE97;  Heal 1
  dw $000F              ;06EE99;  Land Sea Dragon
  dw $0012              ;06EE9B;  Icefire Slash
  dw $003E              ;06EE9D;  Escape
  dw $0035              ;06EE9F;  Defense Down All
  dw $0010              ;06EEA1;  Blazing Cyclone
  dw $0021              ;06EEA3;  Heal 2
  dw $0037              ;06EEA5;  Accuracy Down All
  dw $0033              ;06EEA7;  Evasion Down All
  dw $0039              ;06EEA9;  Attack Down All
  dw $0023              ;06EEAB;  Heal All 1
  dw $0014              ;06EEAD;  Volcanic Eruption
  dw $0013              ;06EEAF;  Coldstone Tempest
  dw $0000              ;06EEB1;
  dw $0000              ;06EEB3;  
  dw $0000              ;06EEB5;  
  dw $0000              ;06EEB7;  
  dw $0000              ;06EEB9;  
  dw $0000              ;06EEBB;  
  dw $0000              ;06EEBD;  
  dw $0000              ;06EEBF;  
  dw $0000              ;06EEC1;  
  dw $0000              ;06EEC3;  
  dw $0000              ;06EEC5;  
  dw $0000              ;06EEC7;  
  dw $0000              ;06EEC9;  
  dw $0000              ;06EECB;  
  dw $0000              ;06EECD;  
  dw $0000              ;06EECF;  
  dw $0000              ;06EED1;  
  dw $0000              ;06EED3;  
  dw $0000              ;06EED5;  
; $1519-1558 (Axs's spells) (32x)
  dw $0032              ;06EED7; Evasion Down
  dw $0020              ;06EED9; Heal 1
  dw $003E              ;06EEDB; Escape
  dw $0030              ;06EEDD; Sleep Mist
  dw $0000              ;06EEDF;  
  dw $0000              ;06EEE1;  
  dw $0000              ;06EEE3;  
  dw $0000              ;06EEE5;  
  dw $0000              ;06EEE7;  
  dw $0000              ;06EEE9;  
  dw $0000              ;06EEEB;  
  dw $0000              ;06EEED;  
  dw $0000              ;06EEEF;  
  dw $0000              ;06EEF1;  
  dw $0000              ;06EEF3;  
  dw $0000              ;06EEF5;  
  dw $0000              ;06EEF7;  
  dw $0000              ;06EEF9;  
  dw $0000              ;06EEFB;  
  dw $0000              ;06EEFD;  
  dw $0000              ;06EEFF;  
  dw $0000              ;06EF01;  
  dw $0000              ;06EF03;  
  dw $0000              ;06EF05;  
  dw $0000              ;06EF07;  
  dw $0000              ;06EF09;  
  dw $0000              ;06EF0B;  
  dw $0000              ;06EF0D;  
  dw $0000              ;06EF0F;  
  dw $0000              ;06EF11;  
  dw $0000              ;06EF13;  
  dw $0000              ;06EF15;  
  dw $4E20              ;06EF17; $1559-5A (Current GP) (8000->20000)
  dw $0000              ;06EF19; $155B-62 (Starting party) (Rooks = 00)
  dw $0003              ;06EF1B; Marid
  dw $0006              ;06EF1D; Sarah
  dw $0008              ;06EF1F; Axs
  dw $0004              ;06EF21; $1573-74 (Current map)
  dw $0000              ;06EF23; $1577-78 (Window color) (-BBB B0GG GG0R RRR0)
  dw $0005              ;06EF25; $18CD-CE (Chapter #)
  dw $0000              ;06EF27; $18DF-E0
  dw $0000              ;06EF29; $18E3-EA (Chests opened)
  dw $0000              ;06EF2B;  
  dw $0000              ;06EF2D;  
  dw $0000              ;06EF2F;  
  dw $0018              ;06EF31; $18FF-1900 (Story progress)


org $98DB92
;Check for Secret Rings function

;Redirect the ptr $18/96C5 here (Tiamat event) and call CheckSecretRings
