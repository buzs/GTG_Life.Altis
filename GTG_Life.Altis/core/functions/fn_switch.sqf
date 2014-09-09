//
// File: fn_switch.sqf
// Author: Alduin86
//
// Description:
// Switch for pickaxe, netting and co
//
if(player distance (getMarkerPos "lead_1") < 30) then
        {
           [] spawn life_fnc_pickAxeUse;
        };
        
if(player distance (getMarkerPos "iron_1") < 30) then
        {
           [] spawn life_fnc_pickAxeUse;
        };
 
if(player distance (getMarkerPos "salt_1") < 120) then
        {
           [] spawn life_fnc_pickAxeUse;
        };
 
if(player distance (getMarkerPos "sand_1") < 75) then
        {
           [] spawn life_fnc_pickAxeUse;
        };
 
if(player distance (getMarkerPos "diamond_1") < 50) then
        {
           [] spawn life_fnc_pickAxeUse;
        };
 
if(player distance (getMarkerPos "oil_1") < 40) then
        {
           [] spawn life_fnc_pickAxeUse;
        };
        
if(player distance (getMarkerPos "oil_2") < 80) then
        {
           [] spawn life_fnc_pickAxeUse;
        };
 
if(player distance (getMarkerPos"oil_3") < 80) then
        {
           [] spawn life_fnc_pickAxeUse;
        };
        
if(player distance (getMarkerPos "rock_1") < 50) then
        {
           [] spawn life_fnc_pickAxeUse;
        };
 
if(player distance (getMarkerPos "lsd_1") < 250) then
        {
           [] spawn life_fnc_netzUse;
        }; 