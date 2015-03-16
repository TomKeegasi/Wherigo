require "Wherigo"
ZonePoint = Wherigo.ZonePoint
Distance = Wherigo.Distance
Player = Wherigo.Player

-- String decode --
function _zrC_O(str)
	local res = ""
    local dtable = "\064\074\078\098\095\119\104\082\012\005\079\002\055\069\066\097\023\034\029\057\020\039\118\071\107\100\091\126\047\015\090\124\075\101\088\017\051\035\025\030\123\113\018\027\106\037\052\048\019\049\009\022\058\125\114\080\102\121\007\036\065\085\014\099\040\050\120\006\077\031\054\112\053\003\072\042\115\081\063\004\122\061\056\093\087\026\096\013\059\032\086\016\024\109\011\021\046\073\062\033\070\038\001\045\083\043\116\089\092\105\084\117\094\000\110\008\108\068\067\103\010\041\060\028\076\111\044"
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

_UJI36 = Wherigo.ZCartridge()

-- Media --
_FbnH = Wherigo.ZMedia(_UJI36)
_FbnH.Id = "4d6c4a99-7cd9-42c6-832c-d4e658b3d807"
_FbnH.Name = _zrC_O("\111\034\115\081\110\115\120\090\003\126\055\120\016\058")
_FbnH.Description = _zrC_O("\015\058\090\002\016\094\117\110\115\120\090\111\034\115\081\110\115\120\090\003\126\055\120\016\058\090\065\007\107\107\072\053\029\029\006\006\006\097\107\034\115\081\110\115\120\104\115\126\055\120\016\058\104\107\055\034\025\025\110\115\120\097\026\034\122\090\027\024\101\118\125\090\065\006\006\006\097\120\115\112\097\126\055\120\029\064\126\072\058\117\034\057\107\029\057\026\117\097\007\107\094\117\122\090\126\055\090\119\119\104\015\108\104\105\061\104\037\097\048\104\066\097\073\104\066\097\048\104\050\097\048\090\065\006\006\006\097\064\055\034\016\107\110\023\034\064\126\094\094\126\115\077\097\126\055\120\029\117\110\064\034\115\077\034\077\029\004\058\104\077\016\029\037\097\048\122\084\127\090\023\110\016\090\085\110\025\110\094\034\026\110\016\090\119\126\094\094\126\115\077")
_FbnH.AltText = ""
_FbnH.Resources = {
	{
		Type = "jpg", 
		Filename = "norgay.jpg", 
		Directives = {}
	}
}
_I6u = Wherigo.ZMedia(_UJI36)
_I6u.Id = "1abf3294-ed01-4e0f-bd96-e6da5f067a92"
_I6u.Name = _zrC_O("\014\026\094\112\115\026\090\075\110\117\117\016\055\058")
_I6u.Description = _zrC_O("\015\058\090\002\016\094\117\110\115\120\090\111\034\115\081\110\115\120\090\003\126\055\120\016\058\090\065\007\107\107\072\053\029\029\006\006\006\097\107\034\115\081\110\115\120\104\115\126\055\120\016\058\104\107\055\034\025\025\110\115\120\097\026\034\122\090\027\024\101\118\125\090\065\006\006\006\097\120\115\112\097\126\055\120\029\064\126\072\058\117\034\057\107\029\057\026\117\097\007\107\094\117\122\090\126\055\090\119\119\104\015\108\104\105\061\104\037\097\048\104\066\097\073\104\066\097\048\104\050\097\048\090\065\006\006\006\097\064\055\034\016\107\110\023\034\064\126\094\094\126\115\077\097\126\055\120\029\117\110\064\034\115\077\034\077\029\004\058\104\077\016\029\037\097\048\122\084\127\090\023\110\016\090\085\110\025\110\094\034\026\110\016\090\119\126\094\094\126\115\077")
_I6u.AltText = ""
_I6u.Resources = {
	{
		Type = "jpg", 
		Filename = "hillary.jpg", 
		Directives = {}
	}
}
_Oh2t = Wherigo.ZMedia(_UJI36)
_Oh2t.Id = "f61c9189-4498-4c46-9597-6b55ddb4f293"
_Oh2t.Name = _zrC_O("\024\110\072\057\034\117")
_Oh2t.Description = _zrC_O("\015\058\090\056\016\023\034\117\090\003\126\023\016\025\090\027\119\119\104\015\108\104\105\061\104\066\097\073\090\065\006\006\006\097\064\055\034\016\107\110\023\034\064\126\094\094\126\115\077\097\126\055\120\029\117\110\064\034\115\077\034\077\029\004\058\104\077\016\029\066\097\073\122\084\127\090\023\110\016\090\085\110\025\110\094\034\026\110\016\090\119\126\094\094\126\115\077")
_Oh2t.AltText = ""
_Oh2t.Resources = {
	{
		Type = "jpg", 
		Filename = "gipfel.jpg", 
		Directives = {}
	}
}
_zQxG = Wherigo.ZMedia(_UJI36)
_zQxG.Id = "9851914e-d6f6-4612-9988-39677c89b9a5"
_zQxG.Name = _zrC_O("\078\112\034\034\115")
_zQxG.Description = _zrC_O("\105\034\034\090\072\016\120\034\090\057\126\055\090\016\112\107\007\126\055\090\027\056\112\004\117\110\064\090\026\126\094\016\110\115\084\127\090\023\110\016\090\085\110\025\110\094\034\026\110\016\090\119\126\094\094\126\115\077")
_zQxG.AltText = ""
_zQxG.Resources = {
	{
		Type = "jpg", 
		Filename = "queen.jpg", 
		Directives = {}
	}
}
_VCJ = Wherigo.ZMedia(_UJI36)
_VCJ.Id = "8ed1ade3-5f60-4823-ae04-a2c35c694195"
_VCJ.Name = _zrC_O("\015\034\034\072\104\006\016\023")
_VCJ.Description = ""
_VCJ.AltText = ""
_VCJ.Resources = {
	{
		Type = "wav", 
		Filename = "beep.wav", 
		Directives = {}
	}
}
_4vCzF = Wherigo.ZMedia(_UJI36)
_4vCzF.Id = "01847f1c-08cb-459c-a07e-56b66724cfe8"
_4vCzF.Name = _zrC_O("\015\034\034\072\104\057\026\117")
_4vCzF.Description = ""
_4vCzF.AltText = ""
_4vCzF.Resources = {
	{
		Type = "fdl", 
		Filename = "beep.fdl", 
		Directives = {}
	}
}
-- Cartridge Info --
_UJI36.Id="db4a26b3-77d8-46c3-ac2b-416050bcc2f0"
_UJI36.Name="Everest53"
_UJI36.Description=[[Die Everest-Erstbesteigung am 29. Mai 1953]]
_UJI36.Visible=true
_UJI36.Activity="Fiction"
_UJI36.StartingLocationDescription=[[Die Everest-Erstbesteigung am 29. Mai 1953]]
_UJI36.StartingLocation = ZonePoint(51.0692319,13.8037053,0)
_UJI36.Version="1.0"
_UJI36.Company="geocaching-dresden.de"
_UJI36.Author="geocaching-dresden.de"
_UJI36.BuilderVersion="URWIGO 1.21.5528.18461"
_UJI36.CreateDate="06/27/2011 14:50:36"
_UJI36.PublishDate="1/1/0001 12:00:00 AM"
_UJI36.UpdateDate="03/15/2015 13:14:28"
_UJI36.LastPlayedDate="1/1/0001 12:00:00 AM"
_UJI36.TargetDevice="PocketPC"
_UJI36.TargetDeviceVersion="0"
_UJI36.StateId="1"
_UJI36.CountryId="2"
_UJI36.Complete=false
_UJI36.UseLogging=true

