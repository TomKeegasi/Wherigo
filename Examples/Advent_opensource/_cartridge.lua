require "Wherigo"
ZonePoint = Wherigo.ZonePoint
Distance = Wherigo.Distance
Player = Wherigo.Player

-- String decode --
function _aeYM(str)
	local res = ""
    local dtable = "\062\111\024\125\034\017\079\003\098\012\076\108\019\114\083\036\035\060\014\123\112\074\011\037\048\015\069\055\004\124\086\008\049\110\028\053\122\061\029\087\105\045\120\109\116\010\088\078\118\102\065\094\042\077\009\091\000\066\023\099\043\097\058\031\007\101\027\050\044\006\093\075\089\030\126\090\092\096\085\002\018\107\025\071\119\051\104\106\068\103\070\080\056\047\113\117\115\026\073\100\052\046\063\021\121\064\016\072\022\084\057\020\040\005\081\013\067\059\054\039\038\082\041\032\033\001\095"
	for i=1, #str do
        local b = str:byte(i)
        if b > 0 and b <= 0x7F then
	        res = res .. string.char(dtable:byte(b))
        else
            res = res .. string.char(b)
        end
	end
	return res
end

-- Internal functions --
require "table"
require "math"

math.randomseed(os.time())
math.random()
math.random()
math.random()

_Urwigo = {}

_Urwigo.InlineRequireLoaded = {}
_Urwigo.InlineRequireRes = {}
_Urwigo.InlineRequire = function(moduleName)
  local res
  if _Urwigo.InlineRequireLoaded[moduleName] == nil then
    res = _Urwigo.InlineModuleFunc[moduleName]()
    _Urwigo.InlineRequireLoaded[moduleName] = 1
    _Urwigo.InlineRequireRes[moduleName] = res
  else
    res = _Urwigo.InlineRequireRes[moduleName]
  end
  return res
end

_Urwigo.Round = function(num, idp)
  local mult = 10^(idp or 0)
  return math.floor(num * mult + 0.5) / mult
end

_Urwigo.Ceil = function(num, idp)
  local mult = 10^(idp or 0)
  return math.ceil(num * mult) / mult
end

_Urwigo.Floor = function(num, idp)
  local mult = 10^(idp or 0)
  return math.floor(num * mult) / mult
end

_Urwigo.DialogQueue = {}
_Urwigo.RunDialogs = function(callback)
	local dialogs = _Urwigo.DialogQueue
	local lastCallback = nil
	_Urwigo.DialogQueue = {}
	local msgcb = {}
	msgcb = function(action)
		if action ~= nil then
			if lastCallback ~= nil then
				lastCallback(action)
			end
			local entry = table.remove(dialogs, 1)
			if entry ~= nil then
				lastCallback = entry.Callback;
				if entry.Text ~= nil then
					Wherigo.MessageBox({Text = entry.Text, Media=entry.Media, Buttons=entry.Buttons, Callback=msgcb})
				else
					msgcb(action)
				end
			else
				if callback ~= nil then
					callback()
				end
			end
		end
	end
	msgcb(true) -- any non-null argument
end

_Urwigo.MessageBox = function(tbl)
    _Urwigo.RunDialogs(function() Wherigo.MessageBox(tbl) end)
end

_Urwigo.OldDialog = function(tbl)
    _Urwigo.RunDialogs(function() Wherigo.Dialog(tbl) end)
end

_Urwigo.Dialog = function(buffered, tbl, callback)
	for k,v in ipairs(tbl) do
		table.insert(_Urwigo.DialogQueue, v)
	end
	if callback ~= nil then
		table.insert(_Urwigo.DialogQueue, {Callback=callback})
	end
	if not buffered then
		_Urwigo.RunDialogs(nil)
	end
end

_Urwigo.Hash = function(str)
   local b = 378551;
   local a = 63689;
   local hash = 0;
   for i = 1, #str, 1 do
      hash = hash*a+string.byte(str,i);
      hash = math.fmod(hash, 65535)
      a = a*b;
      a = math.fmod(a, 65535)
   end
   return hash;
end

_Urwigo.DaysInMonth = {
	31,
	28,
	31,
	30,
	31,
	30,
	31,
	31,
	30,
	31,
	30,
	31,
}

_Urwigo_Date_IsLeapYear = function(year)
	if year % 400 == 0 then
		return true
	elseif year% 100 == 0 then
		return false
	elseif year % 4 == 0 then
		return true
	else
		return false
	end
end

_Urwigo.Date_DaysInMonth = function(year, month)
	if month ~= 2 then
		return _Urwigo.DaysInMonth[month];
	else
		if _Urwigo_Date_IsLeapYear(year) then
			return 29
		else
			return 28
		end
	end
end

_Urwigo.Date_DayInYear = function(t)
	local res = t.day
	for month = 1, t.month - 1 do
		res = res + _Urwigo.Date_DaysInMonth(t.year, month)
	end
	return res
end

_Urwigo.Date_HourInWeek = function(t)
	return t.hour + (t.wday-1) * 24
end

_Urwigo.Date_HourInMonth = function(t)
	return t.hour + t.day * 24
end

_Urwigo.Date_HourInYear = function(t)
	return t.hour + (_Urwigo.Date_DayInYear(t) - 1) * 24
end

_Urwigo.Date_MinuteInDay = function(t)
	return t.min + t.hour * 60
end

_Urwigo.Date_MinuteInWeek = function(t)
	return t.min + t.hour * 60 + (t.wday-1) * 1440;
end

_Urwigo.Date_MinuteInMonth = function(t)
	return t.min + t.hour * 60 + (t.day-1) * 1440;
end

_Urwigo.Date_MinuteInYear = function(t)
	return t.min + t.hour * 60 + (_Urwigo.Date_DayInYear(t) - 1) * 1440;
end

_Urwigo.Date_SecondInHour = function(t)
	return t.sec + t.min * 60
end

_Urwigo.Date_SecondInDay = function(t)
	return t.sec + t.min * 60 + t.hour * 3600
end

_Urwigo.Date_SecondInWeek = function(t)
	return t.sec + t.min * 60 + t.hour * 3600 + (t.wday-1) * 86400
end

_Urwigo.Date_SecondInMonth = function(t)
	return t.sec + t.min * 60 + t.hour * 3600 + (t.day-1) * 86400
end

_Urwigo.Date_SecondInYear = function(t)
	return t.sec + t.min * 60 + t.hour * 3600 + (_Urwigo.Date_DayInYear(t)-1) * 86400
end


-- Inlined modules --
_Urwigo.InlineModuleFunc = {}

objAdvent = Wherigo.ZCartridge()

