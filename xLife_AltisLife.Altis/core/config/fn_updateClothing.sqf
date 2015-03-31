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


		/* START POLIZEI CLOTHING */

		switch(_uniform) do {

			/* ----- RANGEMASTER ----- */
			case "U_Rangemaster": {
				switch (_copLevel) do {
					case 1: { player setObjectTextureGlobal [0, "textures\uniforms\uniform_rekrut.jpg"]; };
					default { player setObjectTextureGlobal [0, "textures\uniforms\uniform_wachtmeister.paa"]; };
				};
			};

			/* ----- KAMPFANZUG ----- */
			case "U_B_CombatUniform_mcam": {
				switch (_copLevel) do {
					case 5: { player setObjectTextureGlobal [0, "textures\uniforms\uniform_kommissar.jpg"];};
					case 6: { player setObjectTextureGlobal [0, "textures\uniforms\uniform_kommissar.jpg"];};
					case 7: { player setObjectTextureGlobal [0, "textures\uniforms\uniform_kommissar.jpg"];};
                    case 8: { player setObjectTextureGlobal [0, "textures\uniforms\uniform_sek.jpg"];};
					case 10: { player setObjectTextureGlobal [0, "textures\uniforms\uniform_officer.jpg"];};					
					case 11: { player setObjectTextureGlobal [0, "textures\uniforms\uniform_polizeichef.jpg"];};
					case 12: { player setObjectTextureGlobal [0, "textures\uniforms\uniform_polizeichef.jpg"];};
				};
			};

			/* ------ AIRFORCE ------ */
			case "U_I_CombatUniform": {
				switch (_copLevel) do {
					case 9: { player setObjectTextureGlobal [0, "textures\uniforms\uniform2_airforce.jpg"];}
				};
			};
		};

		switch (backpack player) do {

			/* ------ ANGRIFFS-PACK ------ */
			case "B_TacticalPack_rgr": {
				switch (_copLevel) do {
					case 8: { _backpack setObjectTextureGlobal [0,"textures\uniforms\sek_pack.jpg"];};
					default { _backpack setObjectTextureGlobal [0,"textures\uniforms\polizei_pack.jpg"]; };
				};
			};
		};
		
		/* ENDE POLIZEI CLOTHING */
	};
};