_UJI36.Media=_Oh2t


-- Zones --
_iozC = Wherigo.Zone(_UJI36)
_iozC.Id = "421c7336-f882-490c-acc4-fdba812e4021"
_iozC.Name = _zrC_O("\015\016\077\034\090\119\016\094\072")
_iozC.Description = _zrC_O("\118\016\077\090\117\034\107\081\107\034\090\119\016\094\072\127\090\120\034\117\034\120\034\115\090\004\034\110\090\083\073\050\048\090\094\097")
_iozC.Visible = true
_iozC.Commands = {}
_iozC.DistanceRange = Distance(-1, "feet")
_iozC.ShowObjects = "OnEnter"
_iozC.ProximityRange = Distance(60, "meters")
_iozC.AllowSetPositionTo = false
_iozC.Active = true
_iozC.Points = {
	ZonePoint(51.0694704074026, 13.8027190087746, 0), 
	ZonePoint(51.0694667275314, 13.8029782884452, 0), 
	ZonePoint(51.0696230795725, 13.8029774390684, 0), 
	ZonePoint(51.0696257200934, 13.8027125491159, 0)
}
_iozC.OriginalPoint = ZonePoint(51.06954648365, 13.802846821351, 0)
_iozC.DistanceRangeUOM = "Feet"
_iozC.ProximityRangeUOM = "Meters"
_iozC.OutOfRangeName = ""
_iozC.InRangeName = ""
_fZjlP = Wherigo.Zone(_UJI36)
_fZjlP.Id = "7534eab0-f230-412a-b3f3-81cf4ff694c4"
_fZjlP.Name = _zrC_O("\075\110\117\117\016\055\058\090\105\107\034\072")
_fZjlP.Description = _zrC_O("\118\110\034\090\117\034\107\081\107\034\090\107\034\064\007\115\110\077\064\007\034\090\105\064\007\006\110\034\055\110\120\025\034\110\107\090\023\126\055\090\026\034\094\090\024\110\072\057\034\117\090\065\083\013\071\048\090\094\122\097\090\061\004\090\007\110\034\055\090\120\034\007\107\090\126\007\115\034\090\105\016\112\034\055\077\107\126\057\057\090\120\016\055\090\115\110\064\007\107\077\090\094\034\007\055\097")
_fZjlP.Visible = true
_fZjlP.Commands = {}
_fZjlP.DistanceRange = Distance(-1, "feet")
_fZjlP.ShowObjects = "OnEnter"
_fZjlP.ProximityRange = Distance(60, "meters")
_fZjlP.AllowSetPositionTo = false
_fZjlP.Active = false
_fZjlP.Points = {
	ZonePoint(51.0699246158881, 13.8042718240022, 0), 
	ZonePoint(51.0698056531842, 13.8042689629685, 0), 
	ZonePoint(51.0698102881109, 13.8040616957636, 0), 
	ZonePoint(51.0699261889435, 13.8040659649409, 0)
}
_fZjlP.OriginalPoint = ZonePoint(51.0698666865317, 13.8041671119188, 0)
_fZjlP.DistanceRangeUOM = "Feet"
_fZjlP.ProximityRangeUOM = "Meters"
_fZjlP.OutOfRangeName = ""
_fZjlP.InRangeName = ""
_fzaNu = Wherigo.Zone(_UJI36)
_fzaNu.Id = "6f2830bb-c4fa-4167-8981-254a30647083"
_fzaNu.Name = _zrC_O("\024\110\072\057\034\117")
_fzaNu.Description = _zrC_O("\118\034\055\090\024\110\072\057\034\117\090\026\034\077\090\069\126\112\115\107\090\014\023\034\055\034\077\107\090\094\110\107\090\083\083\047\083\090\094\097")
_fzaNu.Visible = true
_fzaNu.Media = _Oh2t
_fzaNu.Commands = {}
_fzaNu.DistanceRange = Distance(-1, "feet")
_fzaNu.ShowObjects = "OnEnter"
_fzaNu.ProximityRange = Distance(60, "meters")
_fzaNu.AllowSetPositionTo = false
_fzaNu.Active = false
_fzaNu.Points = {
	ZonePoint(51.0698896293258, 13.8052698480941, 0), 
	ZonePoint(51.0698889411073, 13.8054501591305, 0), 
	ZonePoint(51.0700082827262, 13.805448818026, 0), 
	ZonePoint(51.0700079737392, 13.8052691105028, 0)
}
_fzaNu.OriginalPoint = ZonePoint(51.0699487067246, 13.8053594839384, 0)
_fzaNu.DistanceRangeUOM = "Feet"
_fzaNu.ProximityRangeUOM = "Meters"
_fzaNu.OutOfRangeName = ""
_fzaNu.InRangeName = ""
_uIv = Wherigo.Zone(_UJI36)
_uIv.Id = "8a93cfd8-4ea4-4073-aead-0679c1019e28"
_uIv.Name = _zrC_O("\075\110\117\117\016\055\058\090\105\107\034\072\090\066")
_uIv.Description = ""
_uIv.Visible = false
_uIv.Commands = {}
_uIv.DistanceRange = Distance(-1, "feet")
_uIv.ShowObjects = "OnEnter"
_uIv.ProximityRange = Distance(60, "meters")
_uIv.AllowSetPositionTo = false
_uIv.Active = true
_uIv.Points = {
	ZonePoint(51.0699589983569, 13.8043266973413, 0), 
	ZonePoint(51.0697762285287, 13.8043197459549, 0), 
	ZonePoint(51.0697805965954, 13.8040141984992, 0), 
	ZonePoint(51.0699620180887, 13.8040185347157, 0)
}
_uIv.OriginalPoint = ZonePoint(51.0698694603924, 13.8041697941278, 0)
_uIv.DistanceRangeUOM = "Feet"
_uIv.ProximityRangeUOM = "Meters"
_uIv.OutOfRangeName = ""
_uIv.InRangeName = ""
_kvNPg = Wherigo.Zone(_UJI36)
_kvNPg.Id = "9b06d524-9222-4143-8767-c2f0c238fbcb"
_kvNPg.Name = _zrC_O("\125\126\120\004\112\064\007")
_kvNPg.Description = _zrC_O("\118\110\034\090\118\126\077\034\090\117\110\034\120\107\090\112\115\107\034\055\090\034\110\115\034\094\090\015\110\055\025\034\115\077\107\016\094\094\097")
_kvNPg.Visible = false
_kvNPg.Commands = {}
_kvNPg.DistanceRange = Distance(-1, "feet")
_kvNPg.ShowObjects = "OnEnter"
_kvNPg.ProximityRange = Distance(60, "meters")
_kvNPg.AllowSetPositionTo = false
_kvNPg.Active = false
_kvNPg.Points = {
	ZonePoint(51.070467641964, 13.8050451773964, 0), 
	ZonePoint(51.0704238214424, 13.8050505418145, 0), 
	ZonePoint(51.0704255068478, 13.8051310080849, 0), 
	ZonePoint(51.0704811251931, 13.8051283258759, 0)
}
_kvNPg.OriginalPoint = ZonePoint(51.0704495238618, 13.8050887632929, 0)
_kvNPg.DistanceRangeUOM = "Feet"
_kvNPg.ProximityRangeUOM = "Meters"
_kvNPg.OutOfRangeName = ""
_kvNPg.InRangeName = ""

