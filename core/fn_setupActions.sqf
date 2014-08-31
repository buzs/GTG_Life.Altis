/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case west:
	{
		life_actions = life_actions + [player addAction["<t color='#666699'>Apreender Armas</t>",life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable "restrained")']];
		life_actions = life_actions + [player addAction["<t color='#666699'>Apreender Itens</t>",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'count(nearestObjects [player,["weaponholder"],3])>0']];
		life_actions = life_actions + [player addAction["<t color='#666699'>Forçar entrada como motorista</t>",life_fnc_copEnter,"driver",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Car" && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
		life_actions = life_actions + [player addAction["<t color='#666699'>Forçar entrada como passageiro</t>",life_fnc_copEnter,"passenger",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Car" && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
		life_actions = life_actions + [player addAction["<t color='#666699'>Forçar entrada como atirador</t>",life_fnc_copEnter,"gunner",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Car" && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
		life_actions = life_actions + [player addAction["<t color='#666699'>Forçar saída</t>",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
	};
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		//Rob person SURRENDER
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		 //Sequestro KNOCKOUT
         life_actions = [player addAction["<t color='#00FF00'>Algemar</t>",life_fnc_restrainAction,cursorTarget,9999999,false,false,"",'
        !isNull cursorTarget && license_civ_rebel2 && player distance cursorTarget < 5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1 ']];
		 //Sequestro SURRENDER
         life_actions = [player addAction["<t color='#00FF00'>Algemar</t>",life_fnc_restrainAction,cursorTarget,9999999,false,false,"",'
        !isNull cursorTarget && license_civ_rebel2 && player distance cursorTarget < 5 && isPlayer cursorTarget && animationState cursorTarget == "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1 ']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Ativar Nitro</t>",life_fnc_activateNitro,false,2,false,false,"",
		' (vehicle player != player) && (driver vehicle player == player) && (((vehicle player) getVariable["nitro", 0]) > 0) ']];
		life_actions = life_actions + [player addAction["Rob Person",life_fnc_robAction,"",0,false,false,"",'
        !isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget in ["Incapacitated","amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"] && !(cursorTarget getVariable["robbed",FALSE]) ']];
	};
};