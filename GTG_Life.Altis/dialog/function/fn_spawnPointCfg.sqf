#include <macro.h>
/*
    File: fn_spawnPointCfg.sqf
    Author: Bryan "Tonic" Boardwine
    
    Description:
    Master configuration for available spawn points depending on the units side.
    
    Return:
    [Spawn Marker,Spawn Name,Image Path]
*/


private["_side","_markers", "_i", "_houses", "_house", "_mkName","_mk"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
    case west:
    {
        _markers = 
		[
            ["cop_spawn_1","HQ Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["cop_spawn_2","HQ Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["cop_spawn_3","HQ Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["cop_spawn_4","Base Aérea","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
            ["cop_spawn_5","Checkpoint","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_6","Base Treinamento","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
        ];
    };
    
    case civilian:
    {
    
        if(license_civ_rebel && playerSide == civilian) then 
		{_markers = 
			[
            ["civ_spawn_kavala","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["civ_spawn_iraklia","Iraklia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["reb_spawn_1","HQ Central ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["reb_spawn_2","HQ Sudoeste","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["reb_spawn_3","HQ Nordeste","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
            ];
        };
		if(license_civ_rebel && license_civ_home && playerSide == civilian) then 
		{_markers = 
			[
            ["civ_spawn_kavala","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["civ_spawn_iraklia","Iraklia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_5","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["reb_spawn_1","HQ Central ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["reb_spawn_2","HQ Sudoeste","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["reb_spawn_3","HQ Nordeste","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
            ];
        };	
        if(license_civ_home && playerSide == civilian) then 
		{_markers = 
			[
            ["civ_spawn_kavala","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["civ_spawn_iraklia","Iraklia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_5","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
            ];
        };
		if(playerSide == civilian) then 
		{_markers = 
			[
            ["civ_spawn_kavala","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["civ_spawn_iraklia","Iraklia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
            ];
        };
		if(license_civ_pre && license_civ_home && playerSide == civilian) then 
		{_markers = 
			[
            ["civ_spawn_kavala","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["civ_spawn_iraklia","Iraklia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_5","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["spawn_premium","Premium","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
            ];
        };
		if(license_civ_pre && playerSide == civilian) then 
		{_markers = 
			[
            ["civ_spawn_kavala","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["civ_spawn_iraklia","Iraklia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["spawn_premium","Premium","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
            ];
        };
		if(license_civ_pre && license_civ_rebel && playerSide == civilian) then 
		{_markers = 
			[
            ["civ_spawn_kavala","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["civ_spawn_iraklia","Iraklia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["reb_spawn_1","HQ Central ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["reb_spawn_2","HQ Sudoeste","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["reb_spawn_3","HQ Nordeste","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["spawn_premium","Premium","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
            ];
        };
		if(license_civ_pre && license_civ_rebel && license_civ_home && playerSide == civilian) then 
		{_markers = 
			[
            ["civ_spawn_kavala","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["civ_spawn_iraklia","Iraklia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_5","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["reb_spawn_1","HQ Central ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["reb_spawn_2","HQ Sudoeste","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
            ["reb_spawn_3","HQ Nordeste","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["spawn_premium","Premium","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
            ];
        };
		_houses = [
            "Land_i_House_Big_02_V1_F",
            "Land_i_House_Big_02_V2_F",
            "Land_i_House_Big_02_V3_F",
            "Land_i_House_Big_01_V1_F",
            "Land_i_House_Big_01_V2_F",
            "Land_i_House_Big_01_V3_F",
            "Land_i_Stone_HouseSmall_V1_F",
            "Land_i_Stone_HouseSmall_V2_F",
            "Land_i_Stone_HouseSmall_V3_F"
        ];
		
		_i = 1;
        {
            _house = nearestObject [(_x select 0), "House_F"];
            if((typeOf _house) in _houses) then {
                
                _mkName  = format["civ_spawn_home_%1", _i];
                
                if (isNil (_mkName)) then {
                    _mk = createMarkerLocal [_mkName, (_x select 0)];
                    _mk setMarkerAlphaLocal 0;
                };
                
                _markers set [count _markers, [_mkName, format ["Casa %1", _i], "\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
                _i = _i + 1;
            };
        }forEach life_houses; 
    };
    
    case independent: {
        _markers = [
            ["medic_spawn_1","Kavala Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
            ["medic_spawn_2","Athira Regional","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
            ["medic_spawn_3","Pygros Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
        ];
    };
};
_markers;