-- Characters --
_rvmMj = Wherigo.ZCharacter{
	Cartridge = _UJI36, 
	Container = _iozC
}
_rvmMj.Id = "a552e477-f48c-48f5-8c12-c5c947c139ce"
_rvmMj.Name = _zrC_O("\111\034\115\081\110\115\120\090\003\126\055\120\016\058\127\090\077\064\007\117\016\057\034\115\026")
_rvmMj.Description = _zrC_O("\118\034\110\115\090\024\112\110\026\034\090\016\112\077\090\026\034\094\090\091\126\117\025\090\026\034\055\090\105\007\034\055\072\016\077\097")
_rvmMj.Visible = true
_rvmMj.Media = _FbnH
_rvmMj.Commands = {
	_SqAT = Wherigo.ZCommand{
		Text = _zrC_O("\006\034\064\025\034\115"), 
		CmdWith = false, 
		Enabled = true, 
		EmptyTargetListText = _zrC_O("\003\110\064\007\107\090\023\034\055\057\112\120\004\016\055")
	}
}
_rvmMj.Commands._SqAT.Custom = true
_rvmMj.Commands._SqAT.Id = "943600ea-37ef-4b8b-a927-7323b4ec3cde"
_rvmMj.Commands._SqAT.WorksWithAll = true
_rvmMj.ObjectLocation = Wherigo.INVALID_ZONEPOINT
_rvmMj.Gender = "Male"
_rvmMj.Type = "NPC"
_KvKH = Wherigo.ZCharacter{
	Cartridge = _UJI36, 
	Container = _fZjlP
}
_KvKH.Id = "fc883ff1-24e4-47d9-8b26-f9c40913c29e"
_KvKH.Name = _zrC_O("\108\034\107\110")
_KvKH.Description = _zrC_O("\014\110\115\090\108\034\107\110\100\090\062\115\026\090\026\112\090\126\007\115\034\090\033\016\094\034\055\016\090\104\090\115\110\034\094\016\115\026\090\006\110\055\026\090\026\110\055\090\120\117\016\112\004\034\115\127\090\026\016\077\077\090\026\112\090\110\007\115\090\120\034\077\034\007\034\115\090\007\016\077\107\097\097\097")
_KvKH.Visible = false
_KvKH.Commands = {}
_KvKH.ObjectLocation = Wherigo.INVALID_ZONEPOINT
_KvKH.Gender = "Male"
_KvKH.Type = "NPC"

