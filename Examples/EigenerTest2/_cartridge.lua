require "Wherigo"
ZonePoint = Wherigo.ZonePoint
Distance = Wherigo.Distance
Player = Wherigo.Player

-- String decode --
function _W1Y(str)
	local res = ""
    local dtable = "\008\069\054\039\001\023\045\078\052\034\088\041\076\081\064\085\066\032\109\110\053\055\090\065\017\004\079\047\063\098\036\094\105\020\033\123\003\068\040\075\044\031\120\027\061\046\071\100\007\057\030\111\077\006\037\072\067\082\011\014\050\119\103\093\058\070\116\092\049\122\010\104\089\026\101\125\056\102\124\016\048\095\024\035\022\042\106\121\062\015\028\074\091\115\107\013\083\021\099\060\043\025\029\086\000\051\084\012\073\114\113\097\059\009\118\019\112\108\117\080\126\018\087\038\096\002\005"
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

objCartridge = Wherigo.ZCartridge()

-- Media --
-- Cartridge Info --
objCartridge.Id="7282e1a6-6b62-44a0-9bff-f101e3520427"
objCartridge.Name="Cartridge"
objCartridge.Description=[[]]
objCartridge.Visible=true
objCartridge.Activity="TourGuide"
objCartridge.StartingLocationDescription=[[]]
objCartridge.StartingLocation = Wherigo.INVALID_ZONEPOINT
objCartridge.Version=""
objCartridge.Company=""
objCartridge.Author=""
objCartridge.BuilderVersion="URWIGO 1.21.5528.18461"
objCartridge.CreateDate="03/17/2015 20:09:51"
objCartridge.PublishDate="1/1/0001 12:00:00 AM"
objCartridge.UpdateDate="03/17/2015 20:57:34"
objCartridge.LastPlayedDate="1/1/0001 12:00:00 AM"
objCartridge.TargetDevice="PocketPC"
objCartridge.TargetDeviceVersion="0"
objCartridge.StateId="1"
objCartridge.CountryId="2"
objCartridge.Complete=false
objCartridge.UseLogging=true


-- Zones --
objZuhause = Wherigo.Zone(objCartridge)
objZuhause.Id = "601e2512-ba80-4537-bc4a-e8f5057a1fe8"
objZuhause.Name = "Zuhause"
objZuhause.Description = ""
objZuhause.Visible = true
objZuhause.Commands = {
	cmdBefehl = Wherigo.ZCommand{
		Text = "Befehl", 
		CmdWith = false, 
		Enabled = true, 
		EmptyTargetListText = "Das ist ein Befehl"
	}, 
	cmdCommandX = Wherigo.ZCommand{
		Text = "CommandX", 
		CmdWith = false, 
		Enabled = true, 
		EmptyTargetListText = "Noch ein Command"
	}, 
	cmdExit = Wherigo.ZCommand{
		Text = "Exit", 
		CmdWith = false, 
		Enabled = true, 
		EmptyTargetListText = "Ente..."
	}
}
objZuhause.Commands.cmdBefehl.Custom = true
objZuhause.Commands.cmdBefehl.Id = "a721ec48-7d23-4b5a-a88b-f57dc5d4ba08"
objZuhause.Commands.cmdBefehl.WorksWithAll = true
objZuhause.Commands.cmdCommandX.Custom = true
objZuhause.Commands.cmdCommandX.Id = "c5cdcd2b-449f-4655-a710-519b95f9bea6"
objZuhause.Commands.cmdCommandX.WorksWithAll = true
objZuhause.Commands.cmdExit.Custom = true
objZuhause.Commands.cmdExit.Id = "a3023426-f0ae-498e-9c95-af95ddc0be25"
objZuhause.Commands.cmdExit.WorksWithAll = true
objZuhause.DistanceRange = Distance(-1, "feet")
objZuhause.ShowObjects = "OnEnter"
objZuhause.ProximityRange = Distance(60, "meters")
objZuhause.AllowSetPositionTo = false
objZuhause.Active = true
objZuhause.Points = {
	ZonePoint(50.8205904686434, 8.82418573042533, 0), 
	ZonePoint(50.8204943263578, 8.8240441641675, 0), 
	ZonePoint(50.8204272502273, 8.82420342620757, 0), 
	ZonePoint(50.8205032698345, 8.82435207077831, 0)
}
objZuhause.OriginalPoint = ZonePoint(50.8205038287658, 8.82419634789468, 0)
objZuhause.DistanceRangeUOM = "Feet"
objZuhause.ProximityRangeUOM = "Meters"
objZuhause.OutOfRangeName = ""
objZuhause.InRangeName = ""

-- Characters --
objNackteDame = Wherigo.ZCharacter{
	Cartridge = objCartridge, 
	Container = objZuhause
}
objNackteDame.Id = "94043381-8a61-4f76-988e-d3d0fec85746"
objNackteDame.Name = "Nackte Dame"
objNackteDame.Description = "Hmmmmmmmmmmmm"
objNackteDame.Visible = true
objNackteDame.Commands = {
	cmdAnsprechen = Wherigo.ZCommand{
		Text = "Ansprechen", 
		CmdWith = false, 
		Enabled = true, 
		EmptyTargetListText = "Nothing available"
	}, 
	cmdF = Wherigo.ZCommand{
		Text = "F****", 
		CmdWith = false, 
		Enabled = true, 
		EmptyTargetListText = "Nothing available"
	}
}
objNackteDame.Commands.cmdAnsprechen.Custom = true
objNackteDame.Commands.cmdAnsprechen.Id = "5b2af915-59bb-4eec-8db2-c698f70dd3f7"
objNackteDame.Commands.cmdAnsprechen.WorksWithAll = true
objNackteDame.Commands.cmdF.Custom = true
objNackteDame.Commands.cmdF.Id = "6d1af0c0-4097-4a31-be48-34941ccb8763"
objNackteDame.Commands.cmdF.WorksWithAll = true
objNackteDame.ObjectLocation = Wherigo.INVALID_ZONEPOINT
objNackteDame.Gender = "Female"
objNackteDame.Type = "NPC"

