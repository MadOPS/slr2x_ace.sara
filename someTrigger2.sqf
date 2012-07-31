RadioTrigger_1 = createTrigger      ["EmptyDetector", [0,0,0]];
RadioTrigger_1 setTriggerArea       [0, 0, 0, false];
RadioTrigger_1 setTriggerActivation ["ALPHA", "NOT PRESENT", true];
RadioTrigger_1 setTriggerStatements ["this", "[""Einstellungen""] execVM ""openDialogs.sqf"";", ""];
1 setRadioMsg "Settings";

RadioTrigger_2 = createTrigger      ["EmptyDetector", [0,0,0]];
RadioTrigger_2 setTriggerArea       [0, 0, 0, false];
RadioTrigger_2 setTriggerActivation ["BRAVO", "NOT PRESENT", true];
RadioTrigger_2 setTriggerStatements ["this", "[] execVM ""clearchat.sqf""", ""];
2 setRadioMsg "Disable/Enable Chat";

RadioTrigger_3 = createTrigger      ["EmptyDetector", [0,0,0]];
RadioTrigger_3 setTriggerArea       [0, 0, 0, false];
RadioTrigger_3 setTriggerActivation ["CHARLIE", "NOT PRESENT", true];
RadioTrigger_3 setTriggerStatements ["this", "fixme = [] execVM ""headbug.sqf""",""];
3 setRadioMsg "Fix Headbug";

RadioTrigger_4 = createTrigger      ["EmptyDetector", [0,0,0]];
RadioTrigger_4 setTriggerArea       [0, 0, 0, false];
RadioTrigger_4 setTriggerActivation ["DELTA", "NOT PRESENT", true];
RadioTrigger_4 setTriggerStatements ["this", "  ["""","""","""",[""servernewsmenu""]] execVM ""openDialogs2.sqf"";  ",""];
4 setRadioMsg "Show Server News";

RadioTrigger_6 = createTrigger      ["EmptyDetector", [0,0,0]];
RadioTrigger_6 setTriggerArea       [0, 0, 0, false];
RadioTrigger_6 setTriggerActivation ["FOXTROT", "NOT PRESENT", true];
RadioTrigger_6 setTriggerStatements ["this", "[RadioTextMsg_1, RadioTextArt_1] call SayDirectSpeach;", ""];
6 setRadioMsg "Say Text 1";

RadioTrigger_7 = createTrigger      ["EmptyDetector", [0,0,0]];
RadioTrigger_7 setTriggerArea       [0, 0, 0, false];
RadioTrigger_7 setTriggerActivation ["GOLF", "NOT PRESENT", true];
RadioTrigger_7 setTriggerStatements ["this", "[RadioTextMsg_2, RadioTextArt_2] call SayDirectSpeach;", ""];
7 setRadioMsg "Say Text 2";

RadioTrigger_8 = createTrigger      ["EmptyDetector", [0,0,0]];
RadioTrigger_8 setTriggerArea       [0, 0, 0, false];
RadioTrigger_8 setTriggerActivation ["HOTEL", "NOT PRESENT", true];
RadioTrigger_8 setTriggerStatements ["this", "[RadioTextMsg_3, RadioTextArt_3] call SayDirectSpeach;", ""];
8 setRadioMsg "Say Text 3";

RadioTrigger_9 = createTrigger      ["EmptyDetector", [0,0,0]];
RadioTrigger_9 setTriggerArea       [0, 0, 0, false];
RadioTrigger_9 setTriggerActivation ["INDIA", "NOT PRESENT", true];
RadioTrigger_9 setTriggerStatements ["this", "[RadioTextMsg_4, RadioTextArt_4] call SayDirectSpeach;", ""];
9 setRadioMsg "Say Text 4";