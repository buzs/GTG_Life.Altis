/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Vermelho";};
			case 1: {_color = "Amarelo";};
			case 2: {_color = "Branco";};
			case 3: {_color = "Azul";};
			case 4: {_color = "Vermelho Escuro";};
			case 5: {_color = "Azul e Branco"};
			case 6: {_color = "Médico"};
			case 7: {_color = "Polícia"};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Bege";};
			case 1: {_color = "Verde";};
			case 2: {_color = "Azul";};
			case 3: {_color = "Azul Escuro";};
			case 4: {_color = "Amarelo";};
			case 5: {_color = "Branco"};
			case 6: {_color = "Cinza"};
			case 7: {_color = "Preto"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Vermelho"};
			case 1: {_color = "Azul Escuro"};
			case 2: {_color = "Laranja"};
			case 3: {_color = "Preto e Branco"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Verde"};
			case 6: {_color = "Polícia"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Vermelho Escuro";};
			case 1: {_color = "Prata";};
			case 2: {_color = "Laranja";};
			case 3: {_color = "Médico";};
			case 4: {_color = "Polícia";};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Branco"};
			case 1: {_color = "Vermelho"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Branco"};
			case 1: {_color = "Vermelho"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Branco"};
			case 1: {_color = "Vermelho"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Marrom"};
			case 1: {_color = "Camuflagem Deserto"};
			case 2: {_color = "Preto"};
			case 3: {_color = "Azul"};
			case 4: {_color = "Vermelho"};
			case 5: {_color = "Branco"};
			case 6: {_color = "Camuflagem Verde"};
			case 7: {_color = "Camuflagem Caçador"};
			case 8: {_color = "Camuflagem Rebelde"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Sheriff"};
			case 1: {_color = "Preto"};
			case 2: {_color = "Azul"};
			case 3: {_color = "Vermelho"};
			case 4: {_color = "Verde Digital"};
			case 5: {_color = "Linhas Azuis"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Blue"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "Polícia"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "White / Blue"};
			case 2: {_color = "Digi Green"};
			case 3: {_color = "Desert Digi"};
			case 4: {_color = "EMS White"};
		};
	};
	
	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polícia"};

		};
	};
	
	case "B_Heli_Transport_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "PM"};

		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polícia"};
		};
	};
	
	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polícia"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
};

_color;