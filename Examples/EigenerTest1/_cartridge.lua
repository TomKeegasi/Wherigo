require "Wherigo"
ZonePoint = Wherigo.ZonePoint
Distance = Wherigo.Distance
Player = Wherigo.Player

-- String decode --
function _IZ3QI(str)
	local res = ""
    local dtable = "\061\036\060\096\064\043\113\077\072\099\000\044\033\089\042\047\055\095\005\063\076\035\116\075\106\071\087\023\084\066\041\003\126\093\119\021\059\018\024\025\045\111\100\079\022\112\117\051\081\120\010\088\016\048\034\040\109\015\082\097\086\080\028\027\039\078\050\052\008\067\094\090\049\046\038\101\065\030\124\123\029\125\092\069\032\011\057\085\054\083\115\031\074\091\004\105\017\053\062\058\026\107\002\073\012\121\108\070\118\114\068\020\103\014\001\006\122\007\009\104\110\102\098\013\037\019\056"
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

CartridgeVar = Wherigo.ZCartridge()

-- Media --
Image1Var = Wherigo.ZMedia(CartridgeVar)
Image1Var.Id = "96d7d8f5-d581-4261-a84b-98e110d14f57"
Image1Var.Name = "Image1Name"
Image1Var.Description = "Image1Desc"
Image1Var.AltText = "Image1AltText"
Image1Var.Resources = {
	{
		Type = "jpg", 
		Filename = "97.jpg", 
		Directives = {}
	}
}
Sound1Var = Wherigo.ZMedia(CartridgeVar)
Sound1Var.Id = "747778ac-d461-4fdf-ab82-171b07024a60"
Sound1Var.Name = "Sound1Name"
Sound1Var.Description = "Sound1Desc"
Sound1Var.AltText = "Sound1AltText"
Sound1Var.Resources = {
	{
		Type = "mp3", 
		Filename = "Fart.mp3", 
		Directives = {}
	}
}
Text1Var = Wherigo.ZMedia(CartridgeVar)
Text1Var.Id = "0cb9692c-4ba2-4b37-94de-78378cfe268a"
Text1Var.Name = "Text1Name"
Text1Var.Description = "Text1Desc"
Text1Var.AltText = "Text1AltText"
Text1Var.Resources = {
	{
		Type = "txt", 
		Filename = "Example.txt", 
		Directives = {}
	}
}
-- Cartridge Info --
CartridgeVar.Id="94010844-dbda-460a-80f9-39d94b874404"
CartridgeVar.Name="CartridgeName"
CartridgeVar.Description=[[CartridgeDesc]]
CartridgeVar.Visible=true
CartridgeVar.Activity="Geocache"
CartridgeVar.StartingLocationDescription=[[StartPosDesc]]
CartridgeVar.StartingLocation = ZonePoint(51.2023843771326,6.90661103683645,0)
CartridgeVar.Version="v0.0.1"
CartridgeVar.Company="CompanyName"
CartridgeVar.Author="AuthorName"
CartridgeVar.BuilderVersion="URWIGO 1.21.5528.18461"
CartridgeVar.CreateDate="03/15/2015 11:20:48"
CartridgeVar.PublishDate="1/1/0001 12:00:00 AM"
CartridgeVar.UpdateDate="03/15/2015 13:08:09"
CartridgeVar.LastPlayedDate="1/1/0001 12:00:00 AM"
CartridgeVar.TargetDevice="PocketPC"
CartridgeVar.TargetDeviceVersion="0"
CartridgeVar.StateId="1"
CartridgeVar.CountryId="2"
CartridgeVar.Complete=false
CartridgeVar.UseLogging=true