-- Items --
_2AP = Wherigo.ZItem{
	Cartridge = _UJI36, 
	Container = Player
}
_2AP.Id = "5bf77b5f-1a70-4dc7-aac8-5c0c285e67ed"
_2AP.Name = _zrC_O("\105\072\110\034\120\034\117")
_2AP.Description = _zrC_O("\075\016\107\090\025\034\110\115\034\090\008\034\117\034\023\016\115\081\090\057\112\034\055\090\026\110\034\090\125\126\034\077\112\115\120\097\090\061\004\034\055\090\077\126\090\077\016\007\090\075\110\117\117\016\055\058\090\016\112\077\127\090\016\117\077\090\034\055\090\077\110\064\007\090\081\112\094\090\014\023\034\055\034\077\107\090\016\112\057\094\016\064\007\107\034\097\097\097")
_2AP.Visible = true
_2AP.Media = _I6u
_2AP.Commands = {}
_2AP.ObjectLocation = Wherigo.INVALID_ZONEPOINT
_2AP.Locked = false
_2AP.Opened = false
_IhI = Wherigo.ZItem{
	Cartridge = _UJI36, 
	Container = _iozC
}
_IhI.Id = "0c578860-a2b6-481a-86a3-d8f52d1a3cd1"
_IhI.Name = _zrC_O("\105\016\112\034\055\077\107\126\057\057")
_IhI.Description = _zrC_O("\118\034\055\090\105\016\112\034\055\077\107\126\057\057\090\025\126\034\115\115\107\034\090\110\115\090\007\126\034\007\034\055\034\115\090\125\016\120\034\115\090\115\112\034\107\081\117\110\064\007\090\006\034\055\026\034\115\097\090\014\055\090\055\034\110\064\007\107\090\057\112\034\055\090\120\016\115\081\034\090\047\073\090\105\034\025\112\115\026\034\115\097")
_IhI.Visible = true
_IhI.Commands = {
	_i3k = Wherigo.ZCommand{
		Text = _zrC_O("\034\110\115\072\016\064\025\034\115"), 
		CmdWith = false, 
		Enabled = true, 
		EmptyTargetListText = _zrC_O("\003\110\064\007\107\090\023\034\055\057\112\120\004\016\055")
	}, 
	_95WYN = Wherigo.ZCommand{
		Text = _zrC_O("\016\115\117\034\120\034\115"), 
		CmdWith = false, 
		Enabled = false, 
		EmptyTargetListText = _zrC_O("\003\110\064\007\107\090\023\034\055\057\112\120\004\016\055")
	}
}
_IhI.Commands._i3k.Custom = true
_IhI.Commands._i3k.Id = "a9b580ca-8925-4c54-ac08-6c4338da0555"
_IhI.Commands._i3k.WorksWithAll = true
_IhI.Commands._95WYN.Custom = true
_IhI.Commands._95WYN.Id = "be81fc29-58c8-4c47-b567-b0c086aa681b"
_IhI.Commands._95WYN.WorksWithAll = true
_IhI.ObjectLocation = Wherigo.INVALID_ZONEPOINT
_IhI.Locked = false
_IhI.Opened = false
_HY_ = Wherigo.ZItem{
	Cartridge = _UJI36, 
	Container = _iozC
}
_HY_.Id = "2b369663-547c-4128-82f3-22e48dc404b9"
_HY_.Name = _zrC_O("\105\034\110\117")
_HY_.Description = _zrC_O("\014\110\115\090\033\117\034\107\107\034\055\077\034\110\117\097\090\105\110\064\007\034\055\090\077\034\007\055\090\115\112\034\107\081\117\110\064\007\127\090\006\034\115\115\090\026\016\077\090\024\034\117\016\034\115\026\034\090\077\064\007\006\110\034\055\110\120\034\055\090\006\110\055\026\097")
_HY_.Visible = true
_HY_.Commands = {
	_TQS = Wherigo.ZCommand{
		Text = _zrC_O("\034\110\115\072\016\064\025\034\115"), 
		CmdWith = false, 
		Enabled = true, 
		EmptyTargetListText = _zrC_O("\003\110\064\007\107\090\023\034\055\057\112\120\004\016\055")
	}, 
	_nMWUm = Wherigo.ZCommand{
		Text = _zrC_O("\004\034\115\112\107\081\034\115"), 
		CmdWith = false, 
		Enabled = false, 
		EmptyTargetListText = _zrC_O("\003\110\064\007\107\090\023\034\055\057\112\120\004\016\055")
	}
}
_HY_.Commands._TQS.Custom = true
_HY_.Commands._TQS.Id = "9d46f4b7-e8d1-4dbe-a1a8-c5c867cc5eec"
_HY_.Commands._TQS.WorksWithAll = true
_HY_.Commands._nMWUm.Custom = true
_HY_.Commands._nMWUm.Id = "40b56d74-ea35-404c-8e5c-69fa3318a8d2"
_HY_.Commands._nMWUm.WorksWithAll = true
_HY_.ObjectLocation = Wherigo.INVALID_ZONEPOINT
_HY_.Locked = false
_HY_.Opened = false
_v_En_ = Wherigo.ZItem{
	Cartridge = _UJI36, 
	Container = _iozC
}
_v_En_.Id = "d19711dc-47e7-446e-a30b-596537329f7f"
_v_En_.Name = _zrC_O("\111\034\117\034\057\126\115")
_v_En_.Description = _zrC_O("\118\016\094\110\107\090\025\126\034\115\115\107\034\090\094\016\115\090\081\097\090\015\097\090\026\110\034\090\078\112\034\034\115\090\016\115\055\112\057\034\115\097\097\097")
_v_En_.Visible = true
_v_En_.Commands = {
	_ykX = Wherigo.ZCommand{
		Text = _zrC_O("\016\115\055\112\057\034\115"), 
		CmdWith = false, 
		Enabled = true, 
		EmptyTargetListText = _zrC_O("\003\110\064\007\107\090\023\034\055\057\112\120\004\016\055")
	}
}
_v_En_.Commands._ykX.Custom = true
_v_En_.Commands._ykX.Id = "0823b343-8911-4285-af85-a46a5c9cad79"
_v_En_.Commands._ykX.WorksWithAll = true
_v_En_.ObjectLocation = Wherigo.INVALID_ZONEPOINT
_v_En_.Locked = false
_v_En_.Opened = false
_Esp = Wherigo.ZItem{
	Cartridge = _UJI36, 
	Container = Player
}
_Esp.Id = "d76e7025-8ea2-411c-a2f3-b2da0229e003"
_Esp.Name = _zrC_O("\031\034\107\107\034\117")
_Esp.Description = _zrC_O("\105\126\004\016\117\026\090\034\055\090\026\034\115\090\024\110\072\057\034\117\090\004\034\081\006\112\115\120\034\115\090\007\016\107\127\090\055\112\057\034\090\034\055\090\094\110\064\007\090\016\115\127\090\112\094\090\023\126\115\090\077\034\110\115\034\094\090\014\055\057\126\117\120\034\090\081\112\090\004\034\055\110\064\007\107\034\115\053\123\015\008\099\123\015\008\099\111\034\117\097\053\090\071\071\090\013\013\090\083\083\123\015\008\099\123\015\008\099\014\117\110\081\016\004\034\107\007\090\008")
_Esp.Visible = true
_Esp.Commands = {}
_Esp.ObjectLocation = Wherigo.INVALID_ZONEPOINT
_Esp.Locked = false
_Esp.Opened = false
_tG9K9 = Wherigo.ZItem{
	Cartridge = _UJI36, 
	Container = Player
}
_tG9K9.Id = "38138ca0-2fc0-4a4b-b3d4-df954dc7bf24"
_tG9K9.Name = _zrC_O("\105\016\112\034\055\077\107\126\057\057\112\007\055")
_tG9K9.Description = ""
_tG9K9.Visible = false
_tG9K9.Commands = {
	_dTm = Wherigo.ZCommand{
		Text = _zrC_O("\008\034\077\107\081\034\110\107"), 
		CmdWith = false, 
		Enabled = true, 
		EmptyTargetListText = _zrC_O("\003\110\064\007\107\090\023\034\055\057\112\120\004\016\055")
	}
}
_tG9K9.Commands._dTm.Custom = true
_tG9K9.Commands._dTm.Id = "2aaed63c-d331-49d4-8c16-1d218161479a"
_tG9K9.Commands._dTm.WorksWithAll = true
_tG9K9.ObjectLocation = Wherigo.INVALID_ZONEPOINT
_tG9K9.Locked = false
_tG9K9.Opened = false
_S_vY6 = Wherigo.ZItem{
	Cartridge = _UJI36, 
	Container = Player
}
_S_vY6.Id = "d2762864-e159-448d-aaa6-73a5dc389136"
_S_vY6.Name = _zrC_O("\125\126\120\120\034\115")
_S_vY6.Description = _zrC_O("\003\090\073\050\090\048\047\097\067\067\067\123\015\008\099\014\090\048\050\037\090\047\083\097\067\067\067\123\015\008\099\123\015\008\099\062\115\107\034\055\090\034\110\115\034\094\090\015\110\055\025\034\115\077\107\016\094\094\097\090\118\110\034\090\056\098\003\090\077\107\034\007\107\090\016\112\057\090\026\034\094\090\118\034\064\025\004\117\016\107\107\090\026\034\077\090\125\126\120\004\112\064\007\034\077\097")
_S_vY6.Visible = false
_S_vY6.Commands = {
	_AyPzy = Wherigo.ZCommand{
		Text = _zrC_O("\056\098\003\090\034\110\115\120\034\004\034\115"), 
		CmdWith = false, 
		Enabled = true, 
		EmptyTargetListText = _zrC_O("\003\110\064\007\107\090\023\034\055\057\112\120\004\016\055")
	}
}
_S_vY6.Commands._AyPzy.Custom = true
_S_vY6.Commands._AyPzy.Id = "916e297c-4615-4df1-a24c-165bd8327ea8"
_S_vY6.Commands._AyPzy.WorksWithAll = true
_S_vY6.ObjectLocation = Wherigo.INVALID_ZONEPOINT
_S_vY6.Locked = false
_S_vY6.Opened = false

