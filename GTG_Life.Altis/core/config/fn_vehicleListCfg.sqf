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
			["C_Offroad_01_F",11000],
			["C_SUV_01_F",35000],
			["B_MRAP_01_F",100000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",250000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",10500],
			["C_Offroad_01_F",14500],
			["C_SUV_01_F",52000],
			["C_Van_01_transport_F",50000],
			["C_Hatchback_01_sport_F",84000]			
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",110000],
			["I_Truck_02_transport_F",135000],
			["I_Truck_02_covered_F",175000],
			["O_Truck_03_transport_F",235000],
			["O_Truck_03_covered_F",275000],
			["B_Truck_01_transport_F",375000],
			["B_Truck_01_box_F",475000]
		];	
	};
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2000],
			["B_G_Offroad_01_F",12000]
		];
		if(license_civ_rebel && license_civ_rebel2) then
		{
			_return pushBack["O_MRAP_02_F",450000];
			_return pushBack["B_Heli_Light_01_F",400000];
		};
		if(license_civ_rebel && license_civ_rebel2 && license_civ_rebel3) then
		{
			_return pushBack["B_G_Offroad_01_armed_F",750000];
			_return pushBack["O_Heli_Light_02_unarmed_F",1250000];
		};
	};
	
	case "cop_car":
	{
		_return =
		[
		["C_Offroad_01_F",12500],
		["C_Hatchback_01_sport_F",14000],
		["C_SUV_01_F",40000]
		];	
		if(__GETC__(life_coplevel) > 1) then
		{
			_return pushBack["B_MRAP_01_F",80000];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return pushBack["I_MRAP_03_F",100000];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return pushBack["I_MRAP_03_hmg_F",600000];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
		["B_Heli_Light_01_F",550000],
		["O_Heli_Light_02_unarmed_F",2000000]
		];
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack["B_Heli_Light_01_F",250000];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return pushBack["I_Heli_light_03_unarmed_F",1000000];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return pushBack["B_Heli_Transport_01_F",1500000];
			_return pushBack["B_Heli_Attack_01_F",1250000];			
		};
	};
	
	case "cop_airhq":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack["B_Heli_Light_01_F",250000];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return pushBack["I_Heli_light_03_unarmed_F",1000000];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return pushBack["B_Heli_Transport_01_F",1500000];
			_return pushBack["B_Heli_Attack_01_F",1250000];			
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
		if(license_civ_rebel && license_civ_rebel2 && license_civ_rebel3) then
		{
			_return pushBack["B_SDV_01_F",175000];
		};
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
		if(license_civ_premium) then
		{
			_return pushBack["B_Quadbike_01_F",2125];
			_return pushBack["C_Hatchback_01_F",8925];
			_return pushBack["C_Offroad_01_F",12325];
			_return pushBack["C_SUV_01_F",44200];
			_return pushBack["C_Hatchback_01_sport_F",71400];
			_return pushBack["C_Van_01_transport_F",42500];
		};
		if(license_civ_premium2) then
		{
			_return pushBack["B_Quadbike_01_F",1750];
			_return pushBack["C_Hatchback_01_F",7350];
			_return pushBack["C_Offroad_01_F",10150];
			_return pushBack["C_SUV_01_F",36400];
			_return pushBack["C_Hatchback_01_sport_F",58800];
			_return pushBack["C_Van_01_transport_F",35000];
		};
		if(license_civ_premium3) then
		{
			_return pushBack["B_Quadbike_01_F",1375];
			_return pushBack["C_Hatchback_01_F",5775];
			_return pushBack["C_Offroad_01_F",7975];
			_return pushBack["C_SUV_01_F",28600];
			_return pushBack["C_Hatchback_01_sport_F",46200];
			_return pushBack["C_Van_01_transport_F",27500];
		};
	};
	case "premium_truck":
	{
		if(license_civ_premium) then
		{
			_return pushBack["C_Van_01_box_F",93500];
			_return pushBack["I_Truck_02_transport_F",114750];
			_return pushBack["I_Truck_02_covered_F",148750];
			_return pushBack["O_Truck_03_transport_F",199750];
			_return pushBack["O_Truck_03_covered_F",233750];
			_return pushBack["B_Truck_01_transport_F",318750];
			_return pushBack["B_Truck_01_box_F",403750];
			_return pushBack["O_Truck_03_device_F",550000];
		};
		if(license_civ_premium2) then
		{
			_return pushBack["C_Van_01_box_F",77000];
			_return pushBack["I_Truck_02_transport_F",94500];
			_return pushBack["I_Truck_02_covered_F",122500];
			_return pushBack["O_Truck_03_transport_F",164500];
			_return pushBack["O_Truck_03_covered_F",192500];
			_return pushBack["B_Truck_01_transport_F",262500];
			_return pushBack["B_Truck_01_box_F",332500];
			_return pushBack["O_Truck_03_device_F",385000];
		};
		if(license_civ_premium3) then
		{
			_return pushBack["C_Van_01_box_F",60500];
			_return pushBack["I_Truck_02_transport_F",74250];
			_return pushBack["I_Truck_02_covered_F",96250];
			_return pushBack["O_Truck_03_transport_F",129250];
			_return pushBack["O_Truck_03_covered_F",151250];
			_return pushBack["B_Truck_01_transport_F",206250];
			_return pushBack["B_Truck_01_box_F",261250];
			_return pushBack["O_Truck_03_device_F",302500];
		};
	};
	case "premium_air":
	{
		if(license_civ_premium) then
		{
			_return pushBack["B_Heli_Light_01_F",467500];
			_return pushBack["O_Heli_Light_02_unarmed_F",1250000];
			_return pushBack["I_Heli_Transport_02_F",1700000];
			_return pushBack["O_Heli_Attack_02_black_F",4000000];
		};
		if(license_civ_premium2) then
		{
			_return pushBack["B_Heli_Light_01_F",385000];
			_return pushBack["O_Heli_Light_02_unarmed_F",875000];
			_return pushBack["I_Heli_Transport_02_F",1400000];
			_return pushBack["O_Heli_Attack_02_black_F",2800000];
		};
		if(license_civ_premium3) then
		{
			_return pushBack["B_Heli_Light_01_F",302500];
			_return pushBack["O_Heli_Light_02_unarmed_F",687000];
			_return pushBack["I_Heli_Transport_02_F",1100000];
			_return pushBack["O_Heli_Attack_02_black_F",2200000];
		};	
	};
	
};


_return;