-- Media --
objmadvent00 = Wherigo.ZMedia(objAdvent)
objmadvent00.Id = "5f74765e-e66d-473e-89a8-83549ee01573"
objmadvent00.Name = "madvent00"
objmadvent00.Description = ""
objmadvent00.AltText = ""
objmadvent00.Resources = {
	{
		Type = "jpg", 
		Filename = "advent00.jpg", 
		Directives = {}
	}
}
objmadvent10 = Wherigo.ZMedia(objAdvent)
objmadvent10.Id = "24b48f4b-c59d-482d-b91e-7fd3ec7d65e4"
objmadvent10.Name = "madvent10"
objmadvent10.Description = ""
objmadvent10.AltText = ""
objmadvent10.Resources = {
	{
		Type = "jpg", 
		Filename = "advent10.jpg", 
		Directives = {}
	}
}
objmadvent20 = Wherigo.ZMedia(objAdvent)
objmadvent20.Id = "0d3a2c98-c6a5-4f89-93ba-16b9a91073d0"
objmadvent20.Name = "madvent20"
objmadvent20.Description = ""
objmadvent20.AltText = ""
objmadvent20.Resources = {
	{
		Type = "jpg", 
		Filename = "advent20.jpg", 
		Directives = {}
	}
}
objmadvent30 = Wherigo.ZMedia(objAdvent)
objmadvent30.Id = "4d0ce38e-f714-4c98-8e2a-4af69993ff15"
objmadvent30.Name = "madvent30"
objmadvent30.Description = ""
objmadvent30.AltText = ""
objmadvent30.Resources = {
	{
		Type = "jpg", 
		Filename = "advent30.jpg", 
		Directives = {}
	}
}
objmadvent40 = Wherigo.ZMedia(objAdvent)
objmadvent40.Id = "2dec0cdb-0915-4e1f-a717-516df9ca93b5"
objmadvent40.Name = "madvent40"
objmadvent40.Description = ""
objmadvent40.AltText = ""
objmadvent40.Resources = {
	{
		Type = "jpg", 
		Filename = "advent40.jpg", 
		Directives = {}
	}
}
objmadvent41 = Wherigo.ZMedia(objAdvent)
objmadvent41.Id = "008c844f-221a-440c-b231-c2026efb16b3"
objmadvent41.Name = "madvent41"
objmadvent41.Description = ""
objmadvent41.AltText = ""
objmadvent41.Resources = {
	{
		Type = "jpg", 
		Filename = "advent41.jpg", 
		Directives = {}
	}
}
objmadvent42 = Wherigo.ZMedia(objAdvent)
objmadvent42.Id = "1f4c7bd8-971f-4f5b-8675-09b3fc4a427d"
objmadvent42.Name = "madvent42"
objmadvent42.Description = ""
objmadvent42.AltText = ""
objmadvent42.Resources = {
	{
		Type = "jpg", 
		Filename = "advent42.jpg", 
		Directives = {}
	}
}
objmadvent43 = Wherigo.ZMedia(objAdvent)
objmadvent43.Id = "b15f2fbd-e910-4189-b19c-b28ffc774f05"
objmadvent43.Name = "madvent43"
objmadvent43.Description = ""
objmadvent43.AltText = ""
objmadvent43.Resources = {
	{
		Type = "jpg", 
		Filename = "advent43.jpg", 
		Directives = {}
	}
}
objmadvent44 = Wherigo.ZMedia(objAdvent)
objmadvent44.Id = "15f9162a-0d39-4b1e-85d4-e1ff4bf3298c"
objmadvent44.Name = "madvent44"
objmadvent44.Description = ""
objmadvent44.AltText = ""
objmadvent44.Resources = {
	{
		Type = "jpg", 
		Filename = "advent44.jpg", 
		Directives = {}
	}
}
objkerze = Wherigo.ZMedia(objAdvent)
objkerze.Id = "e900d77f-714e-4290-8fd5-a53bb5a24bad"
objkerze.Name = "kerze"
objkerze.Description = ""
objkerze.AltText = ""
objkerze.Resources = {
	{
		Type = "jpg", 
		Filename = "kerze.jpg", 
		Directives = {}
	}
}
objfeuerzeug = Wherigo.ZMedia(objAdvent)
objfeuerzeug.Id = "302ceca4-8f88-423f-933a-adaa4f90d266"
objfeuerzeug.Name = "feuerzeug"
objfeuerzeug.Description = ""
objfeuerzeug.AltText = ""
objfeuerzeug.Resources = {
	{
		Type = "jpg", 
		Filename = "feuerzeug.jpg", 
		Directives = {}
	}
}
objkranz_brennend = Wherigo.ZMedia(objAdvent)
objkranz_brennend.Id = "6ce59ba2-197a-4acf-943d-aebc638a3718"
objkranz_brennend.Name = "kranz_brennend"
objkranz_brennend.Description = ""
objkranz_brennend.AltText = ""
objkranz_brennend.Resources = {
	{
		Type = "jpg", 
		Filename = "adventbrennend.jpg", 
		Directives = {}
	}
}
objWeihnachtsbaum = Wherigo.ZMedia(objAdvent)
objWeihnachtsbaum.Id = "73daa887-d178-4f68-a843-afc8bf491957"
objWeihnachtsbaum.Name = "Weihnachtsbaum"
objWeihnachtsbaum.Description = ""
objWeihnachtsbaum.AltText = ""
objWeihnachtsbaum.Resources = {
	{
		Type = "jpg", 
		Filename = "weihnachtsbaum.jpg", 
		Directives = {}
	}
}
-- Cartridge Info --
objAdvent.Id="e9eb83f0-c702-4372-839c-6ba9c63b4ef4"
objAdvent.Name="Advent"
objAdvent.Description=[[Du musst Dir einen Adventskranz bauen um die Informationen fuer das Finale zu erhalten. 

Viel Spass beim Spielen.]]
objAdvent.Visible=true
objAdvent.Activity="TourGuide"
objAdvent.StartingLocationDescription=[[Diese Cartridge kann an einem der eingespeicherten Orte oder an einem beliebigen Ort gespielt werden]]
objAdvent.StartingLocation = Wherigo.INVALID_ZONEPOINT
objAdvent.Version="1.0"
objAdvent.Company=""
objAdvent.Author="bodenseepingu"
objAdvent.BuilderVersion="URWIGO 1.21.5528.18461"
objAdvent.CreateDate="06/24/2011 13:15:05"
objAdvent.PublishDate="1/1/0001 12:00:00 AM"
objAdvent.UpdateDate="03/16/2015 21:23:12"
objAdvent.LastPlayedDate="1/1/0001 12:00:00 AM"
objAdvent.TargetDevice="PocketPC"
objAdvent.TargetDeviceVersion="0"
objAdvent.StateId="1"
objAdvent.CountryId="2"
objAdvent.Complete=false
objAdvent.UseLogging=true

objAdvent.Media=objmadvent44