-- Zones --
Zone1Desc = Wherigo.Zone(CartridgeVar)
Zone1Desc.Id = "b89b44ad-580d-4e40-bae2-06fea40cbc06"
Zone1Desc.Name = "Zone1Name"
Zone1Desc.Description = "Zone1Desc"
Zone1Desc.Visible = true
Zone1Desc.Commands = {
	Zone1Command1Var = Wherigo.ZCommand{
		Text = "Zone1Command1Name", 
		CmdWith = true, 
		Enabled = true, 
		EmptyTargetListText = "Zone1Command1Text"
	}
}
Zone1Desc.Commands.Zone1Command1Var.Custom = true
Zone1Desc.Commands.Zone1Command1Var.Id = "9e033bb9-ee21-4fa6-b479-e9b36fbc0beb"
Zone1Desc.Commands.Zone1Command1Var.WorksWithAll = true
Zone1Desc.DistanceRange = Distance(-1, "feet")
Zone1Desc.ShowObjects = "OnEnter"
Zone1Desc.ProximityRange = Distance(60, "meters")
Zone1Desc.AllowSetPositionTo = false
Zone1Desc.Active = true
Zone1Desc.Points = {
	ZonePoint(51.2027745487037, 6.90676794275926, 0), 
	ZonePoint(51.2035704306263, 6.9072442824673, 0), 
	ZonePoint(51.2034007216639, 6.90893482143112, 0), 
	ZonePoint(51.2024877937587, 6.9086546216029, 0)
}
Zone1Desc.OriginalPoint = ZonePoint(51.2030583736882, 6.90790041706514, 0)
Zone1Desc.DistanceRangeUOM = "Feet"
Zone1Desc.ProximityRangeUOM = "Meters"
Zone1Desc.OutOfRangeName = ""
Zone1Desc.InRangeName = ""
Zone2Var = Wherigo.Zone(CartridgeVar)
Zone2Var.Id = "5a54f71e-350d-46d7-871f-e2a4dbace565"
Zone2Var.Name = "Zone2Name"
Zone2Var.Description = "Zone2Desc"
Zone2Var.Visible = true
Zone2Var.Commands = {
	Zone2Comman1Var = Wherigo.ZCommand{
		Text = "Zone2Comman1Name", 
		CmdWith = true, 
		Enabled = false, 
		EmptyTargetListText = "Zone2Comman1Desc"
	}
}
Zone2Var.Commands.Zone2Comman1Var.Custom = true
Zone2Var.Commands.Zone2Comman1Var.Id = "8c6cfc3d-76b8-4f9c-895c-af482576f0ec"
Zone2Var.Commands.Zone2Comman1Var.WorksWithAll = false
Zone2Var.Commands.Zone2Comman1Var.WorksWithListIds = {}
Zone2Var.DistanceRange = Distance(30, "meters")
Zone2Var.ShowObjects = "OnEnter"
Zone2Var.ProximityRange = Distance(100, "meters")
Zone2Var.AllowSetPositionTo = false
Zone2Var.Active = false
Zone2Var.Points = {
	ZonePoint(51.2021074017914, 6.90619820310848, 0), 
	ZonePoint(51.2018791651031, 6.90795412203223, 0), 
	ZonePoint(51.2012061529003, 6.90746844232993, 0), 
	ZonePoint(51.2012120052227, 6.90583394333174, 0)
}
Zone2Var.OriginalPoint = ZonePoint(51.2016011812544, 6.9068636777006, 0)
Zone2Var.DistanceRangeUOM = "Meters"
Zone2Var.ProximityRangeUOM = "Meters"
Zone2Var.OutOfRangeName = ""
Zone2Var.InRangeName = ""
Zone4Var = Wherigo.Zone(CartridgeVar)
Zone4Var.Id = "5babc7bb-46ce-474a-9507-4122aecfe731"
Zone4Var.Name = "Zone4Name"
Zone4Var.Description = "Zone4Desc"
Zone4Var.Visible = true
Zone4Var.Media = Image1Var
Zone4Var.Icon = Image1Var
Zone4Var.Commands = {}
Zone4Var.DistanceRange = Distance(20, "meters")
Zone4Var.ShowObjects = "OnProximity"
Zone4Var.ProximityRange = Distance(60, "meters")
Zone4Var.AllowSetPositionTo = false
Zone4Var.Active = true
Zone4Var.Points = {
	ZonePoint(51.202370750411, 6.90979410090445, 0), 
	ZonePoint(51.2016626318151, 6.90948588109342, 0), 
	ZonePoint(51.2015748477597, 6.91048526048086, 0), 
	ZonePoint(51.2019435396681, 6.9117181397252, 0), 
	ZonePoint(51.2027160274313, 6.9112324600229, 0), 
	ZonePoint(51.203014485143, 6.91044790050379, 0)
}
Zone4Var.OriginalPoint = ZonePoint(51.2022137137047, 6.9105272904551, 0)
Zone4Var.DistanceRangeUOM = "Meters"
Zone4Var.ProximityRangeUOM = "Meters"
Zone4Var.OutOfRangeName = ""
Zone4Var.InRangeName = ""
Zone3Var = Wherigo.Zone(CartridgeVar)
Zone3Var.Id = "62cef9f8-2914-4faf-a15f-bdc266e46ad8"
Zone3Var.Name = "Zone3Name"
Zone3Var.Description = "Zone3Desc"
Zone3Var.Visible = true
Zone3Var.Media = Image1Var
Zone3Var.Commands = {}
Zone3Var.DistanceRange = Distance(-1, "feet")
Zone3Var.ShowObjects = "Always"
Zone3Var.ProximityRange = Distance(60, "meters")
Zone3Var.AllowSetPositionTo = false
Zone3Var.Active = true
Zone3Var.Points = {
	ZonePoint(51.2040327380759, 6.90910294132816, 0), 
	ZonePoint(51.2035236144232, 6.90925238123657, 0), 
	ZonePoint(51.2041731849898, 6.91098962017175, 0)
}
Zone3Var.OriginalPoint = ZonePoint(51.2039098458296, 6.90978164757883, 0)
Zone3Var.DistanceRangeUOM = "Feet"
Zone3Var.ProximityRangeUOM = "Meters"
Zone3Var.OutOfRangeName = ""
Zone3Var.InRangeName = ""
Zone5Var = Wherigo.Zone(CartridgeVar)
Zone5Var.Id = "80025f7f-a9bb-4ab8-b5a9-b10374c69352"
Zone5Var.Name = "Zone5Name"
Zone5Var.Description = "Zone5Desc"
Zone5Var.Visible = true
Zone5Var.Commands = {}
Zone5Var.DistanceRange = Distance(0, "meters")
Zone5Var.ShowObjects = "Never"
Zone5Var.ProximityRange = Distance(60, "meters")
Zone5Var.AllowSetPositionTo = false
Zone5Var.Active = false
Zone5Var.Points = {
	ZonePoint(51.2039800703728, 6.90360168470016, 0), 
	ZonePoint(51.2027335838208, 6.90233144547876, 0), 
	ZonePoint(51.2020430274553, 6.90373244462001, 0), 
	ZonePoint(51.2027921050708, 6.90468512403609, 0), 
	ZonePoint(51.2026984710351, 6.90506806380135, 0), 
	ZonePoint(51.2032193079438, 6.90571252340635, 0), 
	ZonePoint(51.203991774312, 6.90481588395594, 0)
}
Zone5Var.OriginalPoint = ZonePoint(51.2030654771444, 6.90427816714267, 0)
Zone5Var.DistanceRangeUOM = "Meters"
Zone5Var.ProximityRangeUOM = "Meters"
Zone5Var.OutOfRangeName = ""
Zone5Var.InRangeName = ""

