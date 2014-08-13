#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["C_SUV_01_F",5000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",5000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",10500],
			["C_Offroad_01_F",14500],
			["C_SUV_01_F",38000],
			["C_Van_01_transport_F",43000],
			["C_Hatchback_01_sport_F",84000]			
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",75000],
			["I_Truck_02_transport_F",82000],
			["I_Truck_02_covered_F",100000],
			["O_Truck_03_transport_F",200000],
			["O_Truck_03_covered_F",250000],
			["B_Truck_01_transport_F",275000],
			["B_Truck_01_box_F",450000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",20000]
		];
		if(license_civ_rebel && license_civ_rebel2) then
		{
			_return set[count _return,
			["O_MRAP_02_F",450000]];
			_return set[count _return,
			["B_Heli_Light_01_F",500000]];
		};
		if(license_civ_rebel && license_civ_rebel2 && license_civ_rebel3) then
		{
			_return set[count _return,
			["O_MRAP_02_F",380000]];
			_return set[count _return,
			["B_Heli_Light_01_F",420000]];
			_return set[count _return,
			["B_G_Offroad_01_armed_F",750000]];
		};
	};
	
	case "cop_car":
	{
		_return set[count _return,
		["C_Offroad_01_F",12500]];
		_return set[count _return,
		["C_Hatchback_01_sport_F",14000]];
		_return set[count _return,
		["C_SUV_01_F",30000]];	
		
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["B_MRAP_01_F",80000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["I_MRAP_03_F",100000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["I_MRAP_03_hmg_F",600000]];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
		];
		if(license_civ_air) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",650000]];
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",2000000]];
		};
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 2 && (license_cop_air)) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",300000]];
		};
		if(__GETC__(life_coplevel) > 4 && (license_cop_air)) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",2000000]];
		};
		if(__GETC__(life_coplevel) > 6 && (license_cop_air)) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",2500000]];
		};
	};
	
	case "cop_airhq":
	{
		if(__GETC__(life_coplevel) > 2 && (license_cop_air)) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",300000]];
		};
		if(__GETC__(life_coplevel) > 4 && (license_cop_air)) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",2000000]];
		};
		if(__GETC__(life_coplevel) > 6 && (license_cop_air)) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",2500000]];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
	//PREMIUM-BUZ
	case "premium_car":
	{
		_return =
		[
			["B_Quadbike_01_F",1750],
			["C_Hatchback_01_F",6500],
			["C_Offroad_01_F",8750],
			["C_Hatchback_01_sport_F",9500],
			["C_SUV_01_F",10050],
			["O_MRAP_02_F",50000],
			["C_Van_01_transport_F",28000]
		];
	};
	case "premium_truck":
	{
		_return =
		[
			["C_Van_01_box_F",42000],
			["I_Truck_02_transport_F",52500],
			["I_Truck_02_covered_F",70000],
			["B_Truck_01_transport_F",192500],
			["O_Truck_03_transport_F",140000],
			["O_Truck_03_covered_F",175000],
			["B_Truck_01_box_F",195000],
			["O_Truck_03_device_F",450000]
		];
	};
	case "premium_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",200000],
			["O_Heli_Light_02_unarmed_F",410000],
			["I_Heli_Transport_02_F",900000],
			["O_Heli_Attack_02_black_F",4000000]
		];	
	};
	
};


_return;