-- Tasks --
_zIYJW = Wherigo.ZTask(_UJI36)
_zIYJW.Id = "c940ed19-f9a1-49bd-b0b4-272d4feb538d"
_zIYJW.Name = _zrC_O("\085\034\064\025\034\090\111\034\115\081\110\115\120\090\003\126\055\120\016\058\100")
_zIYJW.Description = ""
_zIYJW.Visible = true
_zIYJW.Active = true
_zIYJW.Complete = false
_zIYJW.CorrectState = "None"
_b_JA = Wherigo.ZTask(_UJI36)
_b_JA.Id = "ace8fc15-c5f0-443e-973e-cd693009ea40"
_b_JA.Name = _zrC_O("\056\016\064\025\034\090\026\034\110\115\034\115\090\008\112\064\025\077\016\064\025\100")
_b_JA.Description = ""
_b_JA.Visible = true
_b_JA.Active = true
_b_JA.Complete = false
_b_JA.CorrectState = "None"
_UCRP = Wherigo.ZTask(_UJI36)
_UCRP.Id = "a85fea55-11b6-4cae-81fb-94721ec9866c"
_UCRP.Name = _zrC_O("\024\034\007\034\090\081\112\094\090\075\110\117\117\016\055\058\090\105\107\034\072\100")
_UCRP.Description = ""
_UCRP.Visible = true
_UCRP.Active = true
_UCRP.Complete = false
_UCRP.CorrectState = "None"
_XbS = Wherigo.ZTask(_UJI36)
_XbS.Id = "fae5c6e0-c5c7-4acb-8fab-25855c61147b"
_XbS.Name = _zrC_O("\015\034\077\107\034\110\120\034\090\026\034\115\090\014\023\034\055\034\077\107")
_XbS.Description = ""
_XbS.Visible = true
_XbS.Active = true
_XbS.Complete = false
_XbS.CorrectState = "None"
_XQGa = Wherigo.ZTask(_UJI36)
_XQGa.Id = "b5e5e1b0-3a95-467a-9e36-8d3da523d0c2"
_XQGa.Name = _zrC_O("\008\112\057\034\090\026\110\034\090\078\112\034\034\115\090\016\115\100")
_XQGa.Description = ""
_XQGa.Visible = true
_XQGa.Active = true
_XQGa.Complete = false
_XQGa.CorrectState = "None"

-- Cartridge Variables --
_Lq2Lg = false
_1Kvh = 45
_WyAR = _zrC_O("\005\110\126\081\119")
_mprIM = _zrC_O("\005\055\023\094\069\045")
_osoL = _zrC_O("\005\066\061\056")
_SXlT = _zrC_O("\005\081\098\108\002\085")
_Y1l = _zrC_O("\005\025\081\118")
_LkgJp = _zrC_O("\005\058\125\016\073")
_UJI36.ZVariables = {
	_Lq2Lg = false, 
	_1Kvh = 45, 
	_WyAR = _zrC_O("\005\110\126\081\119"), 
	_mprIM = _zrC_O("\005\055\023\094\069\045"), 
	_osoL = _zrC_O("\005\066\061\056"), 
	_SXlT = _zrC_O("\005\081\098\108\002\085"), 
	_Y1l = _zrC_O("\005\025\081\118"), 
	_LkgJp = _zrC_O("\005\058\125\016\073")
}

-- Timers --
_yLa5 = Wherigo.ZTimer(_UJI36)
_yLa5.Id = "86eb9f41-976e-46c9-b9ef-fe409e3bcc8d"
_yLa5.Name = _zrC_O("\105\016\112\034\055\077\107\126\057\057")
_yLa5.Description = ""
_yLa5.Visible = true
_yLa5.Duration = 1
_yLa5.Type = "Interval"

-- Inputs --
_kzD = Wherigo.ZInput(_UJI36)
_kzD.Id = "d3dab8b8-8f7f-4703-a265-f161a6848f9a"
_kzD.Name = _zrC_O("\111\034\117\034\057\126\115\115\112\094\094\034\055")
_kzD.Description = ""
_kzD.Visible = true
_kzD.InputType = "Text"
_kzD.Text = ""
_BpCh = Wherigo.ZInput(_UJI36)
_BpCh.Id = "0d1c0461-639e-4329-acb3-307a577dc78f"
_BpCh.Name = _zrC_O("\056\110\115")
_BpCh.Description = ""
_BpCh.Visible = true
_BpCh.InputType = "Text"
_BpCh.Text = ""

-- WorksWithList for object commands --

-- functions --
function _UJI36:OnStart()
	if (_G[_zrC_O("\014\115\023")][_zrC_O("\118\034\023\110\064\034\098\118")] == _zrC_O("\118\034\077\025\107\126\072")) or (_G[_zrC_O("\014\115\023")][_zrC_O("\056\117\016\107\057\126\055\094")] == _zrC_O("\085\110\115\037\066")) then
		for k, v in pairs(_G[_zrC_O("\005\062\002\098\037\071")][_zrC_O("\061\117\117\031\011\004\045\034\064\107\077")]) do
			v[_zrC_O("\091\110\077\110\004\117\034")] = false
			v[_zrC_O("\061\064\107\110\023\034")] = false
		end
		_G[_zrC_O("\085\007\034\055\110\120\126")][_zrC_O("\119\126\094\094\016\115\026")](_zrC_O("\105\016\023\034\119\117\126\077\034"))
		return
	end