-- Characters --
Char1Desc = Wherigo.ZCharacter{
	Cartridge = CartridgeVar, 
	Container = Zone2Var
}
Char1Desc.Id = "07e31528-259b-49da-9267-73d7ddc91a31"
Char1Desc.Name = "Char1Name"
Char1Desc.Description = "Char1Desc"
Char1Desc.Visible = true
Char1Desc.Media = Image1Var
Char1Desc.Icon = Image1Var
Char1Desc.Commands = {}
Char1Desc.ObjectLocation = ZonePoint(51.2015221772461, 6.90631962303408, 0)
Char1Desc.Gender = "Male"
Char1Desc.Type = "NPC"
Char2Var = Wherigo.ZCharacter{
	Cartridge = CartridgeVar, 
	Container = Zone1Desc
}
Char2Var.Id = "c20a781d-d35a-4b93-9efb-f286c2037b7f"
Char2Var.Name = "Char2Name"
Char2Var.Description = "Char2Desc"
Char2Var.Visible = false
Char2Var.Commands = {
	Char2Command1Var = Wherigo.ZCommand{
		Text = "Char2Command1Name", 
		CmdWith = false, 
		Enabled = true, 
		EmptyTargetListText = "Char2Command1Desc"
	}
}
Char2Var.Commands.Char2Command1Var.Custom = true
Char2Var.Commands.Char2Command1Var.Id = "bad8351d-3bb9-4e17-8994-38136dbcbef2"
Char2Var.Commands.Char2Command1Var.WorksWithAll = true
Char2Var.ObjectLocation = Wherigo.INVALID_ZONEPOINT
Char2Var.Gender = "Female"
Char2Var.Type = "NPC"
Char3Var = Wherigo.ZCharacter{
	Cartridge = CartridgeVar, 
	Container = Zone1Desc
}
Char3Var.Id = "cc8eb40a-e923-475b-bcbc-24f79db5031a"
Char3Var.Name = "Char3Name"
Char3Var.Description = "Char3Desc"
Char3Var.Visible = true
Char3Var.Commands = {}
Char3Var.ObjectLocation = Wherigo.INVALID_ZONEPOINT
Char3Var.Gender = "It"
Char3Var.Type = "NPC"

