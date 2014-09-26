#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Uniformes"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret pushBack["U_O_Wetsuit","Mergulhador",15000];
			_ret pushBack["U_Rangemaster","Soldado",1000];
		};
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack["U_Competitor","Cabo",2000];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack["U_I_G_resistanceLeader_F","Sargento",2500];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack["U_B_CombatUniform_mcam","Tenente",3000];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack["U_B_CTRG_1","Capitão",4000];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack["U_B_CombatUniform_mcam_worn","Major",5000];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret pushBack["U_B_CTRG_3","Comandante",6000];
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack["H_Booniehat_mcamo",nil,100];
			_ret pushBack["H_HelmetSpecB_paint2",nil,100];
			_ret pushBack["H_HelmetSpecB_paint2",nil,100];
			_ret pushBack["H_HelmetB_sand",nil,100];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack["H_Beret_blk_POLICE","Boina Tenente",100];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack["H_Beret_02","Boina Major",500];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret pushBack["H_Beret_Colonel","Boina Comandante",1000];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,20],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,100],
			["G_Diving",nil,500]
		];
	};
	
	//Vest
	case 3:
	{
		_ret pushBack["V_Rangemaster_belt",nil,1000];
		_ret pushBack["V_RebreatherB","Respirador",3000];
		_ret pushBack["V_TacVest_blk_POLICE","Colete Policia",5000];
		if(__GETC__(life_coplevel) > 6) then
		{
		_ret pushBack["V_PlateCarrier1_blk","Colete Superior",15000];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_blk",nil,500],
			["B_AssaultPack_blk",nil,700],
			["B_Bergen_blk",nil,2500],
			["B_Carryall_cbr",nil,3500]
		];
	};
};

_ret;