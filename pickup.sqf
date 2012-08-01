if(pickingup)exitwith{player groupchat "you are already picking up an item"};

_action	    = _this select 2;
_this 	    = _this select 3;
_object	    = _this select 0;
_item  	    = _this select 1;
_tamount    = _this select 2;
_infos      = _item call INV_getitemArray;
_name       = _infos call INV_getitemName;
_itemweight = (_infos call INV_getitemTypeKg)*_tamount;   												
_ownweight  = call INV_GetOwnWeight; 
_amount     = _this select 2;
_exitvar    = 0;
_time       = round time;

if ((_ownweight + _itemweight) > INV_Tragfaehigkeit) then 

{ 

_amount = (floor((INV_Tragfaehigkeit - _ownweight) / (_infos call INV_getitemTypeKg)));

if (_amount <= 0) exitWith {player groupChat localize "STRS_inv_buyitems_maxgewicht"; _exitvar = 1;};

};

if(_exitvar == 1)exitwith{};

pickingup   = true;

_object setVehicleInit "this setvariable [""droparray"", nil]";
processInitCommands;

//if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};

sleep 1;

[_item, _amount, "INV_InventarArray"] call INV_CreateItem;

player groupchat format["You picked up %1 %2", _amount, _name];	

if(_amount < _tamount) then

{
_amount = _tamount - _amount;
_object setVehicleInit "this setvariable [""droparray"", [_amount, _item]];";
processInitCommands;
_n = iactionarr find _object;
iactionarr set [_n, 0];
iactionarr = iactionarr - [0, (iactionarr select (_n + 1))];
}
else
{
clearVehicleInit _object;
deletevehicle _object;
};
sleep 5;
pickingup = false;