-- Zones --
zkerze1 = Wherigo.Zone(objAdvent)
zkerze1.Id = "d54458f2-bbd1-437a-b378-d4823e01b75d"
zkerze1.Name = "Kerze"
zkerze1.Description = ""
zkerze1.Visible = true
zkerze1.Media = objkerze
zkerze1.Commands = {}
zkerze1.DistanceRange = Distance(-1, "feet")
zkerze1.ShowObjects = "OnEnter"
zkerze1.ProximityRange = Distance(60, "meters")
zkerze1.AllowSetPositionTo = false
zkerze1.Active = false
zkerze1.Points = {
	ZonePoint(47.9279390156519, 9.69816604495236, 0), 
	ZonePoint(47.9276514542664, 9.69803729891964, 0), 
	ZonePoint(47.9278527474041, 9.6985522830505, 0)
}
zkerze1.OriginalPoint = ZonePoint(47.9278144057741, 9.69825187564083, 0)
zkerze1.DistanceRangeUOM = "Feet"
zkerze1.ProximityRangeUOM = "Meters"
zkerze1.OutOfRangeName = ""
zkerze1.InRangeName = ""
zkerze2 = Wherigo.Zone(objAdvent)
zkerze2.Id = "6880bd1a-6a13-4b9f-9b8b-b14e65f0b6f0"
zkerze2.Name = "Kerze"
zkerze2.Description = ""
zkerze2.Visible = true
zkerze2.Media = objkerze
zkerze2.Commands = {}
zkerze2.DistanceRange = Distance(-1, "feet")
zkerze2.ShowObjects = "OnEnter"
zkerze2.ProximityRange = Distance(60, "meters")
zkerze2.AllowSetPositionTo = false
zkerze2.Active = false
zkerze2.Points = {
	ZonePoint(47.9274142149199, 9.69924965739438, 0), 
	ZonePoint(47.9272704329681, 9.69924965739438, 0), 
	ZonePoint(47.9274861057458, 9.69948569178769, 0)
}
zkerze2.OriginalPoint = ZonePoint(47.9273902512113, 9.69932833552548, 0)
zkerze2.DistanceRangeUOM = "Feet"
zkerze2.ProximityRangeUOM = "Meters"
zkerze2.OutOfRangeName = ""
zkerze2.InRangeName = ""
zkerze3 = Wherigo.Zone(objAdvent)
zkerze3.Id = "b33babd1-3134-4e86-bd0c-f898679e2220"
zkerze3.Name = "Kerze"
zkerze3.Description = ""
zkerze3.Visible = true
zkerze3.Media = objkerze
zkerze3.Commands = {}
zkerze3.DistanceRange = Distance(-1, "feet")
zkerze3.ShowObjects = "OnEnter"
zkerze3.ProximityRange = Distance(60, "meters")
zkerze3.AllowSetPositionTo = false
zkerze3.Active = false
zkerze3.Points = {
	ZonePoint(47.928142104917, 9.69917723775097, 0), 
	ZonePoint(47.9280055139946, 9.69922551751324, 0), 
	ZonePoint(47.9281564828879, 9.6994347298164, 0)
}
zkerze3.OriginalPoint = ZonePoint(47.9281013672665, 9.69927916169354, 0)
zkerze3.DistanceRangeUOM = "Feet"
zkerze3.ProximityRangeUOM = "Meters"
zkerze3.OutOfRangeName = ""
zkerze3.InRangeName = ""
zkerze4 = Wherigo.Zone(objAdvent)
zkerze4.Id = "4927a07b-d434-4342-8622-96ff0d1f751f"
zkerze4.Name = "Kerze"
zkerze4.Description = ""
zkerze4.Visible = true
zkerze4.Media = objkerze
zkerze4.Commands = {}
zkerze4.DistanceRange = Distance(-1, "feet")
zkerze4.ShowObjects = "OnEnter"
zkerze4.ProximityRange = Distance(60, "meters")
zkerze4.AllowSetPositionTo = false
zkerze4.Active = false
zkerze4.Points = {
	ZonePoint(47.9278779089913, 9.69994166732022, 0), 
	ZonePoint(47.9277269392849, 9.6998129212875, 0), 
	ZonePoint(47.9278203967741, 9.70020988822171, 0)
}
zkerze4.OriginalPoint = ZonePoint(47.9278084150168, 9.69998815894314, 0)
zkerze4.DistanceRangeUOM = "Feet"
zkerze4.ProximityRangeUOM = "Meters"
zkerze4.OutOfRangeName = ""
zkerze4.InRangeName = ""
zkranz = Wherigo.Zone(objAdvent)
zkranz.Id = "17338081-a0cb-491e-a2ad-b2e4207a1332"
zkranz.Name = "Adventskranz"
zkranz.Description = "Hier steht der Adventskranz, den du weihnachtlich schmuecken sollst."
zkranz.Visible = true
zkranz.Media = objmadvent00
zkranz.Commands = {}
zkranz.DistanceRange = Distance(-1, "feet")
zkranz.ShowObjects = "OnEnter"
zkranz.ProximityRange = Distance(60, "meters")
zkranz.AllowSetPositionTo = false
zkranz.Active = false
zkranz.Points = {
	ZonePoint(47.9278024241932, 9.6990565383453, 0), 
	ZonePoint(47.9276730214258, 9.69901362300106, 0), 
	ZonePoint(47.9277592899733, 9.69933548808285, 0)
}
zkranz.OriginalPoint = ZonePoint(47.9277449118641, 9.6991352164764, 0)
zkranz.DistanceRangeUOM = "Feet"
zkranz.ProximityRangeUOM = "Meters"
zkranz.OutOfRangeName = ""
zkranz.InRangeName = ""
zfeuerzeug = Wherigo.Zone(objAdvent)
zfeuerzeug.Id = "47cf651b-21e3-4ad0-b221-19044138e325"
zfeuerzeug.Name = "Feuerzeug"
zfeuerzeug.Description = ""
zfeuerzeug.Visible = true
zfeuerzeug.Media = objfeuerzeug
zfeuerzeug.Commands = {}
zfeuerzeug.DistanceRange = Distance(-1, "feet")
zfeuerzeug.ShowObjects = "OnEnter"
zfeuerzeug.ProximityRange = Distance(60, "meters")
zfeuerzeug.AllowSetPositionTo = false
zfeuerzeug.Active = false
zfeuerzeug.Points = {
	ZonePoint(47.928399110543, 9.69975391268918, 0), 
	ZonePoint(47.9281690636091, 9.69975391268918, 0), 
	ZonePoint(47.9284278663378, 9.70018306613156, 0)
}
zfeuerzeug.OriginalPoint = ZonePoint(47.9283320134966, 9.69989696383664, 0)
zfeuerzeug.DistanceRangeUOM = "Feet"
zfeuerzeug.ProximityRangeUOM = "Meters"
zfeuerzeug.OutOfRangeName = ""
zfeuerzeug.InRangeName = ""
zfinale = Wherigo.Zone(objAdvent)
zfinale.Id = "657a0d5e-bcdc-49a7-b89c-2dbcb51094b8"
zfinale.Name = "Weihnachtsbaum"
zfinale.Description = "Suche hier dein Weihnachtsgeschenk"
zfinale.Visible = true
zfinale.Media = objWeihnachtsbaum
zfinale.Commands = {}
zfinale.DistanceRange = Distance(-1, "feet")
zfinale.ShowObjects = "OnEnter"
zfinale.ProximityRange = Distance(15, "meters")
zfinale.AllowSetPositionTo = false
zfinale.Active = false
zfinale.Points = {
	ZonePoint(47.9275966376959, 9.69956749916264, 0), 
	ZonePoint(47.9275966376959, 9.69956749916264, 0), 
	ZonePoint(47.9275966376959, 9.69956749916264, 0)
}
zfinale.OriginalPoint = ZonePoint(47.9275966376959, 9.69956749916264, 0)
zfinale.DistanceRangeUOM = "Feet"
zfinale.ProximityRangeUOM = "Meters"
zfinale.OutOfRangeName = ""
zfinale.InRangeName = ""