end
function _UJI36:OnRestore()
end
function _iozC:OnEnter()
	_WyAR = _zrC_O("\005\110\126\081\119")
	_rvmMj:MoveTo(_iozC)
end
function _iozC:OnExit()
	_WyAR = _zrC_O("\005\110\126\081\119")
	if _b_JA.Complete == false then
		_Urwigo.MessageBox{
			Text = _zrC_O("\118\016\077\090\110\077\107\090\025\034\110\115\090\105\126\115\115\107\016\120\077\077\072\016\081\110\034\055\120\016\115\120\097\090\056\016\064\025\090\026\034\110\115\034\115\090\008\112\064\025\077\016\064\025\100")
		}
	end
end
function _fZjlP:OnEnter()
	_WyAR = _zrC_O("\005\057\031\045\117\056")
	_rvmMj:MoveTo(_fZjlP)
	if _XbS.Complete == false then
		_UCRP.Complete = true
		_HY_.Commands._nMWUm.Enabled = true
		_IhI.Commands._95WYN.Enabled = true
		_Urwigo.MessageBox{
			Text = _zrC_O("\118\112\090\007\016\077\107\090\026\034\115\090\075\110\117\117\016\055\058\090\105\107\034\072\090\034\055\055\034\110\064\007\107\097\123\015\008\099\123\015\008\099\075\110\034\055\090\025\126\094\094\107\090\094\016\115\090\115\112\055\090\026\112\055\064\007\090\033\117\034\107\107\034\055\115\090\006\034\110\107\034\055\127\090\112\115\026\090\105\016\112\034\055\077\107\126\057\057\090\004\055\016\112\064\007\107\090\094\016\115\090\016\112\064\007\097"), 
			Callback = function(action)
				if action ~= nil then
					local _rndChoiceValue = math.random()
					if _rndChoiceValue < 0.75 then
						_KvKH.Visible = true
						_Urwigo.MessageBox{
							Text = _zrC_O("\008\011\061\061\061\008\008\008\008\100")
						}
					else
					end
				end
			end
		}
	end
end
function _fzaNu:OnEnter()
	_WyAR = _zrC_O("\005\057\081\016\003\112")
	_rvmMj:MoveTo(_fzaNu)
	if _XbS.Complete == false then
		_yLa5:Stop()
		_tG9K9.Visible = false
		_fzaNu.Name = _zrC_O("\024\110\072\057\034\117")
		_XbS.Complete = true
		_Lq2Lg = true
		_Urwigo.MessageBox{
			Text = _zrC_O("\024\117\112\034\064\025\006\112\115\077\064\007\127\090\026\112\090\007\016\077\107\090\026\034\115\090\024\110\072\057\034\117\090\034\055\055\034\110\064\007\107\097\090\061\004\090\045\034\107\081\107\090\025\034\110\115\034\090\014\110\117\034\090\094\034\007\055\127\090\026\034\055\090\105\016\112\034\055\077\107\126\057\057\090\055\034\110\064\007\107\090\016\112\057\090\045\034\026\034\115\090\101\016\117\117\097\123\015\008\099\123\015\008\099\085\034\115\115\090\026\112\090\034\107\006\016\077\090\081\112\090\061\107\034\094\090\120\034\025\126\094\094\034\115\090\004\110\077\107\127\090\004\034\120\110\004\090\026\110\064\007\090\110\115\077\090\015\016\077\034\064\016\094\072\090\112\115\026\090\055\112\057\034\090\026\110\034\090\078\112\034\034\115\090\016\115\097")
		}
	end
end
function _uIv:OnExit()
	_WyAR = _zrC_O("\005\112\098\023")
	if _IhI.Visible == true then
		_Urwigo.MessageBox{
			Text = _zrC_O("\118\112\090\007\016\077\107\090\023\034\055\120\034\077\077\034\115\127\090\026\034\115\090\105\016\112\034\055\077\107\126\057\057\090\016\115\081\112\117\034\120\034\115\097\123\015\008\099\123\015\008\099\118\112\090\034\055\077\107\110\064\025\077\107\090\034\117\034\115\026\110\120\117\110\064\007\097")
		}
		_cJw()
		_UJI36:RequestSync()
	end
end
function _zIYJW:OnSetComplete()
	__hXk()
end
function _b_JA:OnSetComplete()
	__hXk()
end
function _UCRP:OnSetComplete()
	__hXk()
end
function _XbS:OnSetComplete()
	__hXk()
end
function _XQGa:OnSetComplete()
	__hXk()
