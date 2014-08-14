/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
		{
			//Drop fishing net
			life_actions = [player addAction["Drop Fishing Net",life_fnc_dropFishingNet,"",0,false,false,"",'
			(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
			//Rob person KNOCKOUT
			life_actions = life_actions + [player addAction["Rob Person",life_fnc_robAction,"",0,false,false,"",'
			!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
			//Rob person SURRENDER
			life_actions = life_actions + [player addAction["Rob Person",life_fnc_robAction,"",0,false,false,"",'
			!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" && !(cursorTarget getVariable["robbed",FALSE]) ']];
			//Sequestro KNOCKOUT
			life_actions = [player addAction["<t color='#00FF00'>Capturar</t>",life_fnc_restrainAction,cursorTarget,9999999,false,false,"",'
			!isNull cursorTarget && license_civ_bounty || license_civ_reb2 && player distance cursorTarget < 5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1 ']];
			//Sequestro SURRENDER
			life_actions = [player addAction["<t color='#00FF00'>Capturar</t>",life_fnc_restrainAction,cursorTarget,9999999,false,false,"",'
			!isNull cursorTarget && license_civ_bounty || license_civ_reb2 && player distance cursorTarget < 5 && isPlayer cursorTarget && animationState cursorTarget == "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1 ']];			
		};
};