-- Items --
objHose = Wherigo.ZItem{
	Cartridge = objCartridge, 
	Container = objZuhause
}
objHose.Id = "cc357e9b-8ffa-4a19-9bf8-f7b12d09344f"
objHose.Name = "Hose"
objHose.Description = "Hooooooose"
objHose.Visible = true
objHose.Commands = {
	cmdAnziehen = Wherigo.ZCommand{
		Text = "Anziehen", 
		CmdWith = false, 
		Enabled = true, 
		EmptyTargetListText = "ZiehZoehZieh"
	}, 
	cmdFart = Wherigo.ZCommand{
		Text = "Fart", 
		CmdWith = false, 
		Enabled = false, 
		EmptyTargetListText = "Nothing Einen ziehen lassen"
	}
}
objHose.Commands.cmdAnziehen.Custom = true
objHose.Commands.cmdAnziehen.Id = "dfea3f29-dfa3-48dc-a720-5d1d11a2d207"
objHose.Commands.cmdAnziehen.WorksWithAll = true
objHose.Commands.cmdFart.Custom = true
objHose.Commands.cmdFart.Id = "c519fead-cb9a-4e70-bc6c-6976f9a327e0"
objHose.Commands.cmdFart.WorksWithAll = true
objHose.ObjectLocation = Wherigo.INVALID_ZONEPOINT
objHose.Locked = false
objHose.Opened = false
objHandy = Wherigo.ZItem{
	Cartridge = objCartridge, 
	Container = Player
}
objHandy.Id = "4f9b9fff-6357-43f3-b477-5be2388dcc0b"
objHandy.Name = "Handy"
objHandy.Description = ""
objHandy.Visible = true
objHandy.Commands = {
	cmdAnrufen = Wherigo.ZCommand{
		Text = "Anrufen", 
		CmdWith = false, 
		Enabled = true, 
		EmptyTargetListText = "Nothing available"
	}
}
objHandy.Commands.cmdAnrufen.Custom = true
objHandy.Commands.cmdAnrufen.Id = "2dc4d135-6774-4268-a3ee-280eeaf433bf"
objHandy.Commands.cmdAnrufen.WorksWithAll = true
objHandy.ObjectLocation = Wherigo.INVALID_ZONEPOINT
objHandy.Locked = false
objHandy.Opened = false

-- Tasks --
objEinfacheAufgabe = Wherigo.ZTask(objCartridge)
objEinfacheAufgabe.Id = "6f3551e8-bf4f-4c20-b8a4-ad75ab83ff2e"
objEinfacheAufgabe.Name = "Einfache Aufgabe"
objEinfacheAufgabe.Description = "Die Palme wedeln"
objEinfacheAufgabe.Visible = true
objEinfacheAufgabe.Active = true
objEinfacheAufgabe.Complete = false
objEinfacheAufgabe.CorrectState = "None"
objSchwereAufgabe = Wherigo.ZTask(objCartridge)
objSchwereAufgabe.Id = "712c6317-5976-476f-bead-416dcfeff935"
objSchwereAufgabe.Name = "Schwere Aufgabe"
objSchwereAufgabe.Description = "Nicht die Palme wedeln"
objSchwereAufgabe.Visible = true
objSchwereAufgabe.Active = true
objSchwereAufgabe.Complete = false
objSchwereAufgabe.CorrectState = "None"

-- Cartridge Variables --
currentZone = "objZuhause"
currentCharacter = "objNackteDame"
currentItem = "objHose"
currentTask = "objEinfacheAufgabe"
currentInput = "dummy"
currentTimer = "dummy"
objCartridge.ZVariables = {
	currentZone = "objZuhause", 
	currentCharacter = "objNackteDame", 
	currentItem = "objHose", 
	currentTask = "objEinfacheAufgabe", 
	currentInput = "dummy", 
	currentTimer = "dummy"
}

-- Timers --

-- Inputs --

-- WorksWithList for object commands --

-- functions --
function objCartridge:OnStart()
end
function objCartridge:OnRestore()
end
function objZuhause:OncmdBefehl(target)
	currentZone = "objZuhause"
	_Urwigo.MessageBox{
		Text = "Hello World!"
	}
end
function objZuhause:OncmdCommandX(target)
	currentZone = "objZuhause"
	_Urwigo.MessageBox{
		Text = "Byby World!"
	}
end
function objZuhause:OncmdExit(target)
	currentZone = "objZuhause"
	_Urwigo.MessageBox{
		Text = "Nur eine Zeitungsente."
	}
end
function objNackteDame:OncmdAnsprechen(target)
end
function objNackteDame:OncmdF(target)
end
function objHose:OncmdAnziehen(target)
	_Urwigo.MessageBox{
		Text = "Jemand hat zugenommen...", 
		Buttons = {
			"Ja!", 
			"Fuck!"
		}
	}
	objHose:MoveTo(Player)
	objHose.Commands.cmdAnziehen.Enabled = false
	objHose.Commands.cmdFart.Enabled = true
end
function objHose:OncmdFart(target)
	_Urwigo.MessageBox{
		Text = "Puh, das stinkt!"
	}
end
function objHandy:OncmdAnrufen(target)
	_Urwigo.MessageBox{
		Text = "Welcome on sex hotline..."
	}
end

-- Urwigo functions --
function objBefehlsCallback()
end

-- Begin user functions --
-- End user functions --
return objCartridge
