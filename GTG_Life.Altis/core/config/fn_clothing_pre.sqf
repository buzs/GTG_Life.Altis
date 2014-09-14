/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_B_Wetsuit",nil,5000],
			["U_O_Wetsuit",nil,5000],
			["U_O_CombatUniform_ocamo",nil,10000],
			["U_O_GhillieSuit",nil,10000],
			["U_O_PilotCoveralls",nil,10000],
			["U_O_CombatUniform_oucamo",nil,10000],
			["U_O_SpecopsUniform_ocamo",nil,10000],
			["U_O_OfficerUniform_ocamo",nil,10000],
			["U_I_CombatUniform",nil,10000],
			["U_I_CombatUniform_tshirt",nil,10000],
			["U_I_pilotCoveralls",nil,10000],
			["U_I_HeliPilotCoveralls",nil,10000],
			["U_I_GhillieSuit",nil,10000],
			["U_I_OfficerUniform",nil,10000],
			["U_IG_Guerilla1_1",nil,10000],
			["U_IG_Guerilla2_1",nil,10000],
			["U_IG_Guerilla2_2",nil,10000],
			["U_IG_Guerilla2_3",nil,10000],
			["U_IG_leader",nil,10000],
			["U_BG_Guerilla1_1",nil,10000],
			["U_BG_Guerilla2_1",nil,10000],
			["U_BG_Guerilla2_2",nil,10000],
			["U_BG_Guerilla2_3",nil,10000],
			["U_OG_Guerilla1_1",nil,10000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Shemag_khk",nil,1000],
			["H_Shemag_tan",nil,1000],
			["H_Shemag_olive",nil,1000],
			["H_Shemag_olive_hs",nil,1000],
			["H_ShemagOpen_khk",nil,1000],
			["H_ShemagOpen_tan",nil,1000],
			["H_Bandanna_surfer",nil,1000],
			["H_Bandanna_khk",nil,1000],
			["H_Bandanna_khk_hs",nil,1000],
			["H_Bandanna_cbr",nil,1000],
			["H_Bandanna_sgg",nil,1000],
			["H_Bandanna_gry",nil,1000],
			["H_Bandanna_camo",nil,1000],
			["H_Bandanna_mcamo",nil,1000],
			["H_MilCap_ocamo",nil,1000],
			["H_MilCap_mcamo",nil,1000],
			["H_MilCap_oucamo",nil,1000],
			["H_MilCap_rucamo",nil,1000],
			["H_MilCap_gry",nil,1000],
			["H_MilCap_dgtl",nil,1000],
			["H_MilCap_blue",nil,1000],
			["H_HelmetB",nil,1000],
			["H_HelmetB_camo",nil,1000],
			["H_HelmetB_paint",nil,1000],
			["H_HelmetB_light",nil,1000],
			["H_HelmetB_plain_mcamo",nil,1000],
			["H_HelmetB_plain_blk",nil,1000],
			["H_HelmetSpecB",nil,1000],
			["H_HelmetSpecB_paint1",nil,1000],
			["H_HelmetSpecB_paint2",nil,1000],
			["H_HelmetSpecB_blk",nil,1000],
			["H_HelmetIA",nil,1000],
			["H_HelmetIA_net",nil,1000],
			["H_HelmetIA_camo",nil,1000],
			["H_Helmet_Kerry",nil,1000],
			["H_HelmetB_grass",nil,1000],
			["H_HelmetB_snakeskin",nil,1000],
			["H_HelmetB_desert",nil,1000],
			["H_HelmetB_black",nil,1000],
			["H_HelmetB_sand",nil,1000],
			["H_HelmetCrew_B",nil,1000],
			["H_HelmetCrew_O",nil,1000],
			["H_HelmetCrew_I",nil,1000],
			["H_HelmetO_ocamo",nil,1000],
			["H_HelmetLeaderO_ocamo",nil,1000]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,20],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,20],
			["G_Lowprofile",nil,20],
			["G_Combat",nil,50]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_RebreatherB",nil,5000],
			["V_RebreatherIR",nil,5000],
			["V_RebreatherIA",nil,5000],
			["V_Chestrig_khk",nil,10000],
			["V_Chestrig_rgr",nil,10000],
			["V_Chestrig_blk",nil,10000],
			["V_Chestrig_oli",nil,10000],
			["V_TacVest_khk",nil,10000],
			["V_TacVest_brn",nil,10000],
			["V_TacVest_oli",nil,10000],
			["V_TacVest_blk",nil,10000],
			["V_TacVest_camo",nil,10000],
			["V_TacVestIR_blk",nil,10000],
			["V_TacVestCamo_khk",nil,10000],
			["V_HarnessO_brn",nil,10000],
			["V_HarnessOGL_brn",nil,10000],
			["V_HarnessO_gry",nil,10000],
			["V_HarnessOGL_gry",nil,10000],
			["V_HarnessOSpec_brn",nil,10000],
			["V_HarnessOSpec_gry",nil,10000],
			["V_PlateCarrierIA1_dgtl",nil,10000],
			["V_PlateCarrierIA2_dgtl",nil,10000],
			["V_PlateCarrierIAGL_dgtl",nil,10000],
			["V_PlateCarrier_Kerry",nil,10000],
			["V_PlateCarrierL_CTRG",nil,10000],
			["V_PlateCarrierH_CTRG",nil,10000],
			["V_I_G_resistanceLeader_F",nil,10000],
			["V_Press_F",nil,5000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};