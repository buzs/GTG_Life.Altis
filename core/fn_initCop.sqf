#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if(!(str(player) in ["cop_1","cop_2","cop_3","cop_4"])) then {
	if((__GETC__(life_coplevel) == < 3) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};


player setVariable["rank",(__GETC__(life_coplevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_Rangemaster"};
		player setObjectTextureGlobal [0,"textures\soldado_gtg.jpg"];
		waitUntil {uniform player != "U_Rangemaster"};
	};
};

[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_Competitor"};
		player setObjectTextureGlobal [0,"textures\cabo_gtg.jpg"];
		waitUntil {uniform player != "U_Competitor"};
	};
};

[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_I_G_resistanceLeader_F"};
		player setObjectTextureGlobal [0,"textures\sargento_gtg.jpg"];
		waitUntil {uniform player != "U_I_G_resistanceLeader_F"};
	};
};

[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_B_CombatUniform_mcam"};
		player setObjectTextureGlobal [0,"textures\tenente_gtg.jpg"];
		waitUntil {uniform player != "U_B_CombatUniform_mcam"};
	};
};

[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_B_CTRG_1"};
		player setObjectTextureGlobal [0,"textures\capitao_gtg.jpg"];
		waitUntil {uniform player != "U_B_CTRG_1"};
	};
};

[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_B_CombatUniform_mcam_worn"};
		player setObjectTextureGlobal [0,"textures\major_gtg.jpg"];
		waitUntil {uniform player != "U_B_CombatUniform_mcam_worn"};
	};
};

[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_B_CTRG_3"};
		player setObjectTextureGlobal [0,"textures\comandante_gtg.jpg"];
		waitUntil {uniform player != "U_B_CTRG_3"};
	};
};