#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Você não é Médico"};
			default {
				["Loja do Hospital",
					[
						["ItemGPS",nil,200],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000],
						["B_Carryall_khk",nil,5000]
					]
				];
			};
		};
	};
	
	case "cop_soldier":
	{
		switch(true) do
		{
			case (playerSide != west): {"Você não é Policial!"};
			default
			{
				["Loja de Soldado",
					[
						["Binocular",nil,5000],
						["NVGoggles_OPFOR",nil,2000],
						["ToolKit",nil,500],
						["FirstAidKit",nil,200],
						["ItemGPS",nil,500],
						["SmokeShell","Granada de Fumaça Branca",2000],
						["SmokeShellRed","Granada de Fumaça Vermelha",2000],
						["SmokeShellGreen","Granada de Fumaça Verde",2000],
						["SmokeShellYellow","Granada de Fumaça Amarela",2000],
						["SmokeShellPurple","Granada de Fumaça Roxa",2000],
						["SmokeShellBlue","Granada de Fumaça Azul",2000],
						["SmokeShellOrange","Granada de Fumaça Laranja",2000],
						["HandGrenade_Stone","Flashbang",1700],
						["hgun_P07_snds_F","Pistola Taser",10000],
						["arifle_sdar_F","Rifle Taser",20000],
						["hgun_PDW2000_snds_F",nil,3000],
						["arifle_MXC_F",nil,20000],
						["acc_flashlight",nil,300],
						["optic_Holosight",nil,2200],
						["optic_Arco",nil,5000],
						["muzzle_snds_L",nil,3000],
						["muzzle_snds_H",nil,30000],
						["16Rnd_9x21_Mag",nil,1000],
						["30Rnd_9x21_Mag",nil,2000],
						["30Rnd_65x39_caseless_mag",nil,3500],
						["20Rnd_556x45_UW_mag","Munição Taser Rifle",17500]
					]
				];
			};
		};
	};
	
	case "cop_cabo":
	{
		switch(true) do
		{
			case (playerSide != west): {"Você não é Policial!"};
			case (__GETC__(life_coplevel) < 2): {"Você não é um Cabo"};
			default
			{
				["Loja de Cabo",
					[
					    ["Rangefinder",nil,25000],
						["NVGoggles_OPFOR",nil,2000],
						["ToolKit",nil,500],
						["FirstAidKit",nil,200],
						["ItemGPS",nil,500],
						["SmokeShell","Granada de Fumaça Branca",2000],
						["SmokeShellRed","Granada de Fumaça Vermelha",2000],
						["SmokeShellGreen","Granada de Fumaça Verde",2000],
						["SmokeShellYellow","Granada de Fumaça Amarela",2000],
						["SmokeShellPurple","Granada de Fumaça Roxa",2000],
						["SmokeShellBlue","Granada de Fumaça Azul",2000],
						["SmokeShellOrange","Granada de Fumaça Laranja",2000],
						["HandGrenade_Stone","Flashbang",1700],
						["hgun_ACPC2_F",nil,5000],
						["hgun_P07_snds_F","Pistola Taser",10000],
						["arifle_sdar_F","Rifle Taser",20000],
						["hgun_PDW2000_snds_F",nil,3000],
						["arifle_MXC_F",nil,20000],
						["arifle_MX_F",nil,32000],
						["acc_flashlight",nil,300],
						["acc_pointer_IR",nil,4000],
						["optic_MRCO",nil,30000],
						["optic_Holosight",nil,2200],
						["optic_MRD",nil,300],
						["optic_NVS",nil,300],
						["optic_SOS",nil,10000],
						["optic_LRPS",nil,100000],
						["optic_Aco",nil,3500],
						["optic_ACO_grn",nil,3500],
						["optic_Hamr",nil,7500],
						["optic_Arco",nil,5000],
						["optic_DMS",nil,4000],
						["muzzle_snds_L",nil,3000],
						["muzzle_snds_acp",nil,1500],
						["muzzle_snds_H",nil,30000],
						["9Rnd_45ACP_Mag",nil,200],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,100],
						["30Rnd_65x39_caseless_mag",nil,130],
						["20Rnd_556x45_UW_mag","Munição Taser Rifle",150]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Você não é Policial!"};
			case (__GETC__(life_coplevel) < 3): {"Você não é um Sargento"};
			default
			{
				["Loja de Sargento",
					[
					    ["Rangefinder",nil,25000],
						["NVGoggles_OPFOR",nil,2000],
						["ToolKit",nil,500],
						["FirstAidKit",nil,200],
						["ItemGPS",nil,200],
						["SmokeShell","Granada de Fumaça Branca",2000],
						["SmokeShellRed","Granada de Fumaça Vermelha",2000],
						["SmokeShellGreen","Granada de Fumaça Verde",2000],
						["SmokeShellYellow","Granada de Fumaça Amarela",2000],
						["SmokeShellPurple","Granada de Fumaça Roxa",2000],
						["SmokeShellBlue","Granada de Fumaça Azul",2000],
						["SmokeShellOrange","Granada de Fumaça Laranja",2000],
						["HandGrenade_Stone","Flashbang",1700],
						["hgun_ACPC2_F",nil,5000],
						["hgun_P07_snds_F","Pistola Taser",10000],
						["arifle_sdar_F","Rifle Taser",20000],
						["hgun_PDW2000_snds_F",nil,3000],
						["arifle_MXC_F",nil,20000],
						["arifle_MX_F",nil,32000],
						["acc_flashlight",nil,300],
						["acc_pointer_IR",nil,4000],
						["optic_MRCO",nil,30000],
						["optic_Holosight",nil,2200],
						["optic_MRD",nil,300],
						["optic_NVS",nil,300],
						["optic_SOS",nil,10000],
						["optic_LRPS",nil,100000],
						["optic_Aco",nil,3500],
						["optic_ACO_grn",nil,3500],
						["optic_Hamr",nil,7500],
						["optic_Arco",nil,5000],
						["optic_DMS",nil,4000],
						["muzzle_snds_L",nil,3000],
						["muzzle_snds_acp",nil,1500],
						["muzzle_snds_H",nil,30000],
						["9Rnd_45ACP_Mag",nil,200],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,100],
						["30Rnd_65x39_caseless_mag",nil,130],
						["20Rnd_556x45_UW_mag","Munição Taser Rifle",150]
					]
				];
			};
		};
	};
	
	case "cop_tenent":
	{
		switch(true) do
		{
			case (playerSide != west): {"Você não é Policial!"};
			case (__GETC__(life_coplevel) < 4): {"Você não é um Tenente"};
			default
			{
				["Loja de Tenente",
					[
						["Rangefinder",nil,25000],
						["NVGoggles_OPFOR",nil,2000],
						["ToolKit",nil,500],
						["FirstAidKit",nil,200],
						["ItemGPS",nil,200],
						["SmokeShell","Granada de Fumaça Branca",2000],
						["SmokeShellRed","Granada de Fumaça Vermelha",2000],
						["SmokeShellGreen","Granada de Fumaça Verde",2000],
						["SmokeShellYellow","Granada de Fumaça Amarela",2000],
						["SmokeShellPurple","Granada de Fumaça Roxa",2000],
						["SmokeShellBlue","Granada de Fumaça Azul",2000],
						["SmokeShellOrange","Granada de Fumaça Laranja",2000],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["hgun_ACPC2_F",nil,5000],
						["hgun_P07_snds_F","Pistola Taser",10000],
						["arifle_sdar_F","Rifle Taser",20000],
						["hgun_PDW2000_snds_F",nil,3000],
						["arifle_MXC_F",nil,20000],
						["arifle_MX_F",nil,32000],
						["arifle_MX_SW_F",nil,35000],
						["srifle_EBR_SOS_F",nil,35000],
						["acc_flashlight",nil,300],
						["acc_pointer_IR",nil,4000],
						["optic_MRCO",nil,30000],
						["optic_Holosight",nil,2200],
						["optic_MRD",nil,300],
						["optic_NVS",nil,300],
						["optic_SOS",nil,10000],
						["optic_LRPS",nil,100000],
						["optic_ACO_grn",nil,3500],
						["optic_Aco",nil,3500],
						["optic_Hamr",nil,7500],
						["optic_Arco",nil,5000],
						["optic_DMS",nil,4000],
						["muzzle_snds_L",nil,3000],
						["muzzle_snds_acp",nil,1500],
						["muzzle_snds_H",nil,30000],
						["muzzle_snds_B",nil,5000],
						["9Rnd_45ACP_Mag",nil,200],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,100],
						["30Rnd_65x39_caseless_mag",nil,130],
						["100Rnd_65x39_caseless_mag",nil,500],
						["20Rnd_762x51_Mag",nil,300],
						["20Rnd_556x45_UW_mag","Munição Taser Rifle",150]
					]
				];
			};
		};
	};
	
	case "cop_captain":
	{
		switch(true) do
		{
			case (playerSide != west): {"Você não é Policial!"};
			case (__GETC__(life_coplevel) < 5): {"Você não é um Capitão"};
			default
			{
				["Loja de Capitão",
					[
						["Rangefinder",nil,25000],
						["NVGoggles_OPFOR",nil,2000],
						["ToolKit",nil,500],
						["FirstAidKit",nil,200],
						["ItemGPS",nil,200],
						["SmokeShell","Granada de Fumaça Branca",2000],
						["SmokeShellRed","Granada de Fumaça Vermelha",2000],
						["SmokeShellGreen","Granada de Fumaça Verde",2000],
						["SmokeShellYellow","Granada de Fumaça Amarela",2000],
						["SmokeShellPurple","Granada de Fumaça Roxa",2000],
						["SmokeShellBlue","Granada de Fumaça Azul",2000],
						["SmokeShellOrange","Granada de Fumaça Laranja",2000],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["hgun_ACPC2_F",nil,5000],
						["hgun_P07_snds_F","Pistola Taser",10000],
						["arifle_sdar_F","Rifle Taser",20000],
						["hgun_PDW2000_snds_F",nil,3000],
						["arifle_MXC_F",nil,20000],
						["arifle_MXC_Black_F",nil,25000],
						["arifle_MX_F",nil,32000],
						["arifle_MX_SW_F",nil,35000],
						["srifle_EBR_SOS_F",nil,35000],
						["LMG_Mk200_F",nil,50000],
						["acc_flashlight",nil,300],
						["acc_pointer_IR",nil,4000],
						["optic_MRCO",nil,30000],
						["optic_Holosight",nil,2200],
						["optic_MRD",nil,300],
						["optic_NVS",nil,300],
						["optic_SOS",nil,10000],
						["optic_LRPS",nil,100000],
						["optic_ACO_grn",nil,3500],
						["optic_Aco",nil,3500],
						["optic_Hamr",nil,7500],
						["optic_Arco",nil,5000],
						["optic_DMS",nil,4000],
						["muzzle_snds_L",nil,3000],
						["muzzle_snds_acp",nil,1500],
						["muzzle_snds_H",nil,30000],
						["muzzle_snds_B",nil,5000],
						["muzzle_snds_H_MG",nil,10000],
						["9Rnd_45ACP_Mag",nil,200],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,100],
						["30Rnd_65x39_caseless_mag_Tracer",nil,130],
						["30Rnd_65x39_caseless_mag",nil,130],
						["100Rnd_65x39_caseless_mag",nil,500],
						["20Rnd_762x51_Mag",nil,300],
						["200Rnd_65x39_cased_Box",nil,500],
						["20Rnd_556x45_UW_mag","Munição Taser Rifle",150]
					]
				];
			};
		};
	};
	
	case "cop_major":
	{
		switch(true) do
		{
			case (playerSide != west): {"Você não é Policial!"};
			case (__GETC__(life_coplevel) < 6): {"Você não é um Major"};
			default
			{
				["Loja de Major",
					[
						["Rangefinder",nil,25000],
						["NVGoggles_OPFOR",nil,2000],
						["ToolKit",nil,500],
						["FirstAidKit",nil,200],
						["ItemGPS",nil,200],
						["SmokeShell","Granada de Fumaça Branca",2000],
						["SmokeShellRed","Granada de Fumaça Vermelha",2000],
						["SmokeShellGreen","Granada de Fumaça Verde",2000],
						["SmokeShellYellow","Granada de Fumaça Amarela",2000],
						["SmokeShellPurple","Granada de Fumaça Roxa",2000],
						["SmokeShellBlue","Granada de Fumaça Azul",2000],
						["SmokeShellOrange","Granada de Fumaça Laranja",2000],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["hgun_ACPC2_F",nil,5000],
						["hgun_P07_snds_F","Pistola Taser",10000],
						["arifle_sdar_F","Rifle Taser",20000],
						["hgun_PDW2000_snds_F",nil,3000],
						["arifle_MXC_F",nil,20000],
						["arifle_MXC_Black_F",nil,25000],
						["arifle_MX_F",nil,32000],
						["arifle_MX_Black_F",nil,37000],
						["arifle_MXM_F",nil,35000],
						["arifle_MXM_Black_F",nil,40000],
						["arifle_MX_SW_F",nil,35000],
						["arifle_MX_SW_Black_F",nil,40000],
						["srifle_EBR_SOS_F",nil,35000],
						["LMG_Mk200_F",nil,50000],
						["srifle_LRR_SOS_F",nil,1000000],
						["acc_flashlight",nil,300],
						["acc_pointer_IR",nil,4000],
						["optic_MRCO",nil,30000],
						["optic_Holosight",nil,2200],
						["optic_MRD",nil,300],
						["optic_NVS",nil,300],
						["optic_SOS",nil,10000],
						["optic_LRPS",nil,100000],
						["optic_ACO_grn",nil,3500],
						["optic_Aco",nil,3500],
						["optic_Hamr",nil,7500],
						["optic_Arco",nil,5000],
						["optic_DMS",nil,4000],
						["muzzle_snds_L",nil,3000],
						["muzzle_snds_acp",nil,1500],
						["muzzle_snds_H",nil,30000],
						["muzzle_snds_B",nil,5000],
						["muzzle_snds_H_MG",nil,10000],
						["9Rnd_45ACP_Mag",nil,200],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,100],
						["30Rnd_65x39_caseless_mag_Tracer",nil,130],
						["30Rnd_65x39_caseless_mag",nil,130],
						["100Rnd_65x39_caseless_mag",nil,500],
						["20Rnd_762x51_Mag",nil,300],
						["200Rnd_65x39_cased_Box",nil,500],
						["7Rnd_408_Mag",nil,5000],
						["20Rnd_556x45_UW_mag","Munição Taser Rifle",150]
					]
				];
			};
		};
	};
	
	case "cop_coronel":
	{
		switch(true) do
		{
			case (playerSide != west): {"Você não é Policial!"};
			case (__GETC__(life_coplevel) < 7): {"Você não é um Coronel"};
			default
			{
				["Loja de Coronel",
					[
						["Rangefinder",nil,25000],
						["NVGoggles_OPFOR",nil,2000],
						["ToolKit",nil,500],
						["FirstAidKit",nil,200],
						["ItemGPS",nil,200],
						["SmokeShell","Granada de Fumaça Branca",2000],
						["SmokeShellRed","Granada de Fumaça Vermelha",2000],
						["SmokeShellGreen","Granada de Fumaça Verde",2000],
						["SmokeShellYellow","Granada de Fumaça Amarela",2000],
						["SmokeShellPurple","Granada de Fumaça Roxa",2000],
						["SmokeShellBlue","Granada de Fumaça Azul",2000],
						["SmokeShellOrange","Granada de Fumaça Laranja",2000],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["hgun_ACPC2_F",nil,5000],
						["hgun_P07_snds_F","Pistola Taser",10000],
						["arifle_sdar_F","Rifle Taser",20000],
						["hgun_PDW2000_snds_F",nil,3000],
						["arifle_MXC_F",nil,20000],
						["arifle_MXC_Black_F",nil,25000],
						["arifle_MX_F",nil,32000],
						["arifle_MX_Black_F",nil,37000],
						["arifle_MXM_F",nil,35000],
						["arifle_MXM_Black_F",nil,40000],
						["arifle_MX_SW_F",nil,35000],
						["arifle_MX_SW_Black_F",nil,40000],
						["srifle_EBR_SOS_F",nil,35000],
						["LMG_Mk200_F",nil,50000],
						["srifle_LRR_SOS_F",nil,1000000],
						["srifle_GM6_SOS_F",nil,2000000],
						["acc_flashlight",nil,300],
						["acc_pointer_IR",nil,4000],
						["optic_MRCO",nil,30000],
						["optic_Holosight",nil,2200],
						["optic_MRD",nil,300],
						["optic_NVS",nil,300],
						["optic_SOS",nil,10000],
						["optic_LRPS",nil,100000],
						["optic_ACO_grn",nil,3500],
						["optic_Aco",nil,3500],
						["optic_Hamr",nil,7500],
						["optic_Arco",nil,5000],
						["optic_DMS",nil,4000],
						["muzzle_snds_L",nil,3000],
						["muzzle_snds_acp",nil,1500],
						["muzzle_snds_H",nil,30000],
						["muzzle_snds_B",nil,5000],
						["muzzle_snds_H_MG",nil,10000],
						["9Rnd_45ACP_Mag",nil,200],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,100],
						["30Rnd_65x39_caseless_mag_Tracer",nil,130],
						["30Rnd_65x39_caseless_mag",nil,130],
						["100Rnd_65x39_caseless_mag",nil,500],
						["20Rnd_762x51_Mag",nil,300],
						["200Rnd_65x39_cased_Box",nil,500],
						["7Rnd_408_Mag",nil,5000],
						["5Rnd_127x108_APDS_Mag",nil,10000],
						["20Rnd_556x45_UW_mag","Munição Taser Rifle",150]
					]
				];
			};
		};
	};
	
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Você não é um Civil!"};
			case (!license_civ_rebel): {"Você não possui Licença Rebelde"};
			default
			{
				["Loja Rebelde Level 1",
					[
						["Rangefinder",nil,75000],
						["NVGoggles",nil,2000],
						["ToolKit",nil,500],
						["FirstAidKit",nil,200],
						["arifle_SDAR_F",nil,20000],
						["arifle_TRG20_F",nil,25000],
						["SMG_01_Holo_F",nil,25000],
						["SMG_02_F",nil,25000],
						["hgun_Pistol_heavy_02_F",nil,8000],
						["optic_Holosight",nil,5000],
						["optic_MRD",nil,5000],
						["optic_Hamr",nil,5000],
						["optic_ACO_grn",nil,6000],
						["optic_Aco",nil,6000],
						["acc_flashlight",nil,1500],
						["30Rnd_9x21_Mag",nil,250],
						["20Rnd_556x45_UW_mag",nil,250],
						["30Rnd_556x45_Stanag",nil,250],
						["30Rnd_45ACP_Mag_SMG_01",nil,250],
						["6Rnd_45ACP_Cylinder",nil,100],
						["SmokeShell","Granada de Fumaça Branca",2000],
						["SmokeShellRed","Granada de Fumaça Vermelha",2000],
						["SmokeShellGreen","Granada de Fumaça Verde",2000],
						["SmokeShellYellow","Granada de Fumaça Amarela",2000],
						["SmokeShellPurple","Granada de Fumaça Roxa",2000],
						["SmokeShellBlue","Granada de Fumaça Azul",2000],
						["SmokeShellOrange","Granada de Fumaça Laranja",2000]
					]
				];
			};
		};
	};
	
	
	case "rebel2":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Você não é um Civil!"};
			case (!license_civ_rebel): {"Você não possui Licença Rebelde Level 2"};
			default
			{
				["Loja Rebelde Level 2",
					[
						["Rangefinder",nil,50000],
						["NVGoggles",nil,2000],
						["ToolKit",nil,500],
						["FirstAidKit",nil,200],
						["arifle_SDAR_F",nil,15000],
						["arifle_TRG20_F",nil,20000],
						["SMG_01_Holo_F",nil,20000],
						["SMG_02_F",nil,20000],
						["arifle_Katiba_F",nil,30000],
						["hgun_Pistol_heavy_02_F",nil,6500],
						["hgun_Pistol_heavy_01_F",nil,8000],
						["optic_Holosight",nil,5000],
						["optic_MRD",nil,5000],
						["optic_Hamr",nil,5000],
						["optic_MRCO",nil,5000],
						["optic_ACO_grn",nil,6000],
						["optic_Aco",nil,6000],
						["optic_SOS",nil,10000],
						["acc_flashlight",nil,1500],
						["30Rnd_9x21_Mag",nil,250],
						["20Rnd_556x45_UW_mag",nil,250],
						["30Rnd_556x45_Stanag",nil,250],
						["30Rnd_45ACP_Mag_SMG_01",nil,250],
						["11Rnd_45ACP_Mag",nil,100],
						["30Rnd_65x39_caseless_green",nil,250],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,250],
						["6Rnd_45ACP_Cylinder",nil,100],
						["SmokeShell","Granada de Fumaça Branca",2000],
						["SmokeShellRed","Granada de Fumaça Vermelha",2000],
						["SmokeShellGreen","Granada de Fumaça Verde",2000],
						["SmokeShellYellow","Granada de Fumaça Amarela",2000],
						["SmokeShellPurple","Granada de Fumaça Roxa",2000],
						["SmokeShellBlue","Granada de Fumaça Azul",2000],
						["SmokeShellOrange","Granada de Fumaça Laranja",2000]
					]
				];
			};
		};
	};
	
	case "rebel3":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Você não é um Civil!"};
			case (!license_civ_rebel): {"Você não possui Licença Rebelde Level 3"};
			default
			{
				["Loja Rebelde Level 3",
					[
						["Rangefinder",nil,35000],
						["NVGoggles",nil,2000],
						["ToolKit",nil,500],
						["FirstAidKit",nil,200],
						["arifle_SDAR_F",nil,12500],
						["arifle_TRG20_F",nil,17500],
						["SMG_01_Holo_F",nil,17500],
						["SMG_02_F",nil,17500],
						["arifle_Katiba_F",nil,23000],
						["srifle_DMR_01_F",nil,80000],
						["LMG_Zafir_F",nil,100000],
						["hgun_Pistol_heavy_02_F",nil,5000],
						["hgun_Pistol_heavy_01_F",nil,6500],
						["hgun_Rook40_F",nil,8000],
						["optic_Holosight",nil,5000],
						["optic_MRD",nil,5000],
						["optic_Hamr",nil,5000],
						["optic_MRCO",nil,5000],
						["optic_ACO_grn",nil,6000],
						["optic_Aco",nil,6000],
						["optic_SOS",nil,10000],
						["optic_LRPS",nil,100000],
						["optic_NVS",nil,10000],
						["acc_flashlight",nil,1500],
						["30Rnd_9x21_Mag",nil,250],
						["20Rnd_556x45_UW_mag",nil,250],
						["30Rnd_556x45_Stanag",nil,250],
						["30Rnd_45ACP_Mag_SMG_01",nil,250],
						["11Rnd_45ACP_Mag",nil,100],
						["30Rnd_65x39_caseless_green",nil,250],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,250],
						["10Rnd_762x51_Mag",nil,1000],
						["150Rnd_762x51_Box",nil,1500],
						["6Rnd_45ACP_Cylinder",nil,100],
						["SmokeShell","Granada de Fumaça Branca",2000],
						["SmokeShellRed","Granada de Fumaça Vermelha",2000],
						["SmokeShellGreen","Granada de Fumaça Verde",2000],
						["SmokeShellYellow","Granada de Fumaça Amarela",2000],
						["SmokeShellPurple","Granada de Fumaça Roxa",2000],
						["SmokeShellBlue","Granada de Fumaça Azul",2000],
						["SmokeShellOrange","Granada de Fumaça Laranja",2000]
					]
				];
			};
		};
	};
	
	//PREMIUM-BUZ
	case "premium":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Você não é um Civil!"};
			case (!license_civ_premium): {"Você não é Premium"};
			default
			{
				["Armas Premium",
					[
						["Rangefinder",nil,5000],
						["NVGoggles_INDEP",nil,2000],
						["ToolKit",nil,500],
						["FirstAidKit",nil,200],
						["arifle_SDAR_F",nil,5000],
						["arifle_TRG20_F",nil,5000],
						["SMG_01_Holo_F",nil,5000],
						["SMG_02_F",nil,5000],
						["arifle_Katiba_F",nil,12000],
						["arifle_MXC_F",nil,12000],
						["arifle_MX_F",nil,15000],
						["arifle_MX_SW_F",nil,18000],
						["arifle_MXM_F",nil,18000],
						["srifle_EBR_F",nil,30000],
						["srifle_DMR_01_F",nil,20000],
						["LMG_Mk200_F",nil,35000],
						["LMG_Zafir_F",nil,30000],
						["hgun_Pistol_heavy_02_F",nil,3000],
						["hgun_Pistol_heavy_01_F",nil,4000],
						["hgun_Rook40_F",nil,5000],
						["optic_Holosight",nil,2000],
						["optic_MRD",nil,2000],
						["optic_Hamr",nil,2000],
						["optic_MRCO",nil,2000],
						["optic_ACO_grn",nil,3000],
						["optic_Aco",nil,3000],
						["optic_SOS",nil,6000],
						["optic_LRPS",nil,20000],
						["optic_NVS",nil,10000],
						["acc_flashlight",nil,1000],
						["acc_pointer_IR",nil,2000],
						["30Rnd_9x21_Mag",nil,250],
						["20Rnd_556x45_UW_mag",nil,250],
						["30Rnd_556x45_Stanag",nil,250],
						["30Rnd_45ACP_Mag_SMG_01",nil,250],
						["11Rnd_45ACP_Mag",nil,100],
						["30Rnd_65x39_caseless_green",nil,250],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,250],
						["10Rnd_762x51_Mag",nil,250],
						["20Rnd_762x51_Mag",nil,500],
						["150Rnd_762x51_Box",nil,250],
						["200Rnd_65x39_cased_Box_Tracer",nil,500],
						["30Rnd_65x39_caseless_mag_Tracer",nil,350],
						["100Rnd_65x39_caseless_mag_Tracer",nil,700],
						["30Rnd_65x39_caseless_mag",nil,350],
						["100Rnd_65x39_caseless_mag",nil,700],
						["6Rnd_45ACP_Cylinder",nil,100],
						["SmokeShell","Granada de Fumaça Branca",1000],
						["SmokeShellRed","Granada de Fumaça Vermelha",1000],
						["SmokeShellGreen","Granada de Fumaça Verde",1000],
						["SmokeShellYellow","Granada de Fumaça Amarela",1000],
						["SmokeShellPurple","Granada de Fumaça Roxa",1000],
						["SmokeShellBlue","Granada de Fumaça Azul",1000],
						["SmokeShellOrange","Granada de Fumaça Laranja",1000]
					]
				];
			};
		};
	};
	
	case "premium2":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Você não é um Civil!"};
			case (!license_civ_premium2): {"Você não é Premium Lv.2"};
			default
			{
				["Armas Premium",
					[
						["Rangefinder",nil,5000],
						["NVGoggles_INDEP",nil,2000],
						["ToolKit",nil,500],
						["FirstAidKit",nil,200],
						["arifle_SDAR_F",nil,5000],
						["arifle_TRG20_F",nil,5000],
						["SMG_01_Holo_F",nil,5000],
						["SMG_02_F",nil,5000],
						["arifle_Katiba_F",nil,12000],
						["arifle_MXC_F",nil,12000],
						["arifle_MX_F",nil,15000],
						["arifle_MX_SW_F",nil,18000],
						["arifle_MXM_F",nil,18000],
						["srifle_EBR_F",nil,30000],
						["srifle_DMR_01_F",nil,20000],
						["LMG_Mk200_F",nil,35000],
						["LMG_Zafir_F",nil,30000],
						["hgun_Pistol_heavy_02_F",nil,3000],
						["hgun_Pistol_heavy_01_F",nil,4000],
						["hgun_Rook40_F",nil,5000],
						["optic_Holosight",nil,2000],
						["optic_MRD",nil,2000],
						["optic_Hamr",nil,2000],
						["optic_MRCO",nil,2000],
						["optic_ACO_grn",nil,3000],
						["optic_Aco",nil,3000],
						["optic_SOS",nil,6000],
						["optic_LRPS",nil,20000],
						["optic_NVS",nil,10000],
						["acc_flashlight",nil,1000],
						["acc_pointer_IR",nil,2000],
						["30Rnd_9x21_Mag",nil,250],
						["20Rnd_556x45_UW_mag",nil,250],
						["30Rnd_556x45_Stanag",nil,250],
						["30Rnd_45ACP_Mag_SMG_01",nil,250],
						["11Rnd_45ACP_Mag",nil,100],
						["30Rnd_65x39_caseless_green",nil,250],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,250],
						["10Rnd_762x51_Mag",nil,250],
						["20Rnd_762x51_Mag",nil,500],
						["150Rnd_762x51_Box",nil,250],
						["200Rnd_65x39_cased_Box_Tracer",nil,500],
						["30Rnd_65x39_caseless_mag_Tracer",nil,350],
						["100Rnd_65x39_caseless_mag_Tracer",nil,700],
						["30Rnd_65x39_caseless_mag",nil,350],
						["100Rnd_65x39_caseless_mag",nil,700],
						["6Rnd_45ACP_Cylinder",nil,100],
						["SmokeShell","Granada de Fumaça Branca",1000],
						["SmokeShellRed","Granada de Fumaça Vermelha",1000],
						["SmokeShellGreen","Granada de Fumaça Verde",1000],
						["SmokeShellYellow","Granada de Fumaça Amarela",1000],
						["SmokeShellPurple","Granada de Fumaça Roxa",1000],
						["SmokeShellBlue","Granada de Fumaça Azul",1000],
						["SmokeShellOrange","Granada de Fumaça Laranja",1000]
					]
				];
			};
		};
	};
	
	case "premium3":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Você não é um Civil!"};
			case (!license_civ_premium3): {"Você não é Premium Lv.3"};
			default
			{
				["Armas Premium",
					[
						["Rangefinder",nil,5000],
						["NVGoggles_INDEP",nil,2000],
						["ToolKit",nil,500],
						["FirstAidKit",nil,200],
						["arifle_SDAR_F",nil,5000],
						["arifle_TRG20_F",nil,5000],
						["SMG_01_Holo_F",nil,5000],
						["SMG_02_F",nil,5000],
						["arifle_Katiba_F",nil,12000],
						["arifle_MXC_F",nil,12000],
						["arifle_MX_F",nil,15000],
						["arifle_MX_SW_F",nil,18000],
						["arifle_MXM_F",nil,18000],
						["srifle_EBR_F",nil,30000],
						["srifle_DMR_01_F",nil,20000],
						["LMG_Mk200_F",nil,35000],
						["LMG_Zafir_F",nil,30000],
						["hgun_Pistol_heavy_02_F",nil,3000],
						["hgun_Pistol_heavy_01_F",nil,4000],
						["hgun_Rook40_F",nil,5000],
						["optic_Holosight",nil,2000],
						["optic_MRD",nil,2000],
						["optic_Hamr",nil,2000],
						["optic_MRCO",nil,2000],
						["optic_ACO_grn",nil,3000],
						["optic_Aco",nil,3000],
						["optic_SOS",nil,6000],
						["optic_LRPS",nil,20000],
						["optic_NVS",nil,10000],
						["acc_flashlight",nil,1000],
						["acc_pointer_IR",nil,2000],
						["30Rnd_9x21_Mag",nil,250],
						["20Rnd_556x45_UW_mag",nil,250],
						["30Rnd_556x45_Stanag",nil,250],
						["30Rnd_45ACP_Mag_SMG_01",nil,250],
						["11Rnd_45ACP_Mag",nil,100],
						["30Rnd_65x39_caseless_green",nil,250],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,250],
						["10Rnd_762x51_Mag",nil,250],
						["20Rnd_762x51_Mag",nil,500],
						["150Rnd_762x51_Box",nil,250],
						["200Rnd_65x39_cased_Box_Tracer",nil,500],
						["30Rnd_65x39_caseless_mag_Tracer",nil,350],
						["100Rnd_65x39_caseless_mag_Tracer",nil,700],
						["30Rnd_65x39_caseless_mag",nil,350],
						["100Rnd_65x39_caseless_mag",nil,700],
						["6Rnd_45ACP_Cylinder",nil,100],
						["SmokeShell","Granada de Fumaça Branca",1000],
						["SmokeShellRed","Granada de Fumaça Vermelha",1000],
						["SmokeShellGreen","Granada de Fumaça Verde",1000],
						["SmokeShellYellow","Granada de Fumaça Amarela",1000],
						["SmokeShellPurple","Granada de Fumaça Roxa",1000],
						["SmokeShellBlue","Granada de Fumaça Azul",1000],
						["SmokeShellOrange","Granada de Fumaça Laranja",1000]
					]
				];
			};
		};
	};
	
	//BOUNTY-BUZ
	case "bhws":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Você não é um Civil!"};
			case (!license_civ_bounty): {"Você não possui Licença de Vigilante!"};
			default
			{
				["Loja de Vigilante",
					[
						["hgun_P07_F",nil,5000],
						["16Rnd_9x21_Mag","9mm 16Rnd Rubber",250],
						["SMG_02_F",nil,45000],
						["30Rnd_9x21_Mag","9mm 30Rnd Rubber",1000]
					]
				];
			};
		};

	};
	
		case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Você não é um Civil!"};
			case (!license_civ_gun): {"Você não possui Licença de Armas!"};
			default
			{
				["Loja de Arma",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Você não é um Civil!"};
			default
			{
				["Loja da Gang",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Mercado Geral",
			[
				["ItemGPS",nil,200],
				["ToolKit",nil,500],
				["FirstAidKit",nil,500],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
