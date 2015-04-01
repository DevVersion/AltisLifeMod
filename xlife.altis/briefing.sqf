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

				Zivilisten Steuerung
				<br/><br/>

				Z: Player Menü <br/>
				U: Abschließen und Aufsperren<br/>
				T: Fahrzeug Kofferraum<br/>
				Links Shift + R: Festnehmen (Vorher Niederschlagen..)<br/>
				Links Shift + G: Niederschlagen (Ausrauben und Festnehmen)<br/>
				Links Windows Taste: Haupt Interaktions-Menü<br/>
				Links Shift + H: Waffe wegstecken</br>

				<br/><br/>

				<b>Polizei Steuerung</b>

				<br/><br/>

				Links Shift + L: Polizei Sirene an/-abschalten<br/>	
				Links Shift + R: Festnehmen<br/>
				Links Shift + L: Blaulicht aktivieren<br/>	
				"
		]
	];