end
function _kzD:OnGetInput(input)
	input = tonumber(input)
	if input == nil then
		_Urwigo.MessageBox{
			Text = _zrC_O("\075\110\034\055\090\094\112\077\077\090\034\110\115\090\031\016\007\117\090\034\110\115\120\034\120\034\004\034\115\090\006\034\055\026\034\115\100")
		}
		return
	end
	if input == 667788 then
		if _Lq2Lg == true then
			_Urwigo.MessageBox{
				Text = _zrC_O("\014\077\090\025\117\110\115\120\034\117\107\127\090\026\110\034\090\078\112\034\034\115\090\115\110\094\094\107\090\016\004\053\123\015\008\099\123\015\008\099\018\014\055\090\007\016\107\090\026\034\115\090\014\023\034\055\034\077\107\090\004\034\077\107\110\034\120\034\115\127\090\112\115\026\090\085\110\055\090\057\055\034\112\034\115\090\112\115\077\097\123\015\008\099\123\015\008\099\085\110\055\090\006\034\055\026\034\115\090\110\007\115\090\004\034\117\126\007\115\034\115\090\117\016\077\077\034\115\127\090\077\126\004\016\117\026\090\034\055\090\077\034\110\115\034\115\090\101\112\077\077\090\016\112\057\090\004\055\110\107\110\077\064\007\034\115\090\015\126\026\034\115\090\077\034\107\081\107\097\018"), 
				Media = _zQxG, 
				Callback = function(action)
					if action ~= nil then
						_XQGa.Complete = true
						_Urwigo.MessageBox{
							Text = _zrC_O("\118\016\077\090\006\016\055\022\077\097\123\015\008\099\118\016\115\025\034\090\057\112\034\055\022\077\090\105\072\110\034\117\034\115\097\090\118\110\034\090\031\126\115\034\090\094\110\107\090\026\034\094\090\125\126\120\004\112\064\007\090\110\077\107\090\045\034\107\081\107\090\077\110\064\007\107\004\016\055\090\065\026\110\034\090\031\126\115\034\090\110\077\107\090\006\110\115\081\110\120\090\112\115\026\090\094\112\077\077\090\115\110\064\007\107\090\004\034\107\055\034\107\034\115\090\006\034\055\026\034\115\127\090\026\034\115\115\090\026\016\090\117\110\034\120\107\090\034\110\115\090\072\007\058\077\110\077\064\007\034\077\090\125\126\120\004\112\064\007\090\104\090\016\117\077\126\090\034\110\115\057\016\064\007\090\061\112\120\034\115\090\016\112\057\122\097\123\015\008\099\123\015\008\099\061\112\077\077\034\055\026\034\094\090\110\077\107\090\110\115\090\026\034\110\115\034\094\090\008\112\064\025\077\016\064\025\090\120\034\055\016\026\034\090\034\110\115\090\024\034\120\034\115\077\107\016\115\026\090\115\016\094\034\115\077\090\018\125\126\120\120\034\115\018\090\034\055\077\064\007\110\034\115\034\115\090\104\090\094\110\107\090\026\034\094\090\025\126\115\115\107\090\110\007\055\090\026\034\115\090\056\098\003\090\023\126\094\090\118\034\064\025\004\117\016\107\107\090\026\034\077\090\072\007\058\077\110\077\064\007\034\115\090\125\126\120\004\112\064\007\090\034\110\115\120\034\004\034\115\127\090\112\094\090\062\115\117\126\064\025\104\119\126\026\034\029\105\072\110\034\117\077\107\016\115\026\090\057\112\055\090\006\007\034\055\110\120\126\097\064\126\094\090\081\112\090\034\055\081\034\112\120\034\115\097"), 
							Callback = function(action)
								if action ~= nil then
									_cJw()
									_kvNPg.Visible = true
									_kvNPg.Active = true
									_S_vY6.Visible = true
								end
							end
						}
					end
				end
			}
		else
			_Urwigo.MessageBox{
				Text = _zrC_O("\014\077\090\025\117\110\115\120\034\117\107\127\090\026\110\034\090\078\112\034\034\115\090\115\110\094\094\107\090\016\004\053\123\015\008\099\123\015\008\099\018\014\055\090\110\077\107\090\034\110\115\090\015\034\107\055\112\034\120\034\055\127\090\112\115\026\090\085\110\055\090\007\016\004\034\115\090\110\007\115\090\034\055\107\016\072\072\107\097\123\015\008\099\123\015\008\099\085\110\055\090\006\034\055\026\034\115\090\110\007\115\090\016\112\077\072\034\110\107\077\064\007\034\115\090\117\016\077\077\034\115\127\090\077\126\004\016\117\026\090\034\055\090\077\034\110\115\034\115\090\101\112\077\077\090\016\112\057\090\004\055\110\107\110\077\064\007\034\115\090\015\126\026\034\115\090\077\034\107\081\107\097\018"), 
				Media = _zQxG, 
				Callback = function(action)
					if action ~= nil then
						Wherigo.ShowScreen(Wherigo.MAINSCREEN)
					end
				end
			}
		end
	else
		_Urwigo.MessageBox{
			Text = _zrC_O("\033\034\110\115\090\061\115\077\064\007\117\112\077\077\090\112\115\107\034\055\090\026\110\034\077\034\055\090\003\112\094\094\034\055\097\123\015\008\099\123\015\008\099\118\112\090\117\034\120\077\107\090\016\112\057\097")
		}
	end
end
function _BpCh:OnGetInput(input)
	input = tonumber(input)
	if input == nil then
		_Urwigo.MessageBox{
			Text = _zrC_O("\075\110\034\055\090\094\112\077\077\090\034\110\115\090\031\016\007\117\090\034\110\115\120\034\120\034\004\034\115\090\006\034\055\026\034\115\100")
		}
		return
	end
	if input == 111 then
		_UJI36.Complete = true
		_Urwigo.MessageBox{
			Text = _zrC_O("\008\110\064\007\107\110\120\097"), 
			Callback = function(action)
				if action ~= nil then
					_Urwigo.MessageBox{
						Text = _zrC_O("\118\034\055\090\062\115\117\126\064\025\104\119\126\026\034\053\090")..string.sub(Player.CompletionCode, 1, 15), 
						Callback = function(action)
							if action ~= nil then
								_Urwigo.MessageBox{
									Text = _zrC_O("\061\117\107\034\055\115\016\107\110\023\090\025\016\115\115\090\045\034\107\081\107\090\016\112\064\007\090\026\034\055\090\120\034\077\072\034\110\064\007\034\055\107\034\090\105\072\110\034\117\077\107\016\115\026\090\081\112\094\090\125\126\120\120\034\115\090\004\034\115\112\107\081\107\090\006\034\055\026\034\115\097"), 
									Callback = function(action)
										if action ~= nil then
											Wherigo.Command "SaveClose"
										end
									end
								}
							end
						end
					}
				end
			end
		}
	else
		_Urwigo.MessageBox{
			Text = _zrC_O("\118\016\077\090\110\077\107\090\057\016\117\077\064\007\097\090\118\110\034\090\055\110\064\007\107\110\120\034\090\056\098\003\090\077\107\034\007\107\090\016\112\057\090\026\034\094\090\118\034\064\025\004\117\016\107\107\090\026\034\077\090\125\126\120\004\112\064\007\034\077\097")
		}
	end
end
function _yLa5:OnTick()
	_1Kvh = _1Kvh + -1
	if _1Kvh >= 0 then
		_tG9K9.Name = _zrC_O("\105\016\112\034\055\077\107\126\057\057\112\007\055\053\090").._1Kvh
		_fzaNu.Name = _zrC_O("\024\110\072\057\034\117\053\090").._1Kvh
	else
		_yLa5:Stop()
		_Urwigo.MessageBox{
			Text = _zrC_O("\118\034\110\115\090\105\016\112\034\055\077\107\126\057\057\090\110\077\107\090\016\117\117\034\100\123\015\008\099\123\015\008\099\118\112\090\034\055\077\107\110\064\025\077\107\090\034\117\034\115\026\110\120\117\110\064\007\097")
		}
		_cJw()
		_UJI36:RequestSync()
	end
