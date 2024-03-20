--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-------------------------- DONT CHANGE ANYTHING BELOW --------------------------
--------------------------------------------------------------------------------

--
key="DokusCore"local a=load((function(b,c)function bxor(d,e)local f={{0,1},{1,0}}local g=1;local h=0;while d>0 or e>0 do h=h+f[d%2+1][e%2+1]*g;d=math.floor(d/2)e=math.floor(e/2)g=g*2 end;return h end;local i=function(b)local j={}local k=1;local l=b[k]while l>=0 do j[k]=b[l+1]k=k+1;l=b[k]end;return j end;local m=function(b,c)if#c<=0 then return{}end;local k=1;local n=1;for k=1,#b do b[k]=bxor(b[k],string.byte(c,n))n=n+1;if n>#c then n=1 end end;return b end;local o=function(b)local j=""for k=1,#b do j=j..string.char(b[k])end;return j end;return o(m(i(b),c))end)({891,980,864,1242,1050,1038,722,970,934,857,1143,1194,1074,944,1137,787,602,1080,1250,637,1241,737,870,564,876,1165,1034,592,689,656,897,1141,659,1029,709,1203,1223,889,783,946,725,1166,839,838,1157,695,911,600,807,977,988,652,1225,1009,651,1049,1176,778,1127,1140,1180,739,777,596,781,795,829,1202,617,953,917,679,762,591,1213,1076,707,886,755,570,949,626,759,624,992,773,713,1237,842,952,821,861,1215,1183,1234,936,1199,1008,581,623,903,853,836,1072,806,608,819,833,816,1135,875,1184,1132,1068,1228,867,1006,1097,1154,930,796,1200,724,986,723,938,655,1214,1031,769,990,750,814,955,1253,1053,1131,1015,1026,768,1075,927,697,677,640,775,818,924,887,747,935,1045,978,756,798,728,1169,1145,675,813,622,686,968,894,767,915,610,1190,1069,1059,937,926,1105,1113,699,597,831,735,850,1112,682,890,1014,760,1078,585,1236,848,770,1022,1094,909,569,1239,1001,835,932,849,871,1041,733,654,908,1058,691,1148,984,1158,649,749,919,997,705,1055,1048,588,878,804,603,731,959,743,898,828,1252,657,975,817,1007,995,976,639,1118,693,576,1024,789,764,914,1186,1134,1117,999,1142,1093,880,845,1204,714,884,565,1189,854,918,837,1235,1193,1044,815,1109,698,942,575,922,888,774,1248,1238,579,658,630,958,578,1188,1185,628,964,974,685,1187,943,644,989,740,1151,902,1160,635,928,732,892,641,830,1221,1218,726,858,599,856,1254,1197,843,874,866,1128,1244,1067,1087,604,921,701,844,765,629,916,827,809,1065,681,832,660,684,744,665,717,951,1020,969,950,779,1033,883,1021,567,1211,716,1149,1111,668,872,1047,947,1172,1196,931,1037,593,729,1206,1191,727,929,973,730,791,785,1207,621,893,784,589,766,906,615,1226,780,1251,1083,1212,983,962,711,1062,643,1025,1100,609,885,634,1232,1081,1077,1073,582,1209,1205,708,920,865,802,1054,1227,1162,1125,1138,1192,1005,587,620,1095,808,574,642,1147,1002,771,633,812,606,933,811,1098,824,895,1060,859,799,900,1136,1129,1085,996,1220,1027,638,1198,790,840,1171,631,1028,738,647,1042,1182,1139,1101,834,734,1247,566,1216,1011,772,961,948,568,1230,583,673,1091,1017,1096,967,1004,703,741,1023,792,1173,1168,1108,670,863,985,612,590,690,982,1120,1249,1224,721,993,1036,825,873,674,571,650,611,1116,847,805,1106,1013,1153,683,826,782,618,851,671,1070,613,1046,882,700,761,1104,1032,1177,1222,1039,746,800,748,753,1019,718,881,910,1170,1089,1119,868,1167,904,979,692,820,794,632,1240,1057,793,1174,586,1088,1086,696,905,966,1163,994,1040,1122,860,704,625,1245,1126,614,998,601,719,877,823,1063,742,1051,687,758,678,925,1071,1061,1103,653,901,1231,1179,745,-1,17,82,16,54,78,46,44,34,105,216,39,43,117,9,53,29,74,49,34,82,250,0,54,79,22,49,29,29,49,83,129,156,100,91,32,33,75,121,49,14,75,4,43,113,89,72,126,79,44,72,14,26,208,78,94,246,13,43,79,1,4,0,31,137,6,28,33,27,78,0,26,69,147,29,11,0,78,85,10,60,81,225,208,48,74,44,54,47,72,73,43,105,8,37,23,34,43,134,65,144,49,69,30,33,44,80,30,66,227,69,1,28,169,104,83,69,251,85,0,66,14,42,69,75,82,29,23,0,77,59,251,41,88,91,80,1,70,28,51,107,120,99,229,7,69,23,183,57,22,48,78,184,24,37,110,99,139,40,33,95,110,21,19,11,25,51,73,16,0,75,31,49,99,27,23,85,45,77,49,99,6,23,105,55,70,4,110,60,75,88,4,77,1,172,72,43,0,88,52,31,91,10,28,30,94,88,0,48,5,6,6,79,177,76,54,38,38,27,88,97,14,70,54,27,193,69,7,43,80,42,104,3,88,41,29,4,66,57,5,57,13,89,29,11,31,29,246,7,75,79,66,77,105,14,75,95,91,33,5,45,25,33,70,49,23,16,1,97,7,72,99,61,79,2,60,71,22,46,29,24,99,87,177,29,0,55,71,110,92,54,52,197,79,33,8,44,98,50,249,6,8,10,28,95,70,234,7,25,29,49,54,70,10,79,100,220,74,66,66,6,101,69,107,32,30,98,0,40,31,29,29,16,53,16,29,171,7,101,43,34,94,100,40,62,64,90,95,10,250,245,61,16,22,82,29,7,54,1,4,1,42,55,54,77,42,48,70,97,61,66,8,14,16,21,72,37,127,134,31,50,52,228,28,71,90,80,21,3,23,101,175,95,233,242,50,29,36,87,42,131,61,52,9,27,48,85,19,139,191,71,32,2,55,78,17,110,0,16,33,31,16,48,66,239,99,85,94,125,30,16,25,83,65,22,120,75,72,17,69,64,7,33,72,17,33,10,43,6,216,72,0,70,208,29,60,94,7,16,25,44,77,17,88,42,19,2,216,70,110,14,10,58,54,85,99,72,0,85,79,35,107,0,105,25,19,26,31,1,154,105,20,7,101,75,7,82,55,7,39,55,131,14,8,54,110,79,95,29,83,22,85,110,27,25,0,250,16,59,27,44,41,49,82,10,1,105,59,52,174,77,49,26,2,105,0,179,50,22,154,0,94,6,95,50,4,44,205,4,62,5,116,48,83,23,82,66,50,219,38,203,126,79,28,28,49,99,175,66,94,16,2,66,22,38,6,29,49,61,106,79,172,1,108,0,25,85,73,112,175,105,66,57,12,4,55,193,29,134,38,10,56,1,99,88,43,26,72,48,109,31,33,131,24,66,30,27,10,109,31,71,88,40,34,22,68,69,73,27,13,7,86,41,98,26,75,54,94,168,29,77,90,23,29,24,179,28,167,10,84,2,66,53,35,115,1,242,4,38,95,109,71,54,1,30,66,195,101,14,92,191,40,27,0,44,44,54,79,14,20,200,10,40,166,30,48,53,54,50,11,72,47},key))if a then a()else print("WRONG PASSWORD!")end


  print("Run", _Run)

if _Run then
  -- Check Dependencies.
  print("^5[DokusCore]^2[SYSTEM]: ^6---------- Version ".._Version_.."----------")

  -- Error for missing Dependencies
  if (Plugins.UsableItems == true) and (Plugins.Metabolism == false) then
    print('^5[DokusCore]^1[ERROR]: ^3The plugin UsableItems is depending on the plugin ^1Metabolism^3.')
    print("^5[DokusCore]^1[ERROR]: ^3If you want to use UsableItems, please set Metabolism to ^1true^3. ")
    _StartError_ = true
  else
    print("^5[DokusCore]^2[SYSTEM]: ^5All settings are standing correctly!")
    print("^5[DokusCore]^2[SYSTEM]: ^6-----------------------------------")
  end

  -- Report online features.
  if not _StartError_ and Plugins.Metabolism       then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6Metabolism ^3is running") end
  if not _StartError_ and Plugins.Stores           then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6Stores ^3is running") end
  if not _StartError_ and Plugins.Teleport         then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6Teleport ^3is running") end
  if not _StartError_ and Plugins.UsableItems      then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6UsableItems ^3is running") end
  if not _StartError_ and Plugins.iMaps            then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6iMaps ^3is running") end
  if not _StartError_ and Plugins.BankDoors        then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6BankDoors ^3is running") end
  if not _StartError_ and Plugins.ShowCoords       then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6ShowCoords ^3is running") end
  if not _StartError_ and Plugins.BountyHunter     then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6BountyHunter ^3is running") end
  if not _StartError_ and Plugins.PlayPiano        then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6PlayPiano ^3is running") end
  if not _StartError_ and Plugins.Rivers           then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6Rivers ^3is running") end
  if not _StartError_ and Plugins.PickableFruits   then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6PickableFruits ^3is running") end
  if not _StartError_ and Plugins.PayCheck         then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6PayCheck ^3is running") end

  -- Report offline features
  if not _StartError_ and not Plugins.Metabolism      then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6Metabolism ^3is not running") end
  if not _StartError_ and not Plugins.Stores          then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6Stores ^3is not running") end
  if not _StartError_ and not Plugins.Teleport        then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6Teleport ^3is not running") end
  if not _StartError_ and not Plugins.UsableItems     then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6UsableItems ^3is not running") end
  if not _StartError_ and not Plugins.iMaps           then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6iMaps ^3is not running") end
  if not _StartError_ and not Plugins.BankDoors       then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6BankDoors ^3is not running") end
  if not _StartError_ and not Plugins.ShowCoords      then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6ShowCoords ^3is not running") end
  if not _StartError_ and not Plugins.BountyHunter    then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6BountyHunter ^3is not running") end
  if not _StartError_ and not Plugins.PlayPiano       then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6PlayPiano ^3is not running") end
  if not _StartError_ and not Plugins.Rivers          then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6Rivers ^3is not running") end
  if not _StartError_ and not Plugins.PickableFruits  then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6PickableFruits ^3is not running") end
  if not _StartError_ and not Plugins.PayCheck        then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6PayCheck ^3is not running") end

  -- Config Update Warning
  print("^5[DokusCore]^2[SYSTEM]: ^6-----------------------------------")
  if _vConfig_ == __vConfig__ then print("^5[DokusCore]^2[SYSTEM]: ^2You've the latests config version!") end
  if _vConfig_ ~= __vConfig__ then print("^5[DokusCore]^1[SYSTEM]: ^1Your config file is not up to date!!!") end
  if _vConfig_ ~= __vConfig__ then print("^5[DokusCore]^1[SYSTEM]: ^1Download the latest DokusCore from Github.") end
  if _vConfig_ ~= __vConfig__ then print("^5[DokusCore]^1[SYSTEM]: ^1Github.com/devdokus/DokusCore") end
  print("^5[DokusCore]^2[SYSTEM]: ^6-----------------------------------")
  -- Thanks
  if not _StartError_ then print("^5[DokusCore]^2[SYSTEM]: ^5Thanks for using DokusCore for Vorp!") end
  if not _StartError_ then print("^5[DokusCore]^2[SYSTEM]: ^5Developed By DevDokus") end
  if not _StartError_ then print("^5[DokusCore]^2[DISCORD]: ^5Http://discord.gg/2gdypBhsye") end
  if not _StartError_ then print("^5[DokusCore]^2[WEBSITE]: ^5Https://KDNGaming.com") end
  if not _StartError_ then print("^5[DokusCore]^2[SYSTEM]: ^6-----------------------------------") end

  if _StartError_     then print("^5[DokusCore]^3[SYSTEM]: ^1DokusCore stopped all features for now!") end
  if _StartError_     then print("^5[DokusCore]^3[SYSTEM]: ^1This is to prevent server crashes.") end
  if _StartError_     then print("^5[DokusCore]^3[SYSTEM]: ^1Please go to your config to fix this error.") end
  if _StartError_     then print("^5[DokusCore]^3[SYSTEM]: ^5If you need any help you can visit our Discord.") end
  if _StartError_     then print("^5[DokusCore]^3[SYSTEM]: ^5Http://discord.gg/2gdypBhsye") end
  if _StartError_     then print("^5[DokusCore]^2[SYSTEM]: ^6-----------------------------------") end

  -- Send error when the wrong plugins are used when using RedEmRP
  if ((Framework.RedEmRP) and (Plugins.BountyHunter))   then print('^5[DokusCore]^1[ERROR]: ^3The plugin ^1BountyHunter^3 is not RedEmRP Ready yet!') end
  if ((Framework.RedEmRP) and (Plugins.Metabolism))     then print('^5[DokusCore]^1[ERROR]: ^3The plugin ^1Metabolism^3 is not RedEmRP Ready yet!') end
  if ((Framework.RedEmRP) and (Plugins.PayCheck))       then print('^5[DokusCore]^1[ERROR]: ^3The plugin ^1PayCheck^3 is not RedEmRP Ready yet!') end
  if ((Framework.RedEmRP) and (Plugins.PickableFruits)) then print('^5[DokusCore]^1[ERROR]: ^3The plugin ^1PickableFruits^3 is not RedEmRP Ready yet!') end
  if ((Framework.RedEmRP) and (Plugins.Rivers))         then print('^5[DokusCore]^1[ERROR]: ^3The plugin ^1Rivers^3 is not RedEmRP Ready yet!') end
  if ((Framework.RedEmRP) and (Plugins.Teleport))       then print('^5[DokusCore]^1[ERROR]: ^3The plugin ^1Teleport^3 is not RedEmRP Ready yet!') end
  if ((Framework.RedEmRP) and (Plugins.UsableItems))    then print('^5[DokusCore]^1[ERROR]: ^3The plugin ^1UsableItems^3 is not RedEmRP Ready yet!') end


  print("^5[DokusCore]^2[SYSTEM]: ^6-----------------------------------")












  -- Send messages to the console.
  -- Used for relay client side outputs.
  RegisterServerEvent('C')
  AddEventHandler('C', function(args) print(args[1], args[2], args[3], args[4], args[5]) end)
end