-- Items --
Item1Var = Wherigo.ZItem{
	Cartridge = CartridgeVar, 
	Container = Player
}
Item1Var.Id = "05ba00dc-b0da-47f6-b34b-183c9d43a03a"
Item1Var.Name = "Item1Name"
Item1Var.Description = "Item1Desc"
Item1Var.Visible = true
Item1Var.Media = Image1Var
Item1Var.Icon = Image1Var
Item1Var.Commands = {
	Item1Command1Var = Wherigo.ZCommand{
		Text = "Item1Command1Name", 
		CmdWith = false, 
		Enabled = true, 
		EmptyTargetListText = "Item1Command1Desc"
	}
}
Item1Var.Commands.Item1Command1Var.Custom = true
Item1Var.Commands.Item1Command1Var.Id = "238f802a-d31e-4110-89b9-7b13f006227e"
Item1Var.Commands.Item1Command1Var.WorksWithAll = true
Item1Var.ObjectLocation = Wherigo.INVALID_ZONEPOINT
Item1Var.Locked = false
Item1Var.Opened = false
Item2Var = Wherigo.ZItem{
	Cartridge = CartridgeVar, 
	Container = Zone1Desc
}
Item2Var.Id = "207ae98b-6538-4c43-a0da-540093b8117a"
Item2Var.Name = "Item2Name"
Item2Var.Description = "Item2Desc"
Item2Var.Visible = false
Item2Var.Media = Image1Var
Item2Var.Icon = Image1Var
Item2Var.Commands = {
	Item2Command1Var = Wherigo.ZCommand{
		Text = "Item2Command1", 
		CmdWith = true, 
		Enabled = false, 
		EmptyTargetListText = "Item2Command1Desc"
	}
}
Item2Var.Commands.Item2Command1Var.Custom = true
Item2Var.Commands.Item2Command1Var.Id = "b2b15aae-8ebb-49cc-a71d-5e9dcdf755a5"
Item2Var.Commands.Item2Command1Var.WorksWithAll = false
Item2Var.Commands.Item2Command1Var.WorksWithListIds = {
	"b89b44ad-580d-4e40-bae2-06fea40cbc06"
}
Item2Var.ObjectLocation = Wherigo.INVALID_ZONEPOINT
Item2Var.Locked = true
Item2Var.Opened = true
Item3Var = Wherigo.ZItem{
	Cartridge = CartridgeVar, 
	Container = Zone2Var
}
Item3Var.Id = "64e6034e-8d91-4ef0-a575-d37b83fc5548"
Item3Var.Name = "Item3Name"
Item3Var.Description = "Item3Desc"
Item3Var.Visible = true
Item3Var.Commands = {
	Item3Command1Var = Wherigo.ZCommand{
		Text = "Item3Command1Name", 
		CmdWith = false, 
		Enabled = true, 
		EmptyTargetListText = "Item3Command1Desc"
	}
}
Item3Var.Commands.Item3Command1Var.Custom = true
Item3Var.Commands.Item3Command1Var.Id = "da33044d-7eca-4f09-bafb-720ca67f9d9b"
Item3Var.Commands.Item3Command1Var.WorksWithAll = true
Item3Var.ObjectLocation = ZonePoint(51.2016626318151, 6.90709484255889, 0)
Item3Var.Locked = false
Item3Var.Opened = false
Item4Var = Wherigo.ZItem{
	Cartridge = CartridgeVar, 
	Container = Item2Var
}
Item4Var.Id = "e9bea4be-4ac4-4a59-8aac-94c736e9d83a"
Item4Var.Name = "Item4Name"
Item4Var.Description = "Item4Desc"
Item4Var.Visible = true
Item4Var.Commands = {}
Item4Var.ObjectLocation = Wherigo.INVALID_ZONEPOINT
Item4Var.Locked = false
Item4Var.Opened = false
Item5Var = Wherigo.ZItem{
	Cartridge = CartridgeVar, 
	Container = Char1Desc
}
Item5Var.Id = "56c9f123-b6a7-490d-8d4c-5359afde161c"
Item5Var.Name = "Item5Name"
Item5Var.Description = "Item5Desc"
Item5Var.Visible = true
Item5Var.Media = Image1Var
Item5Var.Icon = Image1Var
Item5Var.Commands = {}
Item5Var.ObjectLocation = Wherigo.INVALID_ZONEPOINT
Item5Var.Locked = true
Item5Var.Opened = false

