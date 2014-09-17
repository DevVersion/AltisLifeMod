waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

//player createDiarySubject ["changelog","Change Log"];
//player createDiarySubject ["serverrules","Regeln"];
//player createDiarySubject ["policerules","Polizei Regeln"];
//player createDiarySubject ["safezones","Sicherheitszonen"];
//player createDiarySubject ["civrules","Zivilisten Regeln"];
//player createDiarySubject ["illegalitems","Illegale Aktivitäten"];
//player createDiarySubject ["gangrules","Gang Regeln"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Steuerung"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord ["controls",
		[
			"",
				"
				Z: Player Menü <br/>
				U: Lock and unlock cars<br/>
				F: Cop Siren (if cop)<br/>
				T: Vehicle Trunk<br/>
				Left Shift + R: Restrain (Cop Only)<br/>
				Left Shift + G: Knock out / stun (Civ Only, used for robbing them)<br/>
				Left Windows: Main Interaction key which is used for picking up items/money, gathering, interacting with cars (repair,etc) and for cops to interact with civilians. Can be rebound to a single key like H by pressing ESC->Configure->Controls->Custom->Use Action 10<br/>
				Left Shift + L: Activates cop siren lights (as a cop).<br/>
				Left Shift + H: Holster's your pistol<br/>
				"
		]
	];