-- Characters --

-- Items --
objSpielanleitung = Wherigo.ZItem{
	Cartridge = objAdvent, 
	Container = Player
}
objSpielanleitung.Id = "f1f264f5-cca0-4f2e-a036-f448abfde1ec"
objSpielanleitung.Name = "Spielanleitung"
objSpielanleitung.Description = [[In diesem Wherigo musst Du den Adventskranz weihnachtlich schmuecken.
Sobald du das gemacht hast, bekommst du die Informationen fuer die Cachedose.]]
objSpielanleitung.Visible = true
objSpielanleitung.Media = objmadvent00
objSpielanleitung.Commands = {
	cmdLosgehts = Wherigo.ZCommand{
		Text = "Los gehts", 
		CmdWith = false, 
		Enabled = true, 
		EmptyTargetListText = "Nicht verfugbar"
	}
}
objSpielanleitung.Commands.cmdLosgehts.Custom = true
objSpielanleitung.Commands.cmdLosgehts.Id = "e363f80e-12e6-43cf-b29e-595a62fc8d2d"
objSpielanleitung.Commands.cmdLosgehts.WorksWithAll = true
objSpielanleitung.ObjectLocation = Wherigo.INVALID_ZONEPOINT
objSpielanleitung.Locked = false
objSpielanleitung.Opened = false
objUnlockCodeundCacheInfo = Wherigo.ZItem(objAdvent)
objUnlockCodeundCacheInfo.Id = "ac79d288-705d-4095-8b62-bcc10c21862c"
objUnlockCodeundCacheInfo.Name = "Unlock-Code und Cache-Info"
objUnlockCodeundCacheInfo.Description = "enthaelt Unlock-Code und Variablenwerte."
objUnlockCodeundCacheInfo.Visible = true
objUnlockCodeundCacheInfo.Media = objWeihnachtsbaum
objUnlockCodeundCacheInfo.Commands = {
	cmdUnlockCodeanzeigen = Wherigo.ZCommand{
		Text = "Unlock-Code anzeigen", 
		CmdWith = false, 
		Enabled = true, 
		EmptyTargetListText = "Nicht verfugbar"
	}
}
objUnlockCodeundCacheInfo.Commands.cmdUnlockCodeanzeigen.Custom = true
objUnlockCodeundCacheInfo.Commands.cmdUnlockCodeanzeigen.Id = "19473f50-71aa-416f-be33-21d6116c047f"
objUnlockCodeundCacheInfo.Commands.cmdUnlockCodeanzeigen.WorksWithAll = true
objUnlockCodeundCacheInfo.ObjectLocation = Wherigo.INVALID_ZONEPOINT
objUnlockCodeundCacheInfo.Locked = false
objUnlockCodeundCacheInfo.Opened = false
objKerze = Wherigo.ZItem(objAdvent)
objKerze.Id = "e2cd3eb1-fa2f-45f9-8f25-db10a603ce8c"
objKerze.Name = "Kerze"
objKerze.Description = "Das ist die erste Kerze"
objKerze.Visible = true
objKerze.Media = objkerze
objKerze.Commands = {}
objKerze.ObjectLocation = Wherigo.INVALID_ZONEPOINT
objKerze.Locked = false
objKerze.Opened = false
objKerze1 = Wherigo.ZItem(objAdvent)
objKerze1.Id = "6b260749-27c4-4d8f-9c98-28b3f47df8cb"
objKerze1.Name = "Kerze"
objKerze1.Description = "das ist die zweite Kerze"
objKerze1.Visible = true
objKerze1.Media = objkerze
objKerze1.Commands = {}
objKerze1.ObjectLocation = Wherigo.INVALID_ZONEPOINT
objKerze1.Locked = false
objKerze1.Opened = false
objKerze2 = Wherigo.ZItem(objAdvent)
objKerze2.Id = "24f4b4ef-b4cf-417d-8024-e23c2be0c62d"
objKerze2.Name = "Kerze"
objKerze2.Description = "das ist die dritte Kerze"
objKerze2.Visible = true
objKerze2.Media = objkerze
objKerze2.Commands = {}
objKerze2.ObjectLocation = Wherigo.INVALID_ZONEPOINT
objKerze2.Locked = false
objKerze2.Opened = false
objKerze3 = Wherigo.ZItem(objAdvent)
objKerze3.Id = "da05b9c9-3c95-45e3-b417-5465790d8338"
objKerze3.Name = "Kerze"
objKerze3.Description = "das ist die vierte Kerze"
objKerze3.Visible = true
objKerze3.Media = objkerze
objKerze3.Commands = {}
objKerze3.ObjectLocation = Wherigo.INVALID_ZONEPOINT
objKerze3.Locked = false
objKerze3.Opened = false
objAdventskranz = Wherigo.ZItem(objAdvent)
objAdventskranz.Id = "9ba1e766-2129-4510-8372-2b1247ce90b9"
objAdventskranz.Name = "Adventskranz"
objAdventskranz.Description = ""
objAdventskranz.Visible = true
objAdventskranz.Media = objmadvent00
objAdventskranz.Commands = {
	cmdstecken = Wherigo.ZCommand{
		Text = "stecken", 
		CmdWith = true, 
		Enabled = false, 
		EmptyTargetListText = "kein passender Gegenstand - Zone verlassen?"
	}
}
objAdventskranz.Commands.cmdstecken.Custom = true
objAdventskranz.Commands.cmdstecken.Id = "9a54b935-0fd8-4378-a182-ad2703655870"
objAdventskranz.Commands.cmdstecken.WorksWithAll = false
objAdventskranz.Commands.cmdstecken.WorksWithListIds = {
	"e2cd3eb1-fa2f-45f9-8f25-db10a603ce8c", 
	"6b260749-27c4-4d8f-9c98-28b3f47df8cb", 
	"24f4b4ef-b4cf-417d-8024-e23c2be0c62d", 
	"da05b9c9-3c95-45e3-b417-5465790d8338"
}
objAdventskranz.ObjectLocation = Wherigo.INVALID_ZONEPOINT
objAdventskranz.Locked = false
objAdventskranz.Opened = false
objFeuerzeug = Wherigo.ZItem(objAdvent)
objFeuerzeug.Id = "e09479bd-72af-482d-b34e-dba54e24b035"
objFeuerzeug.Name = "Feuerzeug"
objFeuerzeug.Description = ""
objFeuerzeug.Visible = true
objFeuerzeug.Media = objfeuerzeug
objFeuerzeug.Commands = {
	cmdbenutzen = Wherigo.ZCommand{
		Text = "benutzen", 
		CmdWith = true, 
		Enabled = false, 
		EmptyTargetListText = "Kein passender Gegenstand - Zone verlassen?"
	}
}
objFeuerzeug.Commands.cmdbenutzen.Custom = true
objFeuerzeug.Commands.cmdbenutzen.Id = "0acdf838-b75a-4025-b951-5a7709278130"
objFeuerzeug.Commands.cmdbenutzen.WorksWithAll = false
objFeuerzeug.Commands.cmdbenutzen.WorksWithListIds = {
	"e2cd3eb1-fa2f-45f9-8f25-db10a603ce8c", 
	"6b260749-27c4-4d8f-9c98-28b3f47df8cb", 
	"24f4b4ef-b4cf-417d-8024-e23c2be0c62d", 
	"da05b9c9-3c95-45e3-b417-5465790d8338", 
	"9ba1e766-2129-4510-8372-2b1247ce90b9"
}
objFeuerzeug.ObjectLocation = Wherigo.INVALID_ZONEPOINT
objFeuerzeug.Locked = false
objFeuerzeug.Opened = false