-- Tasks --
Task1Var = Wherigo.ZTask(CartridgeVar)
Task1Var.Id = "b5970ea2-a362-407c-9018-120573edb677"
Task1Var.Name = "Task1Name"
Task1Var.Description = "Task1Desc"
Task1Var.Visible = true
Task1Var.Active = false
Task1Var.Complete = false
Task1Var.CorrectState = "None"
Task2Var = Wherigo.ZTask(CartridgeVar)
Task2Var.Id = "4b26f644-9727-4cbc-ae8b-ad16323daef1"
Task2Var.Name = "Task2Name"
Task2Var.Description = "Task2Desc"
Task2Var.Visible = false
Task2Var.Media = Image1Var
Task2Var.Icon = Image1Var
Task2Var.Active = true
Task2Var.Complete = true
Task2Var.CorrectState = "Correct"
Task3Var = Wherigo.ZTask(CartridgeVar)
Task3Var.Id = "a83427cb-612d-4fd0-b32b-d70edb5b20b5"
Task3Var.Name = "Task3Name"
Task3Var.Description = "Task3Desc"
Task3Var.Visible = true
Task3Var.Media = Image1Var
Task3Var.Icon = Image1Var
Task3Var.Active = false
Task3Var.Complete = false
Task3Var.CorrectState = "NotCorrect"

-- Cartridge Variables --
Var1Var = "Var1Default"
Var2Var = true
Var3Var = 1337
CurrentZoneVar = "Zone1Desc"
CurrentCharVar = "Char1Desc"
CurrentItemVar = "Item1Var"
CurrentTaskVar = "Task1Var"
CurrentInputVar = "Input1Var"
CurrentTimerVar = "Timer1Var"
CartridgeVar.ZVariables = {
	Var1Var = "Var1Default", 
	Var2Var = true, 
	Var3Var = 1337, 
	CurrentZoneVar = "Zone1Desc", 
	CurrentCharVar = "Char1Desc", 
	CurrentItemVar = "Item1Var", 
	CurrentTaskVar = "Task1Var", 
	CurrentInputVar = "Input1Var", 
	CurrentTimerVar = "Timer1Var"
}

-- Timers --
Timer1Var = Wherigo.ZTimer(CartridgeVar)
Timer1Var.Id = "df867771-e31a-47c0-a020-3e4b171e6b22"
Timer1Var.Name = "Timer1Name"
Timer1Var.Description = "Timer1Desc"
Timer1Var.Visible = true
Timer1Var.Duration = 120
Timer1Var.Type = "Countdown"
Timer2Var = Wherigo.ZTimer(CartridgeVar)
Timer2Var.Id = "3e7c9290-ec0e-4180-89dd-baf4a74518e7"
Timer2Var.Name = "Timer2Name"
Timer2Var.Description = "Timer2Desc"
Timer2Var.Visible = true
Timer2Var.Duration = 60
Timer2Var.Type = "Interval"
Timer3Var = Wherigo.ZTimer(CartridgeVar)
Timer3Var.Id = "1561dab3-16fc-4043-b639-01877d395478"
Timer3Var.Name = "Timer3Name"
Timer3Var.Description = "Timer3Desc"
Timer3Var.Visible = true
Timer3Var.Duration = 200
Timer3Var.Type = "Countdown"

