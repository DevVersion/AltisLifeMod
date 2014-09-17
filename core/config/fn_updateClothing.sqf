private["_uniform","_backpack", "_copLevel"];

_uniform = uniform player;
_backpack = unitBackpack player;

switch(true) do {
	case (playerSide == east): {
		_backpack setObjectTextureGlobal [0,"textures\uniforms\adac_backpack.jpg"];
		player setObjectTextureGlobal [0,"textures\uniforms\adac_ingenieur.jpg"];
	};
	case (playerSide == independent): {
		_backpack setObjectTextureGlobal [0,"textures\uniforms\medic_backpack.jpg"];
		player setObjectTextureGlobal [0,"textures\uniforms\recrute_uniform_rettungsdienst.jpg"];
	};
	case (playerSide == west): {
		_copLevel = player getVariable ["rank", 0];
		if (_copLevel < 3) then {
			_backpack setObjectTextureGlobal [0,"textures\uniforms\polizei_pack.jpg"];
			player setObjectTextureGlobal [0,"textures\uniforms\uniform_rekrut.jpg"];				
		};
		if (_copLevel > 2 && _copLevel < 5) then {
			_backpack setObjectTextureGlobal [0,"textures\uniforms\polizei_pack.jpg"];
			player setObjectTextureGlobal [0,"textures\uniforms\uniform_wachtmeister.paa"];				
		};
		if (_copLevel > 4 && _copLevel < 7) then {
			_backpack setObjectTextureGlobal [0,"textures\uniforms\polizei_pack.jpg"];
			player setObjectTextureGlobal [0,"textures\uniforms\uniform_kommissar.jpg"];				
		};
		if (_copLevel == 7) then {
			_backpack setObjectTextureGlobal [0,"textures\uniforms\polizei_pack.jpg"];
			player setObjectTextureGlobal [0,"textures\uniforms\uniform2_airforce.jpg"];				
		};
		if (_copLevel == 8) then {
			_backpack setObjectTextureGlobal [0,"textures\uniforms\sek_pack.jpg"];
			player setObjectTextureGlobal [0,"textures\uniforms\uniform_sek.jpg"];				
		};
		if (_copLevel > 10) then {
			_backpack setObjectTextureGlobal [0,"textures\uniforms\polizei_pack.jpg"];
			player setObjectTextureGlobal [0,"textures\uniforms\uniform_polizeichef.jpg"];			
		};
	};
};