-- Tasks --
objSuchedieKerzen = Wherigo.ZTask(objAdvent)
objSuchedieKerzen.Id = "fa29d668-b580-4bbe-9361-ab7b5bc0921b"
objSuchedieKerzen.Name = "Suche die Kerzen"
objSuchedieKerzen.Description = "Suche die Kerzen fuer den Adventskranz"
objSuchedieKerzen.Visible = true
objSuchedieKerzen.Media = objkerze
objSuchedieKerzen.Active = true
objSuchedieKerzen.Complete = false
objSuchedieKerzen.CorrectState = "None"
objSchmueckedenAdventskranz = Wherigo.ZTask(objAdvent)
objSchmueckedenAdventskranz.Id = "ba9d5b40-08b4-4129-ad08-bbeeaec2d6e5"
objSchmueckedenAdventskranz.Name = "Schmuecke den Adventskranz"
objSchmueckedenAdventskranz.Description = ""
objSchmueckedenAdventskranz.Visible = false
objSchmueckedenAdventskranz.Media = objmadvent40
objSchmueckedenAdventskranz.Active = true
objSchmueckedenAdventskranz.Complete = false
objSchmueckedenAdventskranz.CorrectState = "None"
objSorgefuerweihnachtlicheStimmung = Wherigo.ZTask(objAdvent)
objSorgefuerweihnachtlicheStimmung.Id = "d18d7913-7211-4d1f-8e40-2ff69ce12d5a"
objSorgefuerweihnachtlicheStimmung.Name = "Sorge fuer weihnachtliche Stimmung"
objSorgefuerweihnachtlicheStimmung.Description = ""
objSorgefuerweihnachtlicheStimmung.Visible = false
objSorgefuerweihnachtlicheStimmung.Media = objfeuerzeug
objSorgefuerweihnachtlicheStimmung.Active = true
objSorgefuerweihnachtlicheStimmung.Complete = false
objSorgefuerweihnachtlicheStimmung.CorrectState = "None"

-- Cartridge Variables --
objvar_code = 1234
varanzkerzen = 0
varanzbrennend = 0
objlocation = ""
last_dist = 100
last_bearing = 0
last_pos = ""
walked_distance = 0
currentZone = "zkerze1"
currentCharacter = "dummy"
currentItem = "objSpielanleitung"
currentTask = "objSuchedieKerzen"
currentInput = "objEingabeSpielort"
currentTimer = "objwalkanywheretimer"
objAdvent.ZVariables = {
	objvar_code = 1234, 
	varanzkerzen = 0, 
	varanzbrennend = 0, 
	objlocation = "", 
	last_dist = 100, 
	last_bearing = 0, 
	last_pos = "", 
	walked_distance = 0, 
	currentZone = "zkerze1", 
	currentCharacter = "dummy", 
	currentItem = "objSpielanleitung", 
	currentTask = "objSuchedieKerzen", 
	currentInput = "objEingabeSpielort", 
	currentTimer = "objwalkanywheretimer"
}

-- Timers --
objwalkanywheretimer = Wherigo.ZTimer(objAdvent)
objwalkanywheretimer.Id = "48e08710-f732-4f32-ad92-401657443073"
objwalkanywheretimer.Name = "walkanywheretimer"
objwalkanywheretimer.Description = ""
objwalkanywheretimer.Visible = true
objwalkanywheretimer.Duration = 2
objwalkanywheretimer.Type = "Interval"

-- Inputs --
objEingabeSpielort = Wherigo.ZInput(objAdvent)
objEingabeSpielort.Id = "dd9aa782-badc-4240-8f24-55e4c3deacf5"
objEingabeSpielort.Name = "Eingabe Spielort"
objEingabeSpielort.Description = ""
objEingabeSpielort.Visible = true
objEingabeSpielort.Choices = {
	"Braunschweig", 
	"Irgendwohin gehen"
}
objEingabeSpielort.InputType = "MultipleChoice"
objEingabeSpielort.Text = "Bitte gib an, welche Version oder an welchem Ort du spielen moechtest."
objEingabeCodeBraunschweig = Wherigo.ZInput(objAdvent)
objEingabeCodeBraunschweig.Id = "261e386f-39d3-4f6a-9dbb-c93827922df2"
objEingabeCodeBraunschweig.Name = "Eingabe Code Braunschweig"
objEingabeCodeBraunschweig.Description = ""
objEingabeCodeBraunschweig.Visible = true
objEingabeCodeBraunschweig.InputType = "Text"
objEingabeCodeBraunschweig.Text = "Damit dieser Wherigo nicht vor der vorgesehenen Zeit gespielt werden kann, musst Du hier einen Code eingeben - den Code erfaehrst Du vom Owner oder dem zugehoerigen GC-Listing"

-- WorksWithList for object commands --
objAdventskranz.Commands.cmdstecken.WorksWithList = {
	objKerze, 
	objKerze1, 
	objKerze2, 
	objKerze3
}
objFeuerzeug.Commands.cmdbenutzen.WorksWithList = {
	objKerze, 
	objKerze1, 
	objKerze2, 
	objKerze3, 
	objAdventskranz
}

