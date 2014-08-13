/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_spawn_1","Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Pyrgos HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Athira HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","Air HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","HW Patrol","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_6","Batalhão Policial","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	// Spawn verificador de licensa
	case civilian:
	{
	if(!license_civ_donator && !license_civ_rebel && playerSide == civilian) then {
		_return = [
			["civ_spawn_1","Kavala"],["civ_spawn_2","Iraklia"],["civ_spawn_3","Athira"],["civ_spawn_4","Sofia"],["civ_spawn_5","Pyrgos"]]
			};
			if(license_civ_donator && !license_civ_rebel && playerSide == civilian) then {
		_return = [
			["civ_spawn_1","Kavala"],["civ_spawn_2","Iraklia"],["civ_spawn_3","Athira"],["civ_spawn_4","Sofia"],["civ_spawn_5","Pyrgos"],["spawn_premium","Premium"]]
			};
			if(!license_civ_donator && license_civ_rebel && playerSide == civilian) then {
		_return = [
		    ["civ_spawn_1","Kavala"],["civ_spawn_2","Iraklia"],["civ_spawn_3","Athira"],["civ_spawn_4","Sofia"],["civ_spawn_5","Pyrgos"],["reb_spawn_1","Base Central Rebelde"],["reb_spawn_2","Base Sul Rebelde"],["reb_spawn_3","Base Norte Rebelde"]]
			};
			if(license_civ_donator && license_civ_rebel && playerSide == civilian) then {
		_return = [
		    ["civ_spawn_1","Kavala"],["civ_spawn_2","Iraklia"],["civ_spawn_3","Athira"],["civ_spawn_4","Sofia"],["civ_spawn_5","Pyrgos"],["spawn_premium","Premium"],["reb_spawn_1","Base Central Rebelde"],["reb_spawn_2","Base Sul Rebelde"],["reb_spawn_3","Base Norte Rebelde"]]
			};
	    ];
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return set[count _return,[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
			} foreach life_houses;
		};	
	};
	
	case independent: {
		_return = [
			["medic_spawn_1","Kavala Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Athira Regional","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Pygros Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_1_1","Sofia Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_return;