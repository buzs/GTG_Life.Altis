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
		<img size='10' image='Textures\gtg1.jpg'/><br/>
		<t color='#CD0000'>Venha participar de nossa comunidade!<br/>
		<t color='#00FF00'>Site : www.clangtg.com.br<br/>
		<t color='#F0FFFF'>Forum : cog.ts3dns.com<br/>
		<t color='#EEC900'>Facebook : facebook.com/clangtg<br/>
		<t color='#FF7F00'>Problemas? contate os administradores!<br/>
		<t color='#008B00'>Precione M e leia as regras!<br/>
		<t color='#E8E8E8'>Resarcimentos apenas no forum</t> <br/>
		<t color='#00FF00'>Divirta-se e Respeite o proximo!<br/>
		<t color='#00BFFF'>Edição Equipe Grupo Tático em Games<br/>
		<t color='#00BFFF'>Scripts: Buz e Texturas: Hunternuma</t> <br/>", name player]];

_cop =[format["<t color='#00BFFF'>Bem Vindo ao SERVER GTG , %1!</t><br/>
		<img size='10' image='Textures\gtg1.jpg'/><br/>
		<t color='#CD0000'>Venha participar de nossa comunidade!<br/>
		<t color='#00FF00'>Site : www.clangtg.com.br<br/>
		<t color='#F0FFFF'>Forum : cog.ts3dns.com<br/>
		<t color='#EEC900'>Facebook : facebook.com/clangtg<br/>
		<t color='#FF7F00'>Problemas? contate os administradores!<br/>
		<t color='#008B00'>Precione M e leia as regras!<br/>
		<t color='#E8E8E8'>Resarcimentos apenas no forum</t> <br/>
		<t color='#00FF00'>Divirta-se e Respeite o proximo!<br/>
		<t color='#00BFFF'>Edição Equipe Grupo Tático em Games<br/>
		<t color='#00BFFF'>Scripts: Buz e Texturas: Hunternuma</t> <br/>", name player]];

_med =[format["<t color='#00BFFF'>Bem Vindo ao SERVER GTG , %1!</t><br/>
		<img size='10' image='Textures\gtg1.jpg'/><br/>
		<t color='#CD0000'>Venha participar de nossa comunidade!<br/>
		<t color='#00FF00'>Site : www.clangtg.com.br<br/>
		<t color='#F0FFFF'>Forum : cog.ts3dns.com<br/>
		<t color='#EEC900'>Facebook : facebook.com/clangtg<br/>
		<t color='#FF7F00'>Problemas? contate os administradores!<br/>
		<t color='#008B00'>Precione M e leia as regras!<br/>
		<t color='#E8E8E8'>Resarcimentos apenas no forum</t> <br/>
		<t color='#00FF00'>Divirta-se e Respeite o proximo!<br/>
		<t color='#00BFFF'>Edição Equipe Grupo Tático em Games<br/>
		<t color='#00BFFF'>Scripts: Buz e Texturas: Hunternuma</t> <br/>", name player]];

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