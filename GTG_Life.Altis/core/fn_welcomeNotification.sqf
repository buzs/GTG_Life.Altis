#include <macro.h>
/*
	File: fn_welcomeNotification.sqf

	Description:
	Called upon first spawn selection and welcomes our player.
*/

private ["_civ","_cop","_med"];

sleep 2;
_intro = [];

_civ = [format["<t color='#00BFFF'>Bem Vindo ao SERVER GTG , %1!</t><br/>
		<img size='10' image='imagens\logogtg.jpg'/><br/>
		<t color='#00FF00'>Venha participar de nossa comunidade!<br/>
		<t color='#EEC900'>Site: clangtg.com.br<br/>
		<t color='#EEC900'>Forum: clangtg.com.br/forum<br/>
		<t color='#EEC900'>Facebook: facebook.com/clangtg<br/>
		<t color='#FF7F00'>Problemas? contate os administradores!<br/>
		<t color='#E8E8E8'>Precione M e leia as regras!<br/>
		<t color='#E8E8E8'>Resarcimentos apenas no forum</t> <br/>
		<t color='#00FF00'>Divirta-se e Respeite ao proximo!<br/>
		<t color='#00BFFF'>Edição Equipe<br/>
		<t color='#00BFFF'>Grupo Tático em Games<br/>
		<t color='#00BFFF'>Scripts: Buz<br/>
		<t color='#00BFFF'>Texturas: Hunternuma</t> <br/>", name player]];

_cop = [format["<t color='#00BFFF'>Bem Vindo ao SERVER GTG , %1!</t><br/>
		<img size='10' image='imagens\logogtg.jpg'/><br/>
		<t color='#00FF00'>Venha participar de nossa comunidade!<br/>
		<t color='#EEC900'>Site: clangtg.com.br<br/>
		<t color='#EEC900'>Forum: clangtg.com.br/forum<br/>
		<t color='#EEC900'>Facebook: facebook.com/clangtg<br/>
		<t color='#FF7F00'>Problemas? contate os administradores!<br/>
		<t color='#E8E8E8'>Precione M e leia as regras!<br/>
		<t color='#E8E8E8'>Resarcimentos apenas no forum</t> <br/>
		<t color='#00FF00'>Divirta-se e Respeite ao proximo!<br/>
		<t color='#00BFFF'>Edição Equipe<br/>
		<t color='#00BFFF'>Grupo Tático em Games<br/>
		<t color='#00BFFF'>Scripts: Buz<br/>
		<t color='#00BFFF'>Texturas: Hunternuma</t> <br/>", name player]];

_med = [format["<t color='#00BFFF'>Bem Vindo ao SERVER GTG , %1!</t><br/>
		<img size='10' image='imagens\logogtg.jpg'/><br/>
		<t color='#00FF00'>Venha participar de nossa comunidade!<br/>
		<t color='#EEC900'>Site: clangtg.com.br<br/>
		<t color='#EEC900'>Forum: clangtg.com.br/forum<br/>
		<t color='#EEC900'>Facebook: facebook.com/clangtg<br/>
		<t color='#FF7F00'>Problemas? contate os administradores!<br/>
		<t color='#E8E8E8'>Precione M e leia as regras!<br/>
		<t color='#E8E8E8'>Resarcimentos apenas no forum</t> <br/>
		<t color='#00FF00'>Divirta-se e Respeite ao proximo!<br/>
		<t color='#00BFFF'>Edição Equipe<br/>
		<t color='#00BFFF'>Grupo Tático em Games<br/>
		<t color='#00BFFF'>Scripts: Buz<br/>
		<t color='#00BFFF'>Texturas: Hunternuma</t> <br/>", name player]];

switch (playerSide) do {
	case west: {
		{
			_intro = _intro + [(parseText _x)];
		} forEach _cop;
		_cop = _intro;
		"ALTIS LIFE GTG BRASIL" hintC _cop;
	};
	case civilian: {
		{
			_intro = _intro + [(parseText _x)];
		} forEach _civ;
		_civ = _intro;
		"ALTIS LIFE GTG BRASIL" hintC _civ;
	};
	case independent: {
		{
			_intro = _intro + [(parseText _x)];
		} forEach _med;
		_med = _intro;
		"ALTIS LIFE GTG BRASIL" hintC _med;
	};
};