-- functions --
function objAdvent:OnStart()
	_Urwigo.MessageBox{
		Text = ("Hallo "..Player.Name)..[[ !
Schoen, dass du in weihnachtlicher Stimmung bist - sollte es nicht mehr Weihnachten sein - auch gut - freue dich dann einfach auf das naechste Weihnachten.
Lies erst mal die Spielanleitung durch und dann geht es los.
Viel Spass!]], 
		Media = objmadvent44, 
		Callback = function(action)
			if action ~= nil then
				if (_G[_aeYM("\027\034\049")][_aeYM("\089\066\049\041\060\066\099\089")] == _aeYM("\089\066\097\082\045\002\021")) or (_G[_aeYM("\027\034\049")][_aeYM("\092\012\062\045\050\002\014\044")] == _aeYM("\040\041\034\086\068")) then
					objvar_code = 0
					Wherigo.ShowScreen(Wherigo.DETAILSCREEN, objSpielanleitung)
				end
			end
		end
	}
end
function objAdvent:OnRestore()
end
function zkerze1:OnEnter()
	currentZone = "zkerze1"
	_Urwigo.MessageBox{
		Text = "Hier liegt die erste Kerze, diese ist nun in deinem Inventar. Gehe nun zur naechsten Kerze, Spiel wird gespeichert", 
		Media = objkerze, 
		Callback = function(action)
			if action ~= nil then
				zkerze1.Active = false
				zkerze2.Active = true
				if Wherigo.NoCaseEquals(objlocation, "WA") then
					init_walk_anywhere() 
				end
				objKerze:MoveTo(Player)
				objAdvent:RequestSync()
			end
		end
	}
end
function zkerze2:OnEnter()
	currentZone = "zkerze2"
	_Urwigo.MessageBox{
		Text = "Hier liegt die zweite Kerze, diese ist nun in deinem Inventar. Gehe nun zur naechsten Kerze, Spiel wird gespeichert", 
		Media = objkerze, 
		Callback = function(action)
			if action ~= nil then
				zkerze2.Active = false
				zkerze3.Active = true
				if Wherigo.NoCaseEquals(objlocation, "WA") then
					init_walk_anywhere() 
				end
				objKerze1:MoveTo(Player)
				objAdvent:RequestSync()
			end
		end
	}
end
function zkerze3:OnEnter()
	currentZone = "zkerze3"
	_Urwigo.MessageBox{
		Text = "Hier liegt die dritte Kerze, diese ist nun in deinem Inventar. Gehe nun zur naechsten Kerze, Spiel wird gespeichert.", 
		Media = objkerze, 
		Callback = function(action)
			if action ~= nil then
				zkerze3.Active = false
				zkerze4.Active = true
				if Wherigo.NoCaseEquals(objlocation, "WA") then
					init_walk_anywhere() 
				end
				objKerze2:MoveTo(Player)
				objAdvent:RequestSync()
			end
		end
	}
end
function zkerze4:OnEnter()
	currentZone = "zkerze4"
	_Urwigo.MessageBox{
		Text = "Du hast nun alle Kerzen, schmuecke nun den Adventskranz, Spiel wird gespeichert", 
		Media = objmadvent40, 
		Callback = function(action)
			if action ~= nil then
				zkerze4.Active = false
				objKerze3:MoveTo(Player)
				objSuchedieKerzen.Complete = true
				objSchmueckedenAdventskranz.Visible = true
				objAdventskranz.Commands.cmdstecken.Enabled = true
				objAdventskranz:MoveTo(zkranz)
				objAdvent:RequestSync()
			end
		end
	}
end
function zkranz:OnEnter()
	currentZone = "zkranz"
	if (not Player:Contains(objKerze)) and (varanzkerzen == 0) then
		zkerze1.Active = true
		if Wherigo.NoCaseEquals(objlocation, "Braunschweig") then
			_Urwigo.MessageBox{
				Text = [[Du siehst einen Adventskranz, der leider so gar nicht weihnachtlich aussieht - Deine Aufgabe besteht darin, das zu aendern. 
Wenn Du beim FTF am 18.12. mit dabei bist, gibt es neben virtuellen Gegenstaenden auch reale, um den Weihnachtskranz zu schmuecken - also schau dich gut um.]], 
				Media = objmadvent00, 
				Callback = function(action)
					if action ~= nil then
						Wherigo.ShowScreen(Wherigo.DETAILSCREEN, objAdventskranz)
					end
				end
			}
		else
			_Urwigo.MessageBox{
				Text = "Im Moment gibts bei dieser Version keine verstecke Geocaching-Dose, ich hoffe Du hast trotzdem Spass beim Spielen.", 
				Callback = function(action)
					if action ~= nil then
						Wherigo.ShowScreen(Wherigo.DETAILSCREEN, objAdventskranz)
					end
				end
			}
		end
	end
end
function zfeuerzeug:OnEnter()
	currentZone = "zfeuerzeug"
	_Urwigo.MessageBox{
		Text = "Hier liegt ein Feuerzeug - du hast es nun im Inventar, Spiel wird gespeichert.", 
		Media = objfeuerzeug, 
		Callback = function(action)
			if action ~= nil then
				zfeuerzeug.Active = false
				objFeuerzeug.Commands.cmdbenutzen.Enabled = true
				objFeuerzeug:MoveTo(Player)
				objAdvent:RequestSync()
			end
		end
	}
end
function zfinale:OnProximity()
	currentZone = "zfinale"
	_Urwigo.MessageBox{
		Text = [[Du bist schon ganz in der Naehe
Benutze die Navigation um moeglichst nahe an das Versteck zu kommen und suche dann. Viel Glueck.

Vielen Dank fuers Spielen - ich hoffe es hat Spass gemacht]], 
		Media = objWeihnachtsbaum, 
		Callback = function(action)
			if action ~= nil then
				objcartridge_finished()
			end
		end
	}
end
function objEingabeSpielort:OnGetInput(input)
	if input == nil then
		input = ""
	end
	objlocation = input
	if Wherigo.NoCaseEquals(input, "Braunschweig") then
		_Urwigo.RunDialogs(function()
			Wherigo.GetInput(objEingabeCodeBraunschweig)
		end)
	elseif Wherigo.NoCaseEquals(input, "Irgendwohin gehen") then
		objlocation = "WA"
		zkerze1.Active = true
		spielfeld_festlegen(2)
		zkranz.Active = true
		objwalkanywheretimer:Start()
	else
		_Urwigo.MessageBox{
			Text = "Du solltest Dich schon fuer einen Spielort entscheiden", 
			Callback = function(action)
				if action ~= nil then
					objSpielanleitung.Visible = true
					Wherigo.ShowScreen(Wherigo.DETAILSCREEN, objSpielanleitung)
				end
			end
		}
	end
end
function objEingabeCodeBraunschweig:OnGetInput(input)
	input = tonumber(input)
	if input == nil then
		_Urwigo.MessageBox{
			Text = "Bitte nur Ziffern eingeben", 
			Callback = function(action)
				if action ~= nil then
					objSpielanleitung.Visible = true
				end
			end
		}
		return
	end
	if input == 112181 then
		_Urwigo.MessageBox{
			Text = [[Code akzeptiert - Viel Spass beim Spielen!
Gehe nun erstmal zum Adventskranz]], 
			Media = objWeihnachtsbaum, 
			Callback = function(action)
				if action ~= nil then
					spielfeld_festlegen(0)
					zkranz.Active = true
					objSpielanleitung.Visible = false
					objlocation = "Braunschweig"
				end
			end
		}
	else
		Wherigo.ShowScreen(Wherigo.MAINSCREEN)
		objSpielanleitung.Visible = true
	end
