enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.7";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "scripts\nosidechat.sqf";
[] execVM "scripts\safezone.sqf";


StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};

//For Rain and Fog Gone Below
while {true} do
{
	0 setOvercast 0;
	0 setRain 0;
	0 setFog 0;
};

// Init automatically saving gear
[] spawn life_fnc_autoSave;