private ["_eh1","_inArea","_safek","_safei","_safec","_safes","_safen","_safep","_disk","_disi","_disc","_diss","_disn","_disp"];

_safek = getMarkerPos "safezone_kavala";
_safei = getMarkerPos "safezone_iraklia";
_safec = getMarkerPos "safezone_baserebeldecentral";
_safes = getMarkerPos "safezone_hqsudoeste";
_safen = getMarkerPos "safezone_hqnordeste";
_safep = getMarkerPos "safezone_premium";

_disk = 700;
_disi = 300;
_disc = 200;
_diss = 200;
_disn = 200;
_disp = 150;

#define MESSAGE "Voce nao pode atirar, atropelar ou roubar em zona segura!"

_inArea = false;

switch (playerSide) do
{
	case west:
	{
		if (((_safek distance player < _disk) || (_safei distance player < _disi) || (_safec distance player < _disc) || (_safes distance player < _diss) || (_safen distance player < _disn) || (_safep distance player < _disp)) && (!_inArea)) then
		{
			_inArea = true;
			player allowDamage false;
		};
		if (((_safek distance player > _disk) || (_safei distance player > _disi) || (_safec distance player > _disc) || (_safes distance player > _diss) || (_safen distance player > _disn) || (_safep distance player > _disp)) && (_inArea)) then
		{
			_inArea = false;
			player allowDamage true;
		};
	};
	
	
	case civilian:
	{
		if (((_safek distance player < _disk) || (_safei distance player < _disi) || (_safec distance player < _disc) || (_safes distance player < _diss) || (_safen distance player < _disn) || (_safep distance player < _disp)) && (!_inArea)) then
		{
			_eh1 = player addEventHandler 	["fired", 	{deleteVehicle (_this select 6); titleText [MESSAGE, "PLAIN", 3];}];
			_inArea = true;
			hint "Voce entrou na area protegida";
			player allowDamage false;
		};
		if (((_safek distance player > _disk) || (_safei distance player > _disi) || (_safec distance player > _disc) || (_safes distance player > _diss) || (_safen distance player > _disn) || (_safep distance player > _disp)) && (_inArea)) then
		{
			player removeEventHandler ["fired", _eh1];
			_inArea = false;
			hint "Voce saiu da area protegida";
			player allowDamage true;
		};
	};
	sleep 3;
};
	
	