end
function objwalkanywheretimer:OnTick()
	bestimme_zone_bewege_automatisch()
end
function objSpielanleitung:OncmdLosgehts(target)
	_Urwigo.Dialog(false, {
		{
			Text = [[Ich hoffe es ist alles klar - viel Spass.
Du musst jetzt deinen Spielort waehlen - es gibt fest einprogrammierte Spielort(e) oder auch eine Version, die ueberall gespielt werden kann - spielst du diese, werden Dir nach erfolgreichem Beenden des Spiels Variablenwerte ABCD angezeigt mit denen die Finalkoordinate errechnet werden kann (sofern ein Geocache gelegt wird, der genau diese Variante verwendet)]], 
			Media = objWeihnachtsbaum
		}, 
		{
			Text = "Bei der Ueberall-Spielversion (bezeichnet als irgendwohin gehen) wird die Zone immer in die Richtung gelegt, die du eingeschlagen hast. Also auch wenn die Zone zuerst in einer anderen Richtung liegt - sobald du in eine bestimmte Richtung etliche Meter gegangen bist, wird die Zone dir in den Weg gelegt - du kannst problemlos die Richtung andern oder sogar umdrehen wenn du magst.", 
			Media = objWeihnachtsbaum
		}, 
		{
			Text = "Beachte aber in der Version \"Irgendwohin Gehen\" - der Adventskranz bleibt fest - er liegt genau dort, wo du das Spiel gestartet hast.", 
			Media = objWeihnachtsbaum
		}
	}, function(action)
		objSpielanleitung.Visible = false
		_Urwigo.RunDialogs(function()
			Wherigo.GetInput(objEingabeSpielort)
		end)
	end)
end
function objUnlockCodeundCacheInfo:OncmdUnlockCodeanzeigen(target)
	_Urwigo.MessageBox{
		Text = string.sub(Player.CompletionCode, 1, 15), 
		Media = objWeihnachtsbaum
	}
end
function objAdventskranz:Oncmdstecken(target)
	target:MoveTo(nil)
	varanzkerzen = varanzkerzen + 1
	objAdventskranz.Media = GetMedia(varanzkerzen,varanzbrennend)
	zkranz.Media = GetMedia(varanzkerzen,varanzbrennend)
	if varanzkerzen == 4 then
		_Urwigo.MessageBox{
			Text = "Gut so, jetzt sorge noch fuer weihnachtliche Stimmung", 
			Media = objmadvent40, 
			Callback = function(action)
				if action ~= nil then
					objSchmueckedenAdventskranz.Complete = true
					objSorgefuerweihnachtlicheStimmung.Visible = true
					objAdventskranz.Commands.cmdstecken.Enabled = false
					objKerze:MoveTo(zkranz)
					objKerze1:MoveTo(zkranz)
					objKerze2:MoveTo(zkranz)
					objKerze3:MoveTo(zkranz)
					zfeuerzeug.Active = true
					if Wherigo.NoCaseEquals(objlocation, "WA") then
						init_walk_anywhere() 
					end
				end
			end
		}
	else
		Wherigo.ShowScreen(Wherigo.DETAILSCREEN, objAdventskranz)
	end
end
function objFeuerzeug:Oncmdbenutzen(target)
	if target == objAdventskranz then
		_Urwigo.MessageBox{
			Text = "Bist du des Wahnsinns. An Weihnachten musst du echt aufpassen mit Feuer - du zuendest ja noch deine Wohnung an. Damit war leider die ganze Muehe umsonst...(will ja nicht so gemein sein, du kannst das zuletzt gespeicherte Spiel auch wieder laden und diesen Fehler vermeiden)", 
			Media = objkranz_brennend, 
			Callback = function(action)
				if action ~= nil then
					objAdventskranz:MoveTo(nil)
					objKerze:MoveTo(nil)
					objKerze1:MoveTo(nil)
					objKerze2:MoveTo(nil)
					objKerze3:MoveTo(nil)
					zkranz.Media = objkranz_brennend
				end
			end
		}
	else
		varanzbrennend = varanzbrennend + 1
		objAdventskranz.Media = GetMedia(varanzkerzen,varanzbrennend)
		zkranz.Media = GetMedia(varanzkerzen,varanzbrennend)
		target:MoveTo(nil)
		if varanzbrennend == 4 then
			_Urwigo.MessageBox{
				Text = "Gratulation, du hast einen schoenen weihnachtlichen Adventskranz geschaffen und erhaeltst damit deine Belohnung. Wenn du mit festen Koordinaten gespielt hast, wird nun die Zone Weihnachtsbaum freigeschaltet - hast du Irgendwo gespielt, dann erhaeltst Du nun die Informationen, um gemaess Cachelisting die Koordinaten des Weihnachtsbaumes zu berechnen. ", 
				Media = objmadvent44, 
				Callback = function(action)
					if action ~= nil then
						if Wherigo.NoCaseEquals(objlocation, "PA") or Wherigo.NoCaseEquals(objlocation, "WA") then
							objUnlockCodeundCacheInfo.Description = "Die Werte fuer ABCD zum Berechnen der Koordinate des Weihnachtsbaums gemaess Listing sind: ABCD="..objvar_code
							objwalkanywheretimer:Stop()
							objcartridge_finished()
						else
							objUnlockCodeundCacheInfo.Description = "Gratulation, du bist nun am Ziel - suche nun deine Belohnung und hinterlasse deinen Dank an den Weihnachtsmann im Weihnachtsbuch."
							zfinale.Active = true
						end
						objAdventskranz:MoveTo(Player)
						zkranz.Active = false
						objSorgefuerweihnachtlicheStimmung.Complete = true
					end
				end
			}
		else
			Wherigo.ShowScreen(Wherigo.DETAILSCREEN, objAdventskranz)
		end
	end
end

-- Urwigo functions --
function objcartridge_finished()
	objAdvent.Complete = true
	objUnlockCodeundCacheInfo:MoveTo(Player)
	Wherigo.ShowScreen(Wherigo.DETAILSCREEN, objUnlockCodeundCacheInfo)
end

-- Begin user functions --

   