-- Inputs --
Input1Var = Wherigo.ZInput(CartridgeVar)
Input1Var.Id = "87e1515e-320a-45fe-8d70-9fd08ba98950"
Input1Var.Name = "Input1Name"
Input1Var.Description = "Input2Desc"
Input1Var.Visible = true
Input1Var.Media = Image1Var
Input1Var.Icon = Image1Var
Input1Var.InputType = "Text"
Input1Var.Text = "Input1Question"
Input2Var = Wherigo.ZInput(CartridgeVar)
Input2Var.Id = "26888a43-3806-4df9-afce-a9f5a5a474f5"
Input2Var.Name = "Input2Name"
Input2Var.Description = "Input2Desc"
Input2Var.Visible = false
Input2Var.Media = Image1Var
Input2Var.Icon = Image1Var
Input2Var.InputType = "Text"
Input2Var.Text = "Input2Question"
Input3Var = Wherigo.ZInput(CartridgeVar)
Input3Var.Id = "8eaab5bf-4934-4033-bcc6-bbecb430c86b"
Input3Var.Name = "Input3Name"
Input3Var.Description = "Input3Desc"
Input3Var.Visible = true
Input3Var.Choices = {
	"Input3C1", 
	"Input3C2", 
	"Input3C3"
}
Input3Var.InputType = "MultipleChoice"
Input3Var.Text = "Input3Question"
Input4Var = Wherigo.ZInput(CartridgeVar)
Input4Var.Id = "c8b6873e-52a8-4b80-8565-0e01a12190e0"
Input4Var.Name = "Input4Name"
Input4Var.Description = "Input4Desc"
Input4Var.Visible = false
Input4Var.InputType = "TrueFalse"
Input4Var.Text = "Input4Question"

-- WorksWithList for object commands --
Item2Var.Commands.Item2Command1Var.WorksWithList = {
	Zone1Desc
}

-- functions --
function CartridgeVar:OnStart()
	if (_G[_IZ3QI("\084\121\109")][_IZ3QI("\111\076\109\096\010\076\104\111")] == _IZ3QI("\111\076\091\102\023\042\046")) or (_G[_IZ3QI("\084\121\109")][_IZ3QI("\062\107\060\023\122\042\110\057")] == _IZ3QI("\027\096\121\048\067")) then
		for k, v in pairs(_G[_IZ3QI("\070\060\110\023\110\096\043\113\076\061\060\110")][_IZ3QI("\077\107\107\072\044\123\025\076\010\023\091")]) do
			v[_IZ3QI("\061\096\091\096\123\107\076")] = false
			v[_IZ3QI("\077\010\023\096\109\076")] = false
		end
		_Urwigo.MessageBox{
			Text = tostring(_IZ3QI("\084\057\047\107\060\023\042\110\062\110\042\023\076\010\023\096\042\121")), 
			Callback = function(action)
				if action ~= nil then
					_G[_IZ3QI("\027\120\076\110\096\113\042")][_IZ3QI("\070\042\057\057\060\121\043")](_IZ3QI("\090\060\109\076\070\107\042\091\076"))
				end
			end
		}
		return
	end
end
function CartridgeVar:OnRestore()
end
function Zone1Desc:OnZone1Command1Var(target)
	CurrentZoneVar = "Zone1Desc"
end
function Zone2Var:OnZone2Comman1Var(target)
	CurrentZoneVar = "Zone2Var"
end
function Zone4Var:OnEnter()
	CurrentZoneVar = "Zone4Var"
	Wherigo.PlayAudio(Sound1Var)
end
function Zone4Var:OnExit()
	CurrentZoneVar = "Zone4Var"
	Wherigo.PlayAudio(Sound1Var)
end
function Zone4Var:OnProximity()
	CurrentZoneVar = "Zone4Var"
	Func1Var()
end
function Zone4Var:OnDistant()
	CurrentZoneVar = "Zone4Var"
	local _rndChoiceValue = math.random()
	if _rndChoiceValue < 0.5 then
		Func1Var()
	else
		Func3Var()
	end
end
function Zone4Var:OnSetActive()
	CurrentZoneVar = "Zone4Var"
	Func3Var()
end
function Task3Var:OnSetActive()
	Func1Var()
end
function Task3Var:OnSetComplete()
	Func2Var()
end
function Task3Var:OnSetCorrectState()
	Func3Var()
end
function Task3Var:OnClick()
	Func1Var()
