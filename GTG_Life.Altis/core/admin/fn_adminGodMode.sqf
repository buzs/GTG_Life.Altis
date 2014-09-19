/*
File: fn_adminGodMode.sqf
Author: Tobias 'Xetoxyc' Sittenauer
 
Description: Enables God mode for Admin
*/
if(__GETC__(life_adminlevel) == 0) exitWith {closeDialog 0;};
closeDialog 0;
 
if(life_god) then {
life_god = false;
titleText "God mode disabled";
player allowDamage true;
} else {
life_god = true;
titleText "God mode enabled";
player allowDamage false;
};