function spielfeld_festlegen(variante)  
 
   local ZP = Player.ObjectLocation
   local bearing = 0
   local dist = Wherigo.Distance(100,'m')
   if variante == 1 then
       zkranz.OriginalPoint = ZP
       zkranz.Points = GetZonePoints(zkranz.OriginalPoint,20)
       zkerze1.OriginalPoint = Wherigo.TranslatePoint(ZP, dist , bearing)
       zkerze1.Points = GetZonePoints(zkerze1.OriginalPoint,50)
       bearing = bearing + 90
       zkerze2.OriginalPoint = Wherigo.TranslatePoint(ZP, dist , bearing)
       zkerze2.Points = GetZonePoints(zkerze2.OriginalPoint,50)
       bearing = bearing + 90
       zkerze3.OriginalPoint = Wherigo.TranslatePoint(ZP, dist , bearing)
       zkerze3.Points = GetZonePoints(zkerze3.OriginalPoint,50)
       bearing = bearing + 90
       zkerze4.OriginalPoint = Wherigo.TranslatePoint(ZP, dist , bearing)
       zkerze4.Points = GetZonePoints(zkerze4.OriginalPoint,50)
       bearing = 45
       zfeuerzeug.OriginalPoint = Wherigo.TranslatePoint(ZP, dist , bearing)
       zfeuerzeug.Points = GetZonePoints(zfeuerzeug.OriginalPoint,50)
   elseif variante == 2 then --walk anywhere
       zkranz.OriginalPoint = ZP
       zkranz.Points = GetZonePoints(zkranz.OriginalPoint,20)
       init_walk_anywhere() 
   elseif variante == 0 then 
       local   braunschweig = {} --opensource variante, original-Koordinaten entfernt
       braunschweig.kranz = {}
       braunschweig.kranz = ZonePoint( 52.12,  10.5, 0)
       braunschweig.kerze1 = {}
       braunschweig.kerze1 = ZonePoint(52.13,  10.5,0)
       braunschweig.kerze2 = {}
       braunschweig.kerze2 = ZonePoint(52.14,10.5,0)
       braunschweig.kerze3 = {}
       braunschweig.kerze3 = ZonePoint( 52.15,10.5,0)
       braunschweig.kerze4 = {}
       braunschweig.kerze4 = ZonePoint( 52.16,10.5,0)
       braunschweig.feuerzeug = {}
       braunschweig.feuerzeug = ZonePoint(52.17,10.5,0)
       braunschweig.finale = {}
       braunschweig.finale = ZonePoint(  52.18,10.5,0)
       zkranz.OriginalPoint = braunschweig.kranz
       zkranz.Points = GetZonePoints(zkranz.OriginalPoint,8)
       zkerze1.OriginalPoint = braunschweig.kerze1
       zkerze1.Points = GetZonePoints(zkerze1.OriginalPoint,8)
      
       zkerze2.OriginalPoint = braunschweig.kerze2
       zkerze2.Points = GetZonePoints(zkerze2.OriginalPoint,8)
       
       zkerze3.OriginalPoint = braunschweig.kerze3
       zkerze3.Points = GetZonePoints(zkerze3.OriginalPoint,8)
       
       zkerze4.OriginalPoint = braunschweig.kerze4
       zkerze4.Points = GetZonePoints(zkerze4.OriginalPoint,8)
       
       zfeuerzeug.OriginalPoint = braunschweig.feuerzeug
       zfeuerzeug.Points = GetZonePoints(zfeuerzeug.OriginalPoint,8)
       zfinale.OriginalPoint = braunschweig.finale
       zfinale.Points = GetZonePoints(zfinale.OriginalPoint,0)
   end
end


function GetMedia(kerzen,brennend)
   local name = "objmadvent"..kerzen..brennend
   if name == "objmadvent00" then
      return objmadvent00
   elseif name == "objmadvent10" then
      return objmadvent10
   elseif name == "objmadvent20" then
      return objmadvent20
   elseif name == "objmadvent30" then
      return objmadvent30
   elseif name == "objmadvent40" then
      return objmadvent40
   elseif name == "objmadvent41" then
      return objmadvent41
   elseif name == "objmadvent42" then
      return objmadvent42
   elseif name == "objmadvent43" then
      return objmadvent43
   elseif name == "objmadvent44" then
      return objmadvent44
   else return nil
   end
end

--in user variablen speichern
last_dist = 100
last_bearing = 0

last_pos = ZonePoint(0,0,0)
walked_distance = 0


 
 function init_walk_anywhere() 
    
    last_pos = Player.ObjectLocation
    last_bearing = last_bearing + 90
    last_dist = 100
    walked_distance = 0
    local zone = get_active_zone()

    if zone ~= nil then 
        move_zone(zone, last_dist, last_bearing)
    end
end

function get_active_zone()
     local zone = nil
    if zkerze1.Active then
       zone = zkerze1
    elseif zkerze2.Active then
       zone = zkerze2
    elseif zkerze3.Active then
       zone = zkerze3
    elseif zkerze4.Active then
       zone = zkerze4
    elseif zfeuerzeug.Active then
       zone = zfeuerzeug
    end
    return zone
 end

function bestimme_zone_bewege_automatisch()
    local zone = get_active_zone()

    if zone ~= nil then 
         bewege_zone_automatisch(zone)
    end
end

function bewege_zone_automatisch(zone)
         local d, b = Wherigo.VectorToPoint(last_pos, Player.ObjectLocation)
         local dn = d:GetValue 'm'
         if dn > 10 then
             walked_distance = walked_distance + dn
             last_dist = last_dist - walked_distance
             if last_dist <10 then
                 last_dist = 10
             end
             last_pos = Player.ObjectLocation
             last_bearing = b
             move_zone(zone,last_dist,last_bearing)
         end
end

function move_zone(zone, entf, bearing)
    local dist = Wherigo.Distance(entf,'m')
    zone.Active = false
    zone.OriginalPoint = Wherigo.TranslatePoint(Player.ObjectLocation , dist, bearing)   
    zone.Points = GetZonePoints2(Player.ObjectLocation, entf, bearing)
    zone.Active = true
end


function GetZonePoints2(refPt, entf, bearing)
  local dist = Wherigo.Distance(entf, 'm')
  local dist2 = Wherigo.Distance(entf + 20,'m')
  local pts = {
    Wherigo.TranslatePoint(refPt, dist, bearing),
    Wherigo.TranslatePoint(refPt, dist, bearing - 60),
    Wherigo.TranslatePoint(refPt, dist2, bearing),
    Wherigo.TranslatePoint(refPt, dist, bearing + 60),
    
  }
  return pts
end




function GetZonePoints(refPt, radi)
  local dist = Wherigo.Distance(radi, 'm')
  local pts = {
    Wherigo.TranslatePoint(refPt, dist, 22.5),
    Wherigo.TranslatePoint(refPt, dist, 67.5),
    Wherigo.TranslatePoint(refPt, dist, 112.5),
    Wherigo.TranslatePoint(refPt, dist, 157.5),
    Wherigo.TranslatePoint(refPt, dist, 202.5),
    Wherigo.TranslatePoint(refPt, dist, 247.5),
    Wherigo.TranslatePoint(refPt, dist, 292.5),
    Wherigo.TranslatePoint(refPt, dist, 337.5),
  }
  return pts
end


-- End user functions --
return objAdvent
