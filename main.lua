--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.2.9) ~  Much Love, Ferib 

]]--

require("default");local v0=102 -62 ;local v1=886 -(397 + 339) ;local v2=900;local v3=438.01 -(262 + 176) ;local v4=1721 -(345 + 1376) ;local v5={};local v6={};local v7={};local v8={};local v9={};local v10={};local v11={};local v12={};function GetModifiedDamage(v13,v14,v15)local v16=688 -(198 + 490) ;local v17;local v18;local v19;local v20;while true do if (v16==(13 -10)) then v20=v13:spellEffect(SpellType.Weaken);v19=math.max(0 -0 ,((v19-v15) * v18)/100 );v16=1210 -(696 + 510) ;end if (v16==4) then v20=math.max(0 -0 ,((v20-v15) * v18)/100 );return math.max(0,(v15 + v17 + v19) -v20 );end if (v16==0) then v17=GetStrength(v14) -25 ;v18=1302 -(1091 + 171) ;v16=1 + 0 ;end if (v16==(6 -4)) then if v11[v13.id] then v18=v11[v13.id];end v19=v13:spellEffect(SpellType.Strengthen);v16=9 -6 ;end if (v16==1) then if v14.isServer then if v13.currWeapon then local v485=0;local v486;while true do if ((374 -(123 + 251))==v485) then v10[v13.id]={v13.currWeapon.damageMin,v13.currWeapon.damageMax};v11[v13.id]=v13.currWeapon.actions;v485=1;end if (v485==(699 -(208 + 490))) then v486=v13.currWeapon.prototype.typeId;if ((v486==WeaponType.Bow) or (v486==WeaponType.Crossbow) or (v486==WeaponType.Dagger)) then v12[v13.id]=true;else v12[v13.id]=false;end break;end end else v11[v13.id]=v18;if (v10[v13.id]==nil) then v10[v13.id]={v15,v15};elseif ((v15~=v10[v13.id][1 + 0 ]) and (v15~=v10[v13.id][2])) then if (v15>v10[v13.id][2]) then if (v10[v13.id][1]==v9[v13.id]) then v10[v13.id][837 -(660 + 176) ]=v10[v13.id][2];end v10[v13.id][2]=v15;elseif (v15<v10[v13.id][1]) then local v530=0;while true do if (v530==0) then if (v10[v13.id][1]==v9[v13.id]) then v10[v13.id][1 + 1 ]=v10[v13.id][203 -(14 + 188) ];end v10[v13.id][676 -(534 + 141) ]=v15;break;end end elseif ((v10[v13.id][1 + 0 ]==v9[v13.id]) or (v10[v13.id][1 + 0 ]==(0 + 0))) then v10[v13.id][1 -0 ]=v15;elseif ((v10[v13.id][2 -0 ]==v9[v13.id]) or (v10[v13.id][2 -1 ]==(0 + 0))) then v10[v13.id][2 + 0 ]=v15;end end end end if (v12[v13.id] and (v12[v13.id]==true)) then return math.max(396 -(115 + 281) ,v15);end v16=4 -2 ;end end end function GetModifiedDamageOnClient(v21,v22,v23)local v24=0;local v25;local v26;while true do if ((1 + 0)==v24) then return GetModifiedDamage(v26,v25,v23);end if (v24==(0 -0)) then v25=UnitClientStats(v21);v26=UnitClient(v22);v24=3 -2 ;end end end function GetModifiedDamageOnServer(v27,v28,v29)local v30=867 -(550 + 317) ;local v31;local v32;while true do if (v30==(1 -0)) then return GetModifiedDamage(v32,v31,v29);end if (v30==(0 -0)) then v31=UnitServerStats(v27);v32=UnitServer(v28);v30=1;end end end function CalcBaseHealth(v33)return 279 -179 ;end function CalcBaseMana(v34)return 385 -(134 + 151) ;end function GetModifiedHealth(v35,v36,v37)return v37;end function RegenerateHp(v38,v39,v40)local v41=0;local v42;local v43;local v44;local v45;local v46;local v47;local v48;local v49;local v50;local v51;local v52;while true do if (1==v41) then v46=v42.hp;for v403=1665 -(970 + 695) ,9 -4  do local v404=1990 -(582 + 1408) ;local v405;while true do if (v404==0) then v405=v43:hitLocation(v403);v405.hp=math.max(0 -0 ,v405.hp);break;end end end if v7[v44.id] then if (v7[v44.id]>v46.curr) then local v489=0;local v490;local v491;while true do if (v489==(0 -0)) then v490=v7[v44.id] -v46.curr ;v6[v44.id]=v1;v489=1;end if (v489==(7 -5)) then v8[v44.id]=math.max(0.1,v8[v44.id] -v491 );break;end if (v489==(1825 -(1195 + 629))) then v491=v490/(2 -0) ;v42.mp.curr=math.max(0.1,v42.mp.curr-v491 );v489=243 -(187 + 54) ;end end elseif (v7[v44.id]<v46.curr) then local v503=v46.curr-v7[v44.id] ;v503=math.max(780 -(162 + 618) ,(v503 * 999) -CalcArmor(v44,DamageType.General) );v43:heal(v38,v503);end end v47=math.max(0 + 0 ,((v44:spellEffect(SpellType.Regeneration) -GetUnitArmor(v44,v42,DamageType.General))/(7 + 3))/(31 -16) );v41=2;end if (v41==2) then v48=math.max(0,((v44:spellEffect(SpellType.Stench) -GetUnitArmor(v44,v42,DamageType.General))/(16 -6))/15 );v49=RecalcDamageModifier(v43,BodyPartType.Body);v50=0 + 0 ;if (v6[v44.id]<=0) then v50=v3 * 100 ;v45=true;end v41=1639 -(1373 + 263) ;end if (v41==(1003 -(451 + 549))) then v51=((v46.regen * (32 + 68)) + v43:perkModifier(PerkType.Vitality))/(23 -8) ;v52=((v49 * (v50 + v51)) + v47) -v48 ;v52=math.min(v46.max-v46.curr ,v52);if (v52<(0 -0)) then for v473=0,5 do local v474=v43:hitLocation(v473);if (v474.hp>=v474.maxHp) then v474.hp=math.max(1384 -(746 + 638) ,v474.maxHp-(0.001 + 0) );end end if ((v46.curr + v52)<(1 -0)) then v52=math.max(341 -(218 + 123) ,(1582 -(1535 + 46)) -v46.curr );end end v41=4;end if ((0 + 0)==v41) then v42=UnitServerCommonStats(v38);v43=UnitServerStats(v39);v44=UnitServer(v40);v45=false;v41=1 + 0 ;end if (v41==4) then v43:heal(v38,v52);if (v46.curr>v46.max) then v46.curr=v46.max;end v7[v44.id]=v46.curr;return v45;end end end function RegenerateMp(v53,v54,v55,v56)local v57=560 -(306 + 254) ;local v58;local v59;local v60;local v61;local v62;while true do if (v57==(0 + 0)) then v58=UnitServerCommonStats(v53);v59=UnitServerStats(v54);v57=1 -0 ;end if (v57==(1469 -(899 + 568))) then v62=v58.mp;if (v8[v60.id] and (v8[v60.id]>v62.curr)) then local v438=0;local v439;while true do if (v438==(0 + 0)) then v439=v8[v60.id] -v62.curr ;v62.curr=math.max(0.1 -0 ,v62.curr-(v439 * 1000) );v438=1;end if (1==v438) then v6[v60.id]=v1;break;end end end v57=606 -(268 + 335) ;end if (v57==(294 -(60 + 230))) then v8[v60.id]=v62.curr;return v61;end if (v57==(575 -(426 + 146))) then if (v62.curr<v62.max) then local v440=0;local v441;local v442;local v443;local v444;while true do if (v440==2) then if  not v60.isAggressive then v443=1 + (v59:perkModifier(PerkType.Spirit) * 0.01) ;end v444=RecalcDamageModifier(v59,BodyPartType.Body);v440=1 + 2 ;end if (v440==(1456 -(282 + 1174))) then v441=v62.regen/15 ;if (v6[v60.id]>0) then if (v60.isMoving or IsMage(v60)) then v441=811 -(569 + 242) ;else v441=v441/(14 -9) ;end end v440=1;end if (v440==(1 + 2)) then v58:regenMp(v441 * v443 * v444 * v442 );v61=true;break;end if (v440==(1025 -(706 + 318))) then v442=(1252 -(721 + 530)) -(v59:perkModifier(PerkType.Mana) * (1271.01 -(945 + 326))) ;v443=2 -1 ;v440=2 + 0 ;end end else v62.curr=v62.max;end if v56 then local v447=(701 -(271 + 429)) + (0.02 * (GetDexterity(v59) -25)) ;local v448=37 + 3 ;if v60.currWeapon then v448=v60.currWeapon.actions;elseif v60.nawActions then v448=v60.nawActions;end local v449=(1501 -(1408 + 92)) -(v59:perkModifier(PerkType.Mana) * (1086.01 -(461 + 625))) ;local v450=((v448 * v449)/v447)/(1298 -(993 + 295)) ;local v451=0.5 + 0 ;if ((v60.isPlayer and v60.isAggressive) or ( not v60.isPlayer and (v62.curr>((1237 -(418 + 753)) + v450)) and  not IsMage(v60))) then v451=1 + 0 ;end v62.curr=math.max(0.1 + 0 ,v62.curr-(v450 * v451) );end v57=2 + 2 ;end if (v57==(1 + 0)) then v60=UnitServer(v55);v61=false;v57=531 -(406 + 123) ;end end end function RegenerateHpAndMp(v63,v64,v65,v66)local v67=0;local v68;local v69;local v70;local v71;local v72;local v73;local v74;while true do if (4==v67) then v74=RegenerateMp(v63,v64,v65,v72);return v73 or v74 or true ;end if (1==v67) then if (v6[v70.id]==nil) then v6[v70.id]=1769 -(1749 + 20) ;end v71=v6[v70.id];v72=false;if (v71>v1) then v71=v1;v72=true;end v67=2;end if (v67==(1 + 2)) then v69:percept(SenseType.Tracking).curr=RecalcDamageModifier(v69,BodyPartType.Leg) * (1422 -(1249 + 73)) ;v69:sense(SenseType.Smell).curr=v68.mp.curr;if v70.isPlayer then CalcPlayersCount(v70);end v73=RegenerateHp(v63,v64,v65);v67=4;end if (v67==2) then if ((v70.isMoving and (v70.pose==UnitPoseType.Run)) or (v66 and  not v70.isMoving and  not v70.isPlayer and (v71>(v1/5)))) then v71=math.min(v1,v71 + 4 + 6 );elseif (v71>(1145 -(466 + 679))) then v71=v71-(2 -1) ;end v6[v70.id]=v71;RecalcSight(v70,v69);v69:percept(SenseType.Smell).curr=RecalcDamageModifier(v69,BodyPartType.Head) * 100 ;v67=8 -5 ;end if ((1900 -(106 + 1794))==v67) then v68=UnitServerCommonStats(v63);v69=UnitServerStats(v64);v70=UnitServer(v65);if (v70.pose==UnitPoseType.Rest) then v66=false;end v67=1 + 0 ;end end end function CalcRunningManaCost(v75,v76,v77)local v78=UnitServerStats(v75);local v79=UnitServer(v76);local v80=UnitServerCommonStats(v77);local v81=v80.mp;local v82=25/v78.dexterity.curr ;local v83=(1 + 0) -(v78:perkModifier(PerkType.Mana) * 0.01) ;end function GetSkillPrice(v84)return (73 -48) * (2^(v84/5)) ;end function GetSkillPriceDiff(v85,v86)return math.floor(GetSkillPrice(v86) -GetSkillPrice(v85) );end function GetPerkPrice(v87,v88)local v89=UnitServerStats(v87);local v90=PerksDatabase.PerksTableRecord(v88);local v91=GetSkillPriceDiff(v90.cost-(27 -17) ,v90.cost);local v92=114 -(4 + 110) ;for v326=584 -(57 + 527) ,1462 -(41 + 1386)  do v92=v92 + v89.perks:value(v326) ;end v91=v91 * (4^v92) ;if (v91>1000000000) then v91=1000000103 -(17 + 86) ;end local v93=(7 + 3)^math.floor(math.log10(v91)) ;if ((v91/v93)<4) then if (v93<=10) then return math.ceil(v91);else v93=v93 * 0.1 ;end end return math.floor((v91/v93) + 0.5 ) * v93 ;end function GetMaxEncumbrance(v94)local v95=0;local v96;local v97;while true do if ((1 -0)==v95) then if (v94:perkModifier(PerkType.Lift)~=(0 -0)) then local v454=v94.perks:value(PerkType.Lift);if (v454==(167 -(122 + 44))) then v97=69 -29 ;elseif (v454==2) then v97=80;elseif (v454==3) then v97=398 -278 ;end end return v96 + v97 ;end if (v95==0) then v96=v94.strength.curr * 12 ;v97=0 + 0 ;v95=1;end end end function RecalcDamageModifier(v98,v99)local v100=0;local v101;while true do if (v100==(0 + 0)) then v101=1;for v406=0 -0 ,5 do local v407=v98:hitLocation(v406);if ((v407.state~=ArmorLayerState.NotUsed) and (v407.type==v99) and (v407.hp<v407.maxHp)) then v101=math.min(v101,v407.hp/v407.maxHp );end end v100=1;end if (v100==1) then if (v101<=(65.33 -(30 + 35))) then return 0.5;elseif (v101<=0.66) then return 0.75;else return 1;end break;end end end function SetDefaultStats(v102,v103)v102.strength.curr=v102.strength.base;v102.dexterity.curr=v102.dexterity.base;v102.intelligence.curr=v102.intelligence.base;for v327=0 + 0 ,3 do local v328=0;while true do if (v328==(1257 -(1043 + 214))) then v102:sense(v327).curr=v102:sense(v327).base;v102:percept(v327).curr=v102:percept(v327).base;break;end end end for v329=0 -0 ,1218 -(323 + 889)  do v103:absorbtion(v329).curr=v103:absorbtion(v329).base;end end function ApplyAttackParams(v110,v111,v112)local v113=0 -0 ;if ((v112.weaponType==WeaponType.Bow) or (v112.weaponType==WeaponType.Crossbow)) then if (v10[v110.id] and v10[v110.id][1]) then v113=math.max(0,v110:spellEffect(SpellType.EagleSight) -v10[v110.id][581 -(361 + 219) ] );end end local v114=0;if v110.isPlayer then if (OverloadMod(v110,v111)>1) then v114=(320.5 -(53 + 267)) * v0 ;end end local v115=0 + 0 ;local v116=413 -(15 + 398) ;if v111.isServer then v116=v0 * ((983 -(18 + 964)) -RecalcDamageModifier(v111,BodyPartType.Leg)) ;elseif (v111.percepts:value(SenseType.Tracking)>1) then v116=((3 -2) -(v111.percepts:value(SenseType.Tracking)/100)) * v0 ;end local v117=0 + 0 ;local v118=0 + 0 ;if v111.isServer then v118=v111:sense(SenseType.Smell).curr;else v118=v111.senses:value(SenseType.Smell);end if (v118<(((851 -(20 + 830))/3) * (79 + 21))) then v117=(126.25 -(116 + 10)) * v0 ;elseif (v118<((2/3) * 100)) then v117=(0.125 + 0) * v0 ;end local v119=0;local v120=(739 -(542 + 196)) + ((0.02 -0) * (GetDexterity(v111) -25)) ;local v121=21 + 49 ;if v110.currWeapon then v121=v110.currWeapon.actions;elseif v110.nawActions then v121=v110.nawActions;end local v122=1 -(v111:perkModifier(PerkType.Mana) * (0.01 + 0)) ;local v123=((v121 * v122)/v120)/(2 + 3) ;if (( not v110.isPlayer and (v118<(66 + v123))) or  not v110.isAggressive or IsMage(v110)) then v119=(0.25 -0) * v0 ;end local v124=0 -0 ;if (v110.pose==UnitPoseType.Crawl) then v124=0.25 * v0 ;elseif ((v110.pose==UnitPoseType.Lay) or (v110.pose==UnitPoseType.Rest)) then v124=(1551.5 -(1126 + 425)) * v0 ;end local v125=405 -(118 + 287) ;local v126=(((v113-v115) -v114) -v117) -v119 ;local v127=((((v115-v114) -v117) -v116) -v124) + v125 ;v112.attack=math.max(0,v112.attack + v126 );v112.defense=math.max(0 -0 ,v112.defense + v127 );end function CalcAttackParamsOnServer(v130,v131,v132,v133)local v134=1121 -(118 + 1003) ;local v135;local v136;local v137;while true do if (v134==(0 -0)) then v135=UnitServer(v131);v136=UnitServerStats(v130);v134=378 -(142 + 235) ;end if ((4 -3)==v134) then v137=AttackParams(v132);v6[v135.id]=v1 + 1 + 0 ;v134=979 -(553 + 424) ;end if ((3 -1)==v134) then ApplyAttackParams(v135,v136,v137);break;end end end function CalcAttackParamsOnClient(v138,v139,v140,v141)local v142=UnitServer(v139);local v143=UnitClientStats(v138);local v144=AttackParams(v140);ApplyAttackParams(v142,v143,v144);end function GetManaBonusOnServer(v145)local v146=0 + 0 ;local v147;local v148;local v149;local v150;local v151;local v152;while true do if (v146==1) then v149=(1 + 0) -(v147:perkModifier(PerkType.Mana) * (0.01 + 0)) ;v150=1 + 0 ;v146=2 + 0 ;end if (v146==(4 -2)) then v151=2 -1 ;if (v147.currEncumbrance>v147.maxEncumbrance) then v151=4 -2 ;end v146=1 + 2 ;end if (v146==(19 -15)) then return ((v148 * v149)/v150) * v151 ;end if (v146==0) then v147=UnitServerStats(v145);v148=GetManaBonus(v147.intelligence.curr);v146=1;end if (v146==3) then v152=v147.perks:value(PerkType.Mana);if (v152==(754 -(239 + 514))) then v149=0.9 + 0 ;elseif (v152==(1331 -(797 + 532))) then v149=0.8 + 0 ;elseif (v152==(2 + 1)) then v149=0.7;end v146=9 -5 ;end end end function GetManaBonusOnClient(v153)local v154=UnitClientStats(v153);local v155=1203 -(373 + 829) ;local v156=v154.perks:value(PerkType.Mana);if (v156==(732 -(476 + 255))) then v155=0.9;elseif (v156==(1132 -(369 + 761))) then v155=0.8;elseif (v156==(2 + 1)) then v155=0.7;end return GetManaBonus(v154.intelligence) * v155 ;end function GetExpMultiplier(v157)return v157/25 ;end function Round(v158)return math.floor(v158 + 0.5 );end function GetStrength(v159)if v159.isServer then return v159.strength.curr;else return v159.strength;end end function GetDexterity(v160)if v160.isServer then return v160.dexterity.curr;else return v160.dexterity;end end function GetIntelligence(v161)if v161.isServer then return v161.intelligence.curr;else return v161.intelligence;end end function RecalcSight(v162,v163)local v164=v163:sense(SenseType.Sight).base;local v165=v163:sense(SenseType.SenseLife).base;local v166=0 -0 ;if v162:armor(ArmorType.Helm) then v166=v162:armor(ArmorType.Helm).absorbtions:value(DamageType.General);elseif v9[v162.id] then v166=v9[v162.id];end local v167=(v164 * math.max(0 -0 ,v162:spellEffect(SpellType.EagleSight) -v166 ))/(338 -(64 + 174)) ;local v168=(v165 * math.max(0 + 0 ,v162:spellEffect(SpellType.DetectLife) -v166 ))/(148 -48) ;local v169=RecalcDamageModifier(v163,BodyPartType.Head);local v170=v6[v162.id];local v171=(v164 + v167) * v169 ;if v162.isPlayer then v163.visionArc=0;v163:sense(SenseType.Sight).curr=v171;elseif (v170>=(v1/(341 -(144 + 192)))) then v163.visionArc=216 -(42 + 174) ;v163:sense(SenseType.Sight).curr=v171;v163:sense(SenseType.Hearing).curr=v163:sense(SenseType.Hearing).base;elseif (v163.visionArc<(0.5 + 0)) then v163.visionArc=v163.visionArc + (0.5/v2) ;v163:sense(SenseType.Sight).curr=v171 * ((1 + 0) -((v163.visionArc * (1 + 1) * 5)/v164)) ;v163:sense(SenseType.Hearing).curr=v163:sense(SenseType.Hearing).base * ((1505 -(363 + 1141)) -v163.visionArc) ;else local v478=1580 -(1183 + 397) ;while true do if (v478==0) then v163.visionArc=0.5 -0 ;v163:sense(SenseType.Sight).curr=v171 * (1 -((4 + 1)/v164)) ;v478=1 + 0 ;end if (v478==(1976 -(1913 + 62))) then v163:sense(SenseType.Hearing).curr=(0.5 + 0) * v163:sense(SenseType.Hearing).base ;break;end end end v163:sense(SenseType.SenseLife).curr=v163:sense(SenseType.SenseLife).base + v168 ;end function CalcPlayersCount(v173)if PlayerOnMap(v173) then v5[v173.id]=30;end local v174=0 -0 ;for v332,v333 in pairs(v5) do if (v333>0) then local v384=1933 -(565 + 1368) ;while true do if (v384==(0 -0)) then v5[v332]=v5[v332] -(1662 -(1477 + 184)) ;v174=v174 + (1 -0) ;break;end end else v5[v332]=nil;end end end ItemType={Weapon=11454 + 838 ,Armor=13149 -(564 + 292) ,QuickItem=21212 -8918 ,SpellContainer=3753001 -2507881 };function ItemWeight(v175)if v175 then local v350;local v351;v351=ItemsDatabase.MaterialsTable.getRecord(v175.materialId);if (v175.typeId==ItemType.Armor) then v350=ItemsDatabase.ArmorsTable.getRecord(v175.prototypeId);elseif (v175.typeId==ItemType.Weapon) then v350=ItemsDatabase.WeaponsTable.getRecord(v175.prototypeId);elseif (v175.typeId==ItemType.QuickItem) then v350=ItemsDatabase.QuicksTable.getRecord(v175.prototypeId);else return 304 -(244 + 60) ;end return v350.weight * v351.weight ;else return 0;end end function ItemsWeight(v176)local v177=0 + 0 ;local v178;while true do if (v177==0) then v178=0;for v418=0,483 -(41 + 435)  do v178=v178 + ItemWeight(v176:armor(v418)) ;end v177=1002 -(938 + 63) ;end if (v177==1) then for v419=0 + 0 ,1128 -(936 + 189)  do local v420=0;while true do if (v420==0) then v178=v178 + ItemWeight(v176:weapon(v419)) ;v178=v178 + ItemWeight(v176:quickItem(v419)) ;break;end end end return v178;end end end function OverloadMod(v179,v180)if v180.isServer then return v180.currEncumbrance/v180.maxEncumbrance ;else return math.max(ItemsWeight(v179),v179.itemsWeight)/v180.encumbrance ;end end SpellEffectBaseType={Id=1 + 0 ,Power=2,IsAdditive=1616 -(1565 + 48) };SpellBase={effect={31 + 19 ,317 -(176 + 91) ,73 -23 ,1925 -(157 + 1718) ,177 -127 ,1068 -(697 + 321) ,50,115 -65 ,93 -43 ,1277 -(322 + 905) ,1239 -(449 + 740) ,922 -(826 + 46) ,157 -107 ,1908 -(260 + 1638) ,50,50,9 + 1 ,148 -98 ,0 -0 ,5 + 45 ,0,683 -(483 + 200) ,0,0 -0 ,50,0 -0 ,90 -40 ,0,0,50 + 0 ,120 -70 ,50,50,136 -86 ,36 + 14 ,0,0 + 0 ,0 + 0 ,765 -(574 + 191) ,0 -0 ,899 -(254 + 595) ,50},mana={13 -3 ,27 -17 ,10,949 -(714 + 225) ,13 -3 ,14 -4 ,10,58 -(25 + 23) ,10,33 -23 ,19 -9 ,24 -14 ,295 -(175 + 110) ,49 -39 ,27 -17 ,1071 -(810 + 251) ,10,10 + 0 ,783 -(711 + 22) ,38 -28 ,13 + 37 ,4 + 46 ,1794 -(1344 + 400) ,455 -(255 + 150) ,10,8 + 2 ,10,32 -22 ,416 -(183 + 223) ,12 -2 ,7 + 3 ,10,7 + 3 ,4 + 6 ,459 -(108 + 341) ,42 -32 ,1503 -(711 + 782) ,479 -(270 + 199) ,10,29 -19 ,1 + 9 ,10},complex={7 + 3 ,1177 -(645 + 522) ,10 + 0 ,10,10,1846 -(1045 + 791) ,10,15 -5 ,515 -(351 + 154) ,276 -(28 + 238) ,10,10 + 0 ,9 + 1 ,10,34 -24 ,480 -(381 + 89) ,10,17 -7 ,1166 -(1074 + 82) ,1794 -(214 + 1570) ,10,5 + 5 ,10,39 -29 ,10,636 -(512 + 114) ,26 -16 ,34 -24 ,2 + 8 ,33 -23 ,1479 -(1269 + 200) ,825 -(98 + 717) ,17 -7 ,10,8 + 2 ,2 + 8 ,27 -17 ,33 -23 ,5 + 5 ,10,5 + 5 ,48 -38 },actions={21 + 39 ,54 + 6 ,386 -(192 + 134) ,90,90,51 + 39 ,60,229 -169 ,1866 -(1202 + 604) ,99 -39 ,60,60,53 + 7 ,34 + 26 ,60,60,24 + 36 ,164 -104 ,1154 -(125 + 909) ,27 + 33 ,120,632 -(409 + 103) ,120,215 -(51 + 44) ,1377 -(1114 + 203) ,13 + 47 ,34 + 26 ,60,156 -96 ,60,1329 -(231 + 1038) ,1222 -(171 + 991) ,60,60,60,60,49 + 11 ,173 -113 ,60,96 -36 ,1308 -(111 + 1137) ,60},area={0 -0 ,0,0,4,10 -6 ,4,773 -(326 + 445) ,4 -2 ,713 -(530 + 181) ,32 -(19 + 13) ,0 -0 ,0 -0 ,0,0 -0 ,1812 -(1293 + 519) ,0 -0 ,0 -0 ,0 -0 ,4,0 -0 ,4,0 + 0 ,1096 -(709 + 387) ,1858 -(673 + 1185) ,0,0 -0 ,0,0 -0 ,0 -0 ,0,1880 -(446 + 1434) ,0,0 -0 ,1931 -(609 + 1322) ,0,0 -0 ,0 + 0 ,0 + 0 ,0 -0 ,0 + 0 ,0 + 0 ,0 + 0 },int_mod={"add","add","add","add","add","add","add","add","add","add","add","add","add","mul","add","add","mul","add","mul","add","mul","mul","mul","mul","add","mul","mul","mul","mul","add","add","add","add","add","add","mul","mul","mul","mul","mul","add","add"},combat_rest={false,false,false,false,false,false,false,false,false,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,false,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,false,false},subtype={0 -0 ,900 -(503 + 396) ,3 -1 ,0 + 0 ,1,1 + 1 ,0 -0 ,1 + 0 ,1 + 1 ,1244 -(485 + 759) ,1190 -(442 + 747) ,1137 -(832 + 303) ,4,2 + 2 ,4 + 0 ,792 -(766 + 23) ,14 -11 ,7 -4 ,1076 -(1036 + 37) ,11 -5 ,1484 -(641 + 839) ,9 -5 ,3,1152 -(556 + 592) ,814 -(329 + 479) ,23 -16 ,5,5,10 -5 ,5,1 + 4 ,6,22 -16 ,4,4,7,1534 -(389 + 1138) ,5,5 + 0 ,0 + 0 ,0 -0 ,1 + 0 },attribute={"str","str","str","str","str","str","str","str","str","int","int","int","int","int","int","int","int","int","dex","dex","dex","dex","dex","dex","int","dex","int","int","int","int","dex","int","dex","int","dex","int","int","int","int","int","str","str"}};RunesBase={type={"R","R","R","R","T","T","T","T","A","A","A","A","E","E","E","E","D","D","D","D","M","M","M","M","Ff","Ef","It","Ic","E"},value={0.5 + 0 ,3 -2 ,1.5 -0 ,1 + 1 ,1284 -(1035 + 248) ,2,3,4,1133.5 -(549 + 584) ,686 -(314 + 371) ,1.5,970 -(478 + 490) ,1172.1 -(786 + 386) ,0.2 -0 ,0.3,0.4,0.5,1,1.5 + 0 ,6 -4 , -(12 -7), -10, -(57 -42), -(16 + 4),688 -(364 + 324) ,0,0 -0 ,0 -0 , -(0.1 -0)},mana={5 + 0 ,1096 -(686 + 400) ,15,20,234 -(73 + 156) ,10,1 + 14 ,490 -(224 + 246) ,10,18 -8 ,2 + 8 ,8 + 2 ,33 -23 ,10,10,2003 -(1238 + 755) ,5,1 + 9 ,27 -12 ,20, -5, -(874 -(196 + 668)), -(59 -44), -(853 -(171 + 662)),17 -12 ,21 -16 ,1496 -(35 + 1451) ,1473 -(28 + 1425) ,1993 -(941 + 1052) },complexity={1519 -(822 + 692) ,10,15,20,5 + 0 ,24 -14 ,21 -6 ,20,4 + 1 ,14 -4 ,15,20,1211 -(741 + 465) ,10,8 + 7 ,19 + 1 ,5,10,10 + 5 ,12 + 8 ,2 + 3 ,10,15,61 -41 ,24 -19 ,5,2 + 8 ,971 -(783 + 168) , -(5 + 0)},area={311 -(309 + 2) ,1212 -(1090 + 122) ,0 -0 ,1118 -(628 + 490) ,0 + 0 ,0 -0 ,0,774 -(431 + 343) ,0.5 -0 ,1 + 0 ,1.5,17 -(6 + 9) ,0 + 0 ,0 + 0 ,0 + 0 ,1317 -(486 + 831) ,0,0,0 -0 ,0 + 0 ,0 + 0 ,290 -(23 + 267) ,387 -(371 + 16) ,0 -0 ,118 -(88 + 30) ,0 -0 ,0,0,0 + 0 }};function CalcRunesPower(v181)local v182=1083 -(286 + 797) ;for v334=0 -0 ,7 do local v335=v181.runeIds:value(v334);if (RunesBase.type[v335]=="E") then v182=v182 + RunesBase.value[v335] ;end end return v182;end function CalcRunesMana(v183)local v184=0 -0 ;local v185;while true do if (v184==(439 -(397 + 42))) then v185=0;for v421=0 + 0 ,807 -(24 + 776)  do local v422=0 -0 ;local v423;while true do if (v422==(785 -(222 + 563))) then v423=v183.runeIds:value(v421);if (v423>(0 -0)) then v185=v185 + RunesBase.mana[v423] ;end break;end end end v184=1 + 0 ;end if (v184==(191 -(23 + 167))) then return v185;end end end function CalcRunesArea(v186)local v187=0;for v336=1798 -(690 + 1108) ,7 do local v337=0 + 0 ;local v338;while true do if (v337==(0 + 0)) then v338=v186.runeIds:value(v336);if (RunesBase.type[v338]=="A") then v187=v187 + RunesBase.area[v338] ;end break;end end end return v187;end function RecalcSpellPower(v188,v189,v190,v191)local v192=v189.subtypeId + (849 -(40 + 808)) ;local v193=CalcRunesPower(v189);local v194=CalcRunesMana(v189);local v195=CalcRunesArea(v189);local v196=5 + 20 ;if v190 then if (SpellBase.attribute[v192]=="str") then v196=GetStrength(v188);elseif (SpellBase.attribute[v192]=="dex") then v196=GetDexterity(v188);elseif (SpellBase.attribute[v192]=="int") then v196=GetIntelligence(v188);end end if (SpellBase.int_mod[v192]=="add") then v189.effect.power=((SpellBase.effect[v192] * ((3 -2) + v193)) + v196) -(24 + 1) ;elseif (SpellBase.int_mod[v192]=="mul") then v189.effect.power=(SpellBase.effect[v192] * (1 + 0 + v193) * v196)/25 ;end if v190 then end v189.manaCost=SpellBase.mana[v192] + math.max(0,v194) ;v189.effect.radius=math.sqrt((SpellBase.area[v192] * (1 + v195))/math.pi );if v190 then local v353=0 + 0 ;while true do if (v353==(572 -(47 + 524))) then v189.effect.radius=((SpellBase.area[v192]/math.sqrt(math.pi)) * (1 + 0 + v195) * v196)/(68 -43) ;break;end if (v353==(0 -0)) then if  not v191 then v189.manaCost=v189.manaCost/(2280 -1280) ;end if (v189.subtypeId==SpellType.Healing) then v189.effect.power=v189.effect.power/(2726 -(1165 + 561)) ;end v353=1 + 0 ;end end end end function RecalcSpellActions(v199,v200,v201)local v202=0;local v203;local v204;local v205;local v206;local v207;local v208;local v209;local v210;while true do if (v202==0) then v203=v199:sense(SenseType.Smell).curr;v204=v200.subtypeId + (3 -2) ;v202=1 + 0 ;end if (v202==(481 -(341 + 138))) then v207=(270 + 730) * v200.manaCost * GetManaBonus(v199.intelligence.curr) * v205 ;v208=(100 * v3 * v206)/5 ;v202=5 -2 ;end if (v202==(329 -(89 + 237))) then v209=(SpellBase.actions[v204] * (48 -33))/v199.actions.curr ;v210=v203 + (v209 * v208) ;v202=8 -4 ;end if (v202==(882 -(581 + 300))) then v205=(1221 -(855 + 365)) -(v199:perkModifier(PerkType.Mana) * (0.01 -0)) ;v206=1 + 0 + (v199:perkModifier(PerkType.Spirit) * (1235.01 -(1030 + 205))) ;v202=2 + 0 ;end if (v202==4) then if (v201 and (v210<v207)) then local v456=(((v207-v210)/v208) * v199.actions.curr)/(14 + 1) ;v200.actions=SpellBase.actions[v204] + v456 ;else v200.actions=SpellBase.actions[v204];end break;end end end SkillTypeFromSpellSubtype={3,4 -1 ,1 + 2 ,3 + 1 ,73 -(10 + 59) ,24 -19 ,5,5};PerkTypeFromSpellSubtype={2 + 5 ,8,8 + 1 ,1955 -(1036 + 909) ,16 -6 ,215 -(11 + 192) ,187 -(135 + 40) ,8 + 4 };function DisableItemEnchant(v211,v212,v213)local v214=0;local v215;while true do if (v214==(0 -0)) then v215=SpellBase.subtype[v212.spell.subtypeId + (1 -0) ];if ((v213>1) or (((v211.autoSkills:value(SkillTypeFromSpellSubtype[v215 + (177 -(50 + 126)) ]) + v211:perkModifier(PerkTypeFromSpellSubtype[v215 + 1 ]) + v211.intelligence.curr) -25)<v212.spell.complexity)) then local v460=0 -0 ;while true do if (v460==0) then v212.mp= -(1 + 0);v212.mpMax= -1;break;end end elseif (v212.mp<0) then local v495=1413 -(1233 + 180) ;while true do if (v495==(969 -(522 + 447))) then v212.mpMax=1521 -(107 + 1314) ;v212.mp=47 + 53 ;break;end end end break;end end end ManaFromArmorType={26 + 34 ,316 -236 ,50,5 + 35 ,38 -18 ,15 + 15 ,45 -25 };ManaFromWeaponType={123 -83 ,60,798 -(454 + 324) ,32 + 8 ,80,17 + 13 ,50};function RecalcItemEnchant(v216,v217,v218,v219)if v218 then if v218.spell then local v425=0 -0 ;while true do if (v425==1) then if  not v219 then if (v218.typeId==ItemType.Armor) then v218.mpMax=ManaFromArmorType[v218.prototype.typeId + 1 + 0 ];elseif (v218.typeId==ItemType.Weapon) then v218.mpMax=ManaFromWeaponType[v218.prototype.typeId + (1094 -(277 + 816)) ];end end if (v218.mpMax>0) then local v508=v218.spell.subtypeId;if (v219 and (v6[v216.id]<=0) and ((v508<=SpellType.PoisonFog) or (v508==SpellType.Healing))) then v218.regenRate=v3;else v218.regenRate=(4 -3)/(v218.mpMax * (1198 -(1058 + 125))) ;end end break;end if (v425==(0 + 0)) then RecalcSpellPower(v217,v218.spell,v219,true);DisableItemEnchant(v217,v218,OverloadMod(v216,v217));v425=1;end end end end end function RecalcPlayerSpells(v220,v221,v222)local v223=975 -(815 + 160) ;while true do if (v223==(0 -0)) then for v426=0 -0 ,7 do local v427=0;while true do if (0==v427) then if v220:spell(v426) then local v509=0 + 0 ;while true do if (v509==0) then RecalcSpellPower(v221,v220:spell(v426).spell,v222,false);RecalcSpellActions(v221,v220:spell(v426).spell,v222);break;end end end RecalcItemEnchant(v220,v221,v220:armor(v426),v222);break;end end end for v428=0 -0 ,1901 -(41 + 1857)  do local v429=1893 -(1222 + 671) ;while true do if (0==v429) then RecalcItemEnchant(v220,v221,v220:weapon(v428),v222);RecalcItemEnchant(v220,v221,v220:quickItem(v428),v222);break;end end end break;end end end function PlayerOnMap(v224)if v224.isPlayer then local v354=v224.id-(2479621430 -1479621430) ;if ((v354<1000) or (v354>(1437429 -437429))) then return true;end return false;else return true;end end function GetUnitArmor(v225,v226,v227)local v228=1182 -(229 + 953) ;local v229;while true do if (0==v228) then v229=0;if v225.isPlayer then v229=CalcArmor(v225,v227);else v229=v226:absorbtion(v227).curr;end v228=1775 -(1111 + 663) ;end if (v228==(1580 -(874 + 705))) then v9[v225.id]=v229;return v229;end end end function CalcArmor(v230,v231)local v232=0;local v233;while true do if (v232==0) then v233=0 + 0 ;for v430=0 + 0 ,12 -6  do if v230:armor(v430) then local v480=v230:armor(v430).absorbtions:value(v231);if (v430==ArmorType.Helm) then v480=(v480 * 1)/(1 + 9) ;elseif (v430==ArmorType.Plate) then v480=(v480 * (685 -(642 + 37)))/(3 + 7) ;elseif (v430==ArmorType.Leggins) then v480=(v480 * (1 + 2))/10 ;elseif (v430==ArmorType.Shirt) then v480=(v480 * (14 -8))/(464 -(233 + 221)) ;elseif (v430==ArmorType.Pants) then v480=(v480 * 3)/(23 -13) ;elseif (v430==ArmorType.Boots) then v480=(v480 * (3 + 0))/(1551 -(718 + 823)) ;elseif (v430==ArmorType.Gloves) then v480=(v480 * 3)/(7 + 3) ;end v233=v233 + v480 ;end end v232=1;end if (v232==(806 -(266 + 539))) then return v233;end end end function RecalcArmor(v234,v235)if v234.isPlayer then return false;end if IsHumanoid(v234) then for v389=0 -0 ,1231 -(636 + 589)  do local v390=0 -0 ;while true do if ((0 -0)==v390) then v235:absorbtion(v389).curr=0 + 0 ;v235:absorbtion(v389):addCurr(CalcArmor(v234,v389));break;end end end else for v391=0,2 + 3  do local v392=1015 -(657 + 358) ;local v393;local v394;while true do if (v392==(0 -0)) then v393=v235:absorbtion(DamageType.General).curr;v394=0 -0 ;v392=1188 -(1151 + 36) ;end if (v392==(1 + 0)) then if (v393~=(0 + 0)) then v394=(v235:absorbtion(v391).curr/v393) -(2 -1) ;end v235:absorbtion(v391).curr=math.max(0,v393 + (v394 * 100) );break;end end end v235:absorbtion(DamageType.General).curr=math.max(0,v235:absorbtion(DamageType.General).curr);if (v235.mp.regen==(1833 -(1552 + 280))) then v235:absorbtion(DamageType.Crushing).curr=v235:absorbtion(DamageType.Crushing).curr-(854 -(64 + 770)) ;end end end function IsHumanoid(v236)local v237=0;while true do if (v237==1) then return false;end if (v237==0) then if v236.isPlayer then return true;end for v432=0 + 0 ,6 do if v236:armor(v432) then return true;end end v237=2 -1 ;end end end function IsMage(v238)local v239=0;while true do if (v239==(1 + 0)) then return false;end if (v239==(1243 -(157 + 1086))) then if v238.isPlayer then return false;end for v433=0,7 do if v238:spell(v433) then if ((v238:spell(v433).spell.subtypeId<=SpellType.PoisonFog) or (v238:spell(v433).spell.subtypeId>=SpellType.RickMagic)) then return true;end end end v239=1;end end end function GetMaxComplexity(v240)local v241=0 -0 ;local v242;while true do if (v241==(4 -3)) then return v242;end if (v241==(0 -0)) then v242=0 -0 ;for v434=819 -(599 + 220) ,7 do if v240:spell(v434) then v242=math.max(v242,v240:spell(v434).spell.complexity);end end v241=1 -0 ;end end end function RecalcActions(v243,v244,v245,v246)v244.actionsDamageModifier=RecalcDamageModifier(v244,BodyPartType.Hand);local v248=1931.3 -(1813 + 118) ;v244.actions.base=15 + (v248 * (GetDexterity(v244) -25)) ;local v250=GetUnitArmor(v243,v245,DamageType.General);local v251=1 + 0 ;if v10[v243.id] then v251=v10[v243.id][1218 -(841 + 376) ];else v251=v250;end local v252=GetMaxComplexity(v243);local v253=math.max(0,v246:value(SpellType.Speed) -math.max(v251,v250,v252) );local v254=math.max(0 -0 ,v246:value(SpellType.Slow) -math.max(v251,v250,v252) );local v255=(v253-v254)/(3 + 7) ;if (v255<0) then v255=(2 -1)/((860 -(464 + 395)) -v255) ;else v255=1 + v255 ;end local v256=(2 -1) + (v244:perkModifier(PerkType.Quickness)/100) ;v244.actions.curr=math.max(1 + 0 ,v244.actions.base * v256 * v255 * v244.actionsDamageModifier );end function RecalcBackstab(v258,v259)local v260=v258.perks:value(PerkType.Backstab);if (v260==(837 -(467 + 370))) then return false;end local v261=12;if ((v260<=(5 -2)) and v259) then v258.perks:set(PerkType.Backstab,v260 + v261 );elseif ((v260>3) and  not v259) then v258.perks:set(PerkType.Backstab,v260-v261 );end end function RecalcVitality(v262,v263)local v264=0;local v265;local v266;while true do if (v264==(1 + 0)) then v266=27;if ((v265<=3) and v263) then v262.perks:set(PerkType.Vitality,v265 + v266 );elseif ((v265>3) and  not v263) then v262.perks:set(PerkType.Vitality,v265-v266 );end break;end if (v264==0) then v265=v262.perks:value(PerkType.Vitality);if (v265==(0 -0)) then return false;end v264=1 + 0 ;end end end function RecalcMana(v267,v268)local v269=0 -0 ;local v270;local v271;while true do if (v269==(520 -(150 + 370))) then v270=v267.perks:value(PerkType.Mana);if (v270==0) then return false;end v269=1283 -(74 + 1208) ;end if (v269==(2 -1)) then v271=156 -123 ;if ((v270<=(3 + 0)) and v268) then v267.perks:set(PerkType.Mana,v270 + v271 );elseif ((v270>(393 -(14 + 376))) and  not v268) then v267.perks:set(PerkType.Mana,v270-v271 );end break;end end end function ApplySpellEffects(v272,v273,v274,v275)local v276=v275;local v277=GetUnitArmor(v272,v274,DamageType.General);local v278=math.max(0,v276:value(SpellType.Antimagic) -v277 );local v279=math.max(v278,v276:value(SpellType.ProtFire) -v277 );local v280=math.max(v278,v276:value(SpellType.ProtElectric) -v277 );local v281=math.max(v278,v276:value(SpellType.ProtAcid) -v277 );v274:absorbtion(DamageType.Termical):addCurr(v279);v274:absorbtion(DamageType.Electrical):addCurr(v280);v274:absorbtion(DamageType.Chemical):addCurr(v281);local v282=math.max(0,v276:value(SpellType.Invisibility) -v277 )/100 ;v273:percept(SenseType.Sight).curr=math.max(0,v273:percept(SenseType.Sight).curr-v282 );v273:percept(SenseType.Hearing).curr=math.max(0 -0 ,v273:percept(SenseType.Hearing).curr-v276:value(SpellType.Silence) );local v285=math.max(0 + 0 ,v276:value(SpellType.Lichdom) -v277 )/(88 + 12) ;v273:percept(SenseType.SenseLife).curr=math.max(0 + 0 ,v273:percept(SenseType.SenseLife).curr-v285 );end function ApplyCustomEffects(v287,v288,v289,v290,v291)local v292=PlayerOnMap(v287);if (v289.hp.curr<=(0 -0)) then v292=false;end RecalcPlayerSpells(v287,v288,v292);if v287.isPlayer then RecalcBackstab(v288,v292);RecalcVitality(v288,v292);RecalcMana(v288,v292);end if v287.currWeapon then for v395=0,6 do v288.nawAttacks:set(v395,v287.currWeapon.prototype.damageDistributions:value(v395));end end if (v10[v287.id]==nil) then local v357=GetUnitArmor(v287,v289,DamageType.General);v10[v287.id]={v357,v357};end if IsHumanoid(v287) then local v359=GetStrength(v288)/25 ;local v360=v288:perkModifier(PerkType.Health) * (78.01 -(23 + 55)) ;if (v360>0) then v360=1 -v360 ;end v288:hitLocation(HitLocationType.Head).hpWeight=(2.5 -1) + v360 ;v288:hitLocation(HitLocationType.Left_hand).vitality=(0.334 + 0) * v359 ;v288:hitLocation(HitLocationType.Left_hand).hpWeight=(1 + 0) * v359 ;v288:hitLocation(HitLocationType.Right_hand).vitality=(0.334 -0) * v359 ;v288:hitLocation(HitLocationType.Right_hand).hpWeight=1 * v359 ;v288:hitLocation(HitLocationType.Left_leg).vitality=(0.667 + 0) * v359 ;v288:hitLocation(HitLocationType.Left_leg).hpWeight=(903 -(652 + 249)) * v359 ;v288:hitLocation(HitLocationType.Right_leg).vitality=0.667 * v359 ;v288:hitLocation(HitLocationType.Right_leg).hpWeight=(5 -3) * v359 ;end if v287.currWeapon then local v370=1868 -(708 + 1160) ;while true do if (v370==(0 -0)) then v10[v287.id]={v287.currWeapon.damageMin,v287.currWeapon.damageMax};v11[v287.id]=v287.currWeapon.actions;break;end end end end function RecalcUnitStats(v293,v294,v295,v296)local v297=27 -(10 + 17) ;local v298;local v299;local v300;local v301;local v302;while true do if ((1 + 1)==v297) then ApplySpellEffects(v300,v298,v299,v301);ApplyCustomEffects(v300,v298,v299,v301,v294);RecalcSight(v300,v298);RecalcArmor(v300,v299);v297=1735 -(1400 + 332) ;end if (3==v297) then if  not v300.isPlayer then v298.strength.base=v298.autoSkills:value(AutoSkillType.Archery);v298.dexterity.base=v298.manualSkills:value(ManualSkillType.Stealing);v298.intelligence.base=v298.manualSkills:value(ManualSkillType.Tame);end if v300.isPlayer then for v484=0 -0 ,3 do if (v300:weapon(v484) and (v300:weapon(v484).durability<(1908 -(242 + 1666)))) then v300:weapon(v484).durability=0 + 0 ;end end end v299.hp.max=GetModifiedHealth(v293,v295,v299.hp.max);v298:distributeHp(v299.hp.max);v297=2 + 2 ;end if (v297==(1 + 0)) then if (v6[v300.id]==nil) then v6[v300.id]=940 -(850 + 90) ;end v302=v299.hp.curr==v299.hp.max ;SetDefaultStats(v298,v299);ApplyPerks(v298);v297=2;end if ((9 -3)==v297) then if (v300.isPlayer and  not PlayerOnMap(v300)) then v298.move.curr=1490 -(360 + 1030) ;end v299.hp.curr=v298:collectHp(v299.hp.max);if v302 then v298:heal(v294,89 + 11 );end break;end if ((13 -8)==v297) then RecalcActions(v300,v298,v299,v301);v298.moveDamageModifier=1 -0 ;if (v298.locomotion==LocomotionType.Walk) then v298.moveDamageModifier=RecalcDamageModifier(v298,BodyPartType.Leg);end v298.move.curr=v298.move.base * v298.moveDamageModifier ;v297=1667 -(909 + 752) ;end if (v297==(1227 -(109 + 1114))) then if v300.isPlayer then v298.maxEncumbrance=GetMaxEncumbrance(v298);else v298.maxEncumbrance=1830838 -830838 ;end v298.currEncumbrance=v300.itemsWeight;v298:percept(SenseType.Hearing).curr=math.max(1,v298.currEncumbrance/300 );if v300.isPlayer then end v297=5;end if (v297==0) then v298=UnitServerStats(v293);v299=UnitServerCommonStats(v294);v300=UnitServer(v295);v301=Array(v296,Memory.Type.Float,16 + 24 ,true);v297=243 -(6 + 236) ;end end end function RecalcInternalHeroStats(v303,v304)local v305=UnitServerStats(v303);v305.strength.curr=v305.strength.base;v305.dexterity.curr=v305.dexterity.base;v305.intelligence.curr=v305.intelligence.base;for v339=0,2 + 1  do v305:sense(v339).curr=v305:sense(v339).base;v305:percept(v339).curr=v305:percept(v339).base;end ApplyPerks(v305);v305:distributeHp(CalcBaseHealth(v303));v305.currEncumbrance=v304;v305.maxEncumbrance=GetMaxEncumbrance(v305);v305.moveDamageModifier=RecalcDamageModifier(v305,BodyPartType.Leg);v305.move.curr=v305.move.base * v305.moveDamageModifier ;v305.actionsDamageModifier=RecalcDamageModifier(v305,BodyPartType.Hand);v305.actions.base=9 + 1 + (v305.dexterity.curr * (0.2 -0)) ;local v318=(1 -0) + (v305:perkModifier(PerkType.Quickness)/(1233 -(1076 + 57))) ;v305.actions.curr=math.max(1 + 0 ,v305.actions.base * v305.actionsDamageModifier * v318 );end function GetExpMultiplier(v320)return 2^((v320-25)/(699 -(579 + 110))) ;end function RecalcShopsPriceMultipliers(v321,v322)local v323=(v322 and 4) or (1 + 4) ;local v324=9;local v325=Array(v321,Memory.Type.Float,v323 * v324 ,false);for v344=0,3 + 0  do v325:set((v344 * v324) + 3 ,0);v325:set((v344 * v324) + 4 + 3 ,407 -(174 + 233) );v325:set((v344 * v324) + (22 -14) ,0.5 -0 );end end