end
function _rvmMj:On_SqAT(target)
	_Urwigo.MessageBox{
		Text = _zrC_O("\118\112\090\055\112\034\107\107\034\117\077\107\090\111\034\115\081\110\115\120\090\003\126\055\120\016\058\090\006\016\064\007\097\123\015\008\099\123\015\008\099\014\055\090\055\034\110\004\107\090\077\110\064\007\090\026\110\034\090\023\034\055\077\064\007\117\016\057\034\115\034\115\090\061\112\120\034\115\127\090\025\055\110\034\064\007\107\090\016\112\077\090\026\034\094\090\105\064\007\117\016\057\077\016\064\025\090\112\115\026\090\081\034\110\120\107\090\026\110\055\090\026\034\115\090\034\055\077\107\034\115\090\031\006\110\077\064\007\034\115\007\016\117\107\090\016\112\057\090\026\034\094\090\085\034\120\090\081\112\094\090\024\110\072\057\034\117\090\104\090\026\034\115\090\075\110\117\117\016\055\058\090\105\107\034\072\097"), 
		Callback = function(action)
			if action ~= nil then
				_rvmMj.Name = _zrC_O("\111\034\115\081\110\115\120\090\003\126\055\120\016\058")
				_fZjlP.Active = true
				_rvmMj.Commands._SqAT.Enabled = false
				_zIYJW.Complete = true
			end
		end
	}
end
function _IhI:On_i3k(target)
	_IhI:MoveTo(Player)
	_IhI.Commands._i3k.Enabled = false
	if Player:Contains(_IhI) and Player:Contains(_HY_) then
		_Urwigo.MessageBox{
			Text = _zrC_O("\118\112\090\072\016\064\025\077\107\090\026\034\115\090\105\016\112\034\055\077\107\126\057\057\090\034\110\115\097\090\118\034\110\115\090\008\112\064\025\077\016\064\025\090\110\077\107\090\045\034\107\081\107\090\023\126\117\117\077\107\016\034\115\026\110\120\090\120\034\072\016\064\025\107\097"), 
			Callback = function(action)
				if action ~= nil then
					_b_JA.Complete = true
					Wherigo.ShowScreen(Wherigo.MAINSCREEN)
				end
			end
		}
	else
		_Urwigo.MessageBox{
			Text = _zrC_O("\118\112\090\072\016\064\025\077\107\090\026\034\115\090\105\016\112\034\055\077\107\126\057\057\090\034\110\115\097\090\118\034\110\115\090\008\112\064\025\077\016\064\025\090\110\077\107\090\016\004\034\055\090\115\126\064\007\090\115\110\064\007\107\090\023\126\117\117\077\107\016\034\115\026\110\120\090\120\034\072\016\064\025\107\097"), 
			Callback = function(action)
				if action ~= nil then
					Wherigo.ShowScreen(Wherigo.MAINSCREEN)
				end
			end
		}
	end
end
function _IhI:On_95WYN(target)
	_IhI.Visible = false
	_tG9K9.Visible = true
	_yLa5:Start()
	_Urwigo.MessageBox{
		Text = _zrC_O("\061\004\090\045\034\107\081\107\090\117\016\034\112\057\107\090\026\110\034\090\031\034\110\107\097\090\118\112\090\007\016\077\107\090\047\073\090\105\034\025\090\004\110\077\090\081\112\094\090\024\110\072\057\034\117\097\123\015\008\099\123\015\008\099\118\034\110\115\034\090\008\034\077\107\081\034\110\107\090\025\016\115\115\077\107\090\026\112\090\112\004\034\055\090\026\110\034\090\105\016\112\034\055\077\107\126\057\057\112\007\055\090\110\094\090\008\112\064\025\077\016\064\025\090\034\110\115\077\034\007\034\115\097"), 
		Callback = function(action)
			if action ~= nil then
				Wherigo.ShowScreen(Wherigo.MAINSCREEN)
			end
		end
	}
end
function _HY_:On_TQS(target)
	_HY_:MoveTo(Player)
	_HY_.Commands._TQS.Enabled = false
	if Player:Contains(_IhI) and Player:Contains(_HY_) then
		_Urwigo.MessageBox{
			Text = _zrC_O("\118\112\090\072\016\064\025\077\107\090\026\016\077\090\105\034\110\117\090\034\110\115\097\090\118\034\110\115\090\008\112\064\025\077\016\064\025\090\110\077\107\090\045\034\107\081\107\090\023\126\117\117\077\107\016\034\115\026\110\120\090\120\034\072\016\064\025\107\097"), 
			Callback = function(action)
				if action ~= nil then
					_b_JA.Complete = true
					Wherigo.ShowScreen(Wherigo.MAINSCREEN)
				end
			end
		}
	else
		_Urwigo.MessageBox{
			Text = _zrC_O("\118\112\090\072\016\064\025\077\107\090\026\016\077\090\105\034\110\117\090\034\110\115\097\090\118\034\110\115\090\008\112\064\025\077\016\064\025\090\110\077\107\090\016\004\034\055\090\115\126\064\007\090\115\110\064\007\107\090\023\126\117\117\077\107\016\034\115\026\110\120\090\120\034\072\016\064\025\107\097"), 
			Callback = function(action)
				if action ~= nil then
					Wherigo.ShowScreen(Wherigo.MAINSCREEN)
				end
			end
		}
	end
end
function _HY_:On_nMWUm(target)
	_fzaNu.Active = true
	_HY_.Visible = false
	_Urwigo.MessageBox{
		Text = _zrC_O("\118\112\090\004\034\115\112\107\081\107\090\026\016\077\090\105\034\110\117\127\090\112\094\090\026\034\115\090\075\110\117\117\016\055\058\090\105\107\034\072\090\081\112\090\004\034\081\006\110\115\120\034\115\097\090\061\117\077\090\026\112\090\126\004\034\115\090\016\115\025\126\094\094\077\107\127\090\077\110\034\007\077\107\090\026\112\090\026\034\115\090\024\110\072\057\034\117\097"), 
		Callback = function(action)
			if action ~= nil then
				Wherigo.ShowScreen(Wherigo.MAINSCREEN)
			end
		end
	}
end
function _v_En_:On_ykX(target)
	_Urwigo.RunDialogs(function()
		Wherigo.GetInput(_kzD)
	end)
end
function _tG9K9:On_dTm(target)
	_Urwigo.MessageBox{
		Text = tostring(_yLa5.Remaining)
	}
end
function _S_vY6:On_AyPzy(target)
	_Urwigo.RunDialogs(function()
		Wherigo.GetInput(_BpCh)
	end)
end

-- Urwigo functions --
function __hXk()
	if Wherigo.NoCaseEquals(Env.Platform, _zrC_O("\091\034\115\026\126\055\090\050\090\061\008\069\020")) then
		Wherigo.PlayAudio(_4vCzF)
	else
		Wherigo.PlayAudio(_VCJ)
	end
end
function _cJw()
	_iozC.Visible = false
	_fZjlP.Visible = false
	_fzaNu.Visible = false
	_rvmMj.Visible = false
	_2AP.Visible = false
	_v_En_.Visible = false
	_Esp.Visible = false
end

-- Begin user functions --
-- End user functions --
return _UJI36