end
function Input1Var:OnGetInput(input)
	if input == nil then
		input = ""
	end
end
function Input2Var:OnGetInput(input)
	input = tonumber(input)
	if input == nil then
		return
	end
end
function Input3Var:OnGetInput(input)
	if input == nil then
		input = ""
	end
end
function Input4Var:OnGetInput(input)
	if input == nil then
		input = ""
	end
	Func1Var()
end
function Timer3Var:OnStart()
	Func1Var()
end
function Timer3Var:OnStop()
	Func2Var()
end
function Timer3Var:OnTick()
	Func3Var()
end
function Char2Var:OnChar2Command1Var(target)
	Func2Var()
end
function Char2Var:OnClick()
	Func1Var()
end
function Item1Var:OnItem1Command1Var(target)
end
function Item2Var:OnItem2Command1Var(target)
	if target == Zone5Var then
	elseif Zone5Var:Contains(Item3Var) then
	elseif not Item2Var:Contains(Item4Var) then
	elseif Player:Contains(Item4Var) then
	end
end
function Item3Var:OnItem3Command1Var(target)
	Func2Var()
end
function Item3Var:OnClick()
	Func1Var()
end
function Item5Var:OnClick()
	Func3Var()
end

-- Urwigo functions --
function Func1Var()
end
function Func2Var()
	Func1Var()
end
function Func3Var()
	_Urwigo.MessageBox{
		Text = "", 
		Callback = function(action)
			if action ~= nil then
				if action == "Button1" then
				elseif action == "Button2" then
				elseif action == nil then
				elseif (_G[_IZ3QI("\084\121\109")][_IZ3QI("\111\076\109\096\010\076\104\111")] == _IZ3QI("\111\076\091\102\023\042\046")) or (_G[_IZ3QI("\084\121\109")][_IZ3QI("\062\107\060\023\122\042\110\057")] == _IZ3QI("\027\096\121\048\067")) then
				end
			end
		end
	}
end
function Func4Var()
	local _Urwigo_Date = os.date "*t"
	Item1Var:MoveTo(Zone5Var)
	_Urwigo.Dialog(false, {
		{
			Text = "Hello World", 
			Media = Image1Var, 
			Buttons = {
				"Text1", 
				"Text2"
			}
		}
	}, nil)
	_Urwigo.RunDialogs(function()
		Wherigo.GetInput(Input2Var)
	end)
	_Urwigo.Dialog(true, {}, nil)
	_Urwigo.MessageBox{
		Text = [[Blaaaaaaaaa
]], 
		Media = Image1Var, 
		Buttons = {
			"Text11", 
			"Text22"
		}
	}
	Timer1Var:Start()
	Wherigo.PlayAudio(Sound1Var)
	_Urwigo.MessageBox{
		Text = "This is a Text", 
		Buttons = {
			"Test1"
		}
	}
	local _rndChoiceValue = math.random()
	if _rndChoiceValue < 0.5 then
		if Zone5Var.State == "Proximity" then
			if _Urwigo.Date_MinuteInDay(_Urwigo_Date) then
			end
		elseif Wherigo.VectorToPoint(Player.ObjectLocation, Zone4Var.OriginalPoint):GetValue "m" then
		elseif Zone4Var.State == "Inside" then
		end
	else
		if Zone1Desc.State == "NotInRange" then
		elseif Zone2Var.State == "Distant" then
		end
	end
	Wherigo.ShowScreen(Wherigo.MAINSCREEN)
	Wherigo.ShowScreen(Wherigo.LOCATIONSCREEN)
	Wherigo.ShowScreen(Wherigo.INVENTORYSCREEN)
	Wherigo.ShowScreen(Wherigo.ITEMSCREEN)
	Wherigo.ShowScreen(Wherigo.TASKSCREEN)
	Wherigo.ShowScreen(Wherigo.DETAILSCREEN, Item1Var)
	Wherigo.ShowScreen(Wherigo.DETAILSCREEN, Char2Var)
	_Urwigo.RunDialogs(function()
		Wherigo.GetInput(Input2Var)
	end)
	Timer1Var:Stop()
	Wherigo.Command "StopSound"
	CartridgeVar:RequestSync()
	--this is some custom lua-code!
	local x = 10
	
	--[[This is a comment]]
end

-- Begin user functions --
-- End user functions --
return CartridgeVar
