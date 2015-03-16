require "Wherigo"
ZonePoint = Wherigo.ZonePoint
Distance = Wherigo.Distance
Player = Wherigo.Player

-- String decode --
function _dEX(str)
	local res = ""
    local dtable = "\055\042\063\077\064\039\067\105\024\019\025\115\032\124\125\040\059\114\101\010\006\023\104\046\119\018\074\034\102\089\099\056\075\122\017\083\110\068\044\076\035\096\015\007\001\065\053\003\054\090\021\072\047\097\084\116\013\082\020\094\033\022\057\070\043\061\079\038\121\118\095\085\016\005\028\066\107\087\009\081\108\093\014\106\071\113\012\031\073\002\109\078\050\062\000\011\008\030\026\058\069\123\060\103\126\100\088\112\041\051\091\117\049\052\029\111\080\045\086\120\004\036\027\037\098\048\092"
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

varcartridge = Wherigo.ZCartridge()

-- Media --
med_fertigteil1 = Wherigo.ZMedia(varcartridge)
med_fertigteil1.Id = "ec360989-db94-4a81-a1d0-7b5ee43369d3"
med_fertigteil1.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\113")
med_fertigteil1.Description = ""
med_fertigteil1.AltText = ""
med_fertigteil1.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil1.jpg", 
		Directives = {}
	}
}
_14v = Wherigo.ZMedia(varcartridge)
_14v.Id = "02f8dd4c-76df-4baa-aede-be94a55f0649"
_14v.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\093")
_14v.Description = ""
_14v.AltText = ""
_14v.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil2.jpg", 
		Directives = {}
	}
}
_f68MG = Wherigo.ZMedia(varcartridge)
_f68MG.Id = "a2438bd5-8ab9-4a27-b234-d0bb8d7508ad"
_f68MG.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\110")
_f68MG.Description = ""
_f68MG.AltText = ""
_f68MG.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil3.jpg", 
		Directives = {}
	}
}
_4KAk = Wherigo.ZMedia(varcartridge)
_4KAk.Id = "f80252be-727c-45a7-884b-4af649b13ee8"
_4KAk.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\114")
_4KAk.Description = ""
_4KAk.AltText = ""
_4KAk.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil4.jpg", 
		Directives = {}
	}
}
_MIoi = Wherigo.ZMedia(varcartridge)
_MIoi.Id = "d2e3153d-2236-4466-ac10-9bb5c4294462"
_MIoi.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\047")
_MIoi.Description = ""
_MIoi.AltText = ""
_MIoi.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil5.jpg", 
		Directives = {}
	}
}
med_lastwagen0 = Wherigo.ZMedia(varcartridge)
med_lastwagen0.Id = "e3d60822-0930-419a-8aa4-f62da993c00c"
med_lastwagen0.Name = _dEX("\081\054\012\056\025\054\104\019\037\126")
med_lastwagen0.Description = ""
med_lastwagen0.AltText = ""
med_lastwagen0.Resources = {
	{
		Type = "jpg", 
		Filename = "lastwagen.jpg", 
		Directives = {}
	}
}
_XKy = Wherigo.ZMedia(varcartridge)
_XKy.Id = "32b64835-9641-4722-a542-36be3d425200"
_XKy.Name = _dEX("\033\018\054\037")
_XKy.Description = ""
_XKy.AltText = ""
_XKy.Resources = {
	{
		Type = "jpg", 
		Filename = "kran.jpg", 
		Directives = {}
	}
}
_ltt2 = Wherigo.ZMedia(varcartridge)
_ltt2.Id = "57153c06-c68f-424f-bae3-f26776990821"
_ltt2.Name = _dEX("\036\031\023\054\056\034")
_ltt2.Description = ""
_ltt2.AltText = ""
_ltt2.Resources = {
	{
		Type = "jpg", 
		Filename = "schatztruhe.jpg", 
		Directives = {}
	}
}
_sEbX = Wherigo.ZMedia(varcartridge)
_sEbX.Id = "99939d41-4235-4de8-8740-5badd83beafe"
_sEbX.Name = _dEX("\052\054\037\116\008")
_sEbX.Description = ""
_sEbX.AltText = ""
_sEbX.Resources = {
	{
		Type = "jpg", 
		Filename = "TurmvonHanoi.jpg", 
		Directives = {}
	}
}
_EoCB = Wherigo.ZMedia(varcartridge)
_EoCB.Id = "8bd059da-bbae-4455-a1d2-42a5dcdfe142"
_EoCB.Name = _dEX("\081\054\012\056\025\054\104\019\037\047")
_EoCB.Description = ""
_EoCB.AltText = ""
_EoCB.Resources = {
	{
		Type = "jpg", 
		Filename = "lastwagen5.jpg", 
		Directives = {}
	}
}
_u5wG = Wherigo.ZMedia(varcartridge)
_u5wG.Id = "e4e21fb3-3311-4961-b638-d8951eb9f2da"
_u5wG.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\047\114")
_u5wG.Description = ""
_u5wG.AltText = ""
_u5wG.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil54.jpg", 
		Directives = {}
	}
}
_DVQ = Wherigo.ZMedia(varcartridge)
_DVQ.Id = "e18d84fb-a2f6-4660-a353-065735dd9d91"
_DVQ.Name = _dEX("\081\054\012\056\025\054\104\019\037\113")
_DVQ.Description = ""
_DVQ.AltText = ""
_DVQ.Resources = {
	{
		Type = "jpg", 
		Filename = "lastwagen1.jpg", 
		Directives = {}
	}
}
_PGPZv = Wherigo.ZMedia(varcartridge)
_PGPZv.Id = "0e19aac3-d115-481a-831e-3c680b73f5f3"
_PGPZv.Name = _dEX("\081\054\012\056\025\054\104\019\037\093")
_PGPZv.Description = ""
_PGPZv.AltText = ""
_PGPZv.Resources = {
	{
		Type = "jpg", 
		Filename = "lastwagen2.jpg", 
		Directives = {}
	}
}
_zqEV = Wherigo.ZMedia(varcartridge)
_zqEV.Id = "b054b0a6-2df0-49e2-953d-05c5ebe84646"
_zqEV.Name = _dEX("\081\054\012\056\025\054\104\019\037\110")
_zqEV.Description = ""
_zqEV.AltText = ""
_zqEV.Resources = {
	{
		Type = "jpg", 
		Filename = "lastwagen3.jpg", 
		Directives = {}
	}
}
_WMfr = Wherigo.ZMedia(varcartridge)
_WMfr.Id = "e01943b9-3a06-4c91-8323-c6617b7880e9"
_WMfr.Name = _dEX("\081\054\012\056\025\054\104\019\037\114")
_WMfr.Description = ""
_WMfr.AltText = ""
_WMfr.Resources = {
	{
		Type = "jpg", 
		Filename = "lastwagen4.jpg", 
		Directives = {}
	}
}
_03Y = Wherigo.ZMedia(varcartridge)
_03Y.Id = "d03c1b49-4227-4ca8-a4a1-9e1af78da44f"
_03Y.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\047\114\110")
_03Y.Description = ""
_03Y.AltText = ""
_03Y.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil543.jpg", 
		Directives = {}
	}
}
_RkjhS = Wherigo.ZMedia(varcartridge)
_RkjhS.Id = "d28ee926-cbab-43c0-a178-9c206e3c2c2c"
_RkjhS.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\047\114\110\093")
_RkjhS.Description = ""
_RkjhS.AltText = ""
_RkjhS.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil5432.jpg", 
		Directives = {}
	}
}
_yBevh = Wherigo.ZMedia(varcartridge)
_yBevh.Id = "db4f0252-39db-40e0-9e51-6be1693415c5"
_yBevh.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\047\114\110\093\113")
_yBevh.Description = ""
_yBevh.AltText = ""
_yBevh.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil54321.jpg", 
		Directives = {}
	}
}
_NCm1 = Wherigo.ZMedia(varcartridge)
_NCm1.Id = "d1111c09-4c3f-47cb-9f9b-6869c9fe37d9"
_NCm1.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\110\093\113")
_NCm1.Description = ""
_NCm1.AltText = ""
_NCm1.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil321.jpg", 
		Directives = {}
	}
}
_QRqj = Wherigo.ZMedia(varcartridge)
_QRqj.Id = "b7debaee-487a-424c-8a21-7a3624450082"
_QRqj.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\114\110\093\113")
_QRqj.Description = ""
_QRqj.AltText = ""
_QRqj.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil4321.jpg", 
		Directives = {}
	}
}
_VSY = Wherigo.ZMedia(varcartridge)
_VSY.Id = "852ba1ef-dc1b-4a83-bcda-e9cc3f08d5d4"
_VSY.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\047\113")
_VSY.Description = ""
_VSY.AltText = ""
_VSY.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil51.jpg", 
		Directives = {}
	}
}
_TZfsf = Wherigo.ZMedia(varcartridge)
_TZfsf.Id = "297359df-af8c-435f-b1dd-6de803d04dd2"
_TZfsf.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\093\113")
_TZfsf.Description = ""
_TZfsf.AltText = ""
_TZfsf.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil21.jpg", 
		Directives = {}
	}
}
_8YjE = Wherigo.ZMedia(varcartridge)
_8YjE.Id = "8135e746-d8c0-41c6-aad0-6ac716638486"
_8YjE.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\110\113")
_8YjE.Description = ""
_8YjE.AltText = ""
_8YjE.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil31.jpg", 
		Directives = {}
	}
}
_IhGi = Wherigo.ZMedia(varcartridge)
_IhGi.Id = "bd462bca-4c3b-4e22-b39f-b04ab1786491"
_IhGi.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\110\093")
_IhGi.Description = ""
_IhGi.AltText = ""
_IhGi.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil32.jpg", 
		Directives = {}
	}
}
_miNmj = Wherigo.ZMedia(varcartridge)
_miNmj.Id = "36f1fb4d-bb00-4a98-9efa-c1f208175581"
_miNmj.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\114\113")
_miNmj.Description = ""
_miNmj.AltText = ""
_miNmj.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil41.jpg", 
		Directives = {}
	}
}
_4BK = Wherigo.ZMedia(varcartridge)
_4BK.Id = "9d3660f8-51cd-4ff1-a706-6522086ca3a8"
_4BK.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\114\093")
_4BK.Description = ""
_4BK.AltText = ""
_4BK.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil42.jpg", 
		Directives = {}
	}
}
_lHU = Wherigo.ZMedia(varcartridge)
_lHU.Id = "a3272c91-b02b-4ba5-ba79-e61a1b3fb0e0"
_lHU.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\114\110")
_lHU.Description = ""
_lHU.AltText = ""
_lHU.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil43.jpg", 
		Directives = {}
	}
}
_ACt9 = Wherigo.ZMedia(varcartridge)
_ACt9.Id = "5d17b009-721e-4006-b5ad-30ff80e6fd00"
_ACt9.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\114\093\113")
_ACt9.Description = ""
_ACt9.AltText = ""
_ACt9.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil421.jpg", 
		Directives = {}
	}
}
_KwW = Wherigo.ZMedia(varcartridge)
_KwW.Id = "34e32c0f-a2ac-4f08-b3e8-7eebbbc0a19d"
_KwW.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\114\110\113")
_KwW.Description = ""
_KwW.AltText = ""
_KwW.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil431.jpg", 
		Directives = {}
	}
}
_GEZ = Wherigo.ZMedia(varcartridge)
_GEZ.Id = "d5b97b58-dddc-4b6d-bf04-f5948330cae7"
_GEZ.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\114\110\093")
_GEZ.Description = ""
_GEZ.AltText = ""
_GEZ.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil432.jpg", 
		Directives = {}
	}
}
_SDf = Wherigo.ZMedia(varcartridge)
_SDf.Id = "dc56135c-86c7-45c8-a608-cd2b453bbb60"
_SDf.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\047\093")
_SDf.Description = ""
_SDf.AltText = ""
_SDf.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil52.jpg", 
		Directives = {}
	}
}
_kila = Wherigo.ZMedia(varcartridge)
_kila.Id = "eb31bd46-a088-48bc-a04e-bb7f058c6ca1"
_kila.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\047\110")
_kila.Description = ""
_kila.AltText = ""
_kila.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil53.jpg", 
		Directives = {}
	}
}
_eMLJ = Wherigo.ZMedia(varcartridge)
_eMLJ.Id = "33d04865-5b0e-4b1d-881a-5688fcde264f"
_eMLJ.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\047\114\113")
_eMLJ.Description = ""
_eMLJ.AltText = ""
_eMLJ.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil541.jpg", 
		Directives = {}
	}
}
_OSXAA = Wherigo.ZMedia(varcartridge)
_OSXAA.Id = "8f08305c-d43b-4e0c-a2ee-e8077e48e544"
_OSXAA.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\047\114\093")
_OSXAA.Description = ""
_OSXAA.AltText = ""
_OSXAA.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil542.jpg", 
		Directives = {}
	}
}
_Pe6 = Wherigo.ZMedia(varcartridge)
_Pe6.Id = "f6bee7da-c751-422e-8bf8-1a1b8d242046"
_Pe6.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\047\110\113")
_Pe6.Description = ""
_Pe6.AltText = ""
_Pe6.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil531.jpg", 
		Directives = {}
	}
}
_kBJ = Wherigo.ZMedia(varcartridge)
_kBJ.Id = "54218c62-f0e9-41cc-9583-298398a9f4e6"
_kBJ.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\047\110\093")
_kBJ.Description = ""
_kBJ.AltText = ""
_kBJ.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil532.jpg", 
		Directives = {}
	}
}
_B4hS = Wherigo.ZMedia(varcartridge)
_B4hS.Id = "59cfa736-281a-49ba-894a-5a383cdfa101"
_B4hS.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\047\093\113")
_B4hS.Description = ""
_B4hS.AltText = ""
_B4hS.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil521.jpg", 
		Directives = {}
	}
}
_1k0F = Wherigo.ZMedia(varcartridge)
_1k0F.Id = "4dd140b7-7ced-4b55-b4a4-49bcb9dc4613"
_1k0F.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\047\110\093\113")
_1k0F.Description = ""
_1k0F.AltText = ""
_1k0F.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil5321.jpg", 
		Directives = {}
	}
}
_byIEY = Wherigo.ZMedia(varcartridge)
_byIEY.Id = "38047cfa-0417-40c4-976b-91510804d2e4"
_byIEY.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\047\114\093\113")
_byIEY.Description = ""
_byIEY.AltText = ""
_byIEY.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil5421.jpg", 
		Directives = {}
	}
}
_RwGO = Wherigo.ZMedia(varcartridge)
_RwGO.Id = "372e23d2-8db6-4d17-b372-79822765ceca"
_RwGO.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\047\114\110\113")
_RwGO.Description = ""
_RwGO.AltText = ""
_RwGO.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil5431.jpg", 
		Directives = {}
	}
}
_dDfeU = Wherigo.ZMedia(varcartridge)
_dDfeU.Id = "ae514efa-b8b4-4cbf-9b6d-f85b64b00a5b"
_dDfeU.Name = _dEX("\029\019\018\056\008\104\056\019\008\081\126")
_dDfeU.Description = ""
_dDfeU.AltText = ""
_dDfeU.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil0.jpg", 
		Directives = {}
	}
}
_OJ2y = Wherigo.ZMedia(varcartridge)
_OJ2y.Id = "b130f02d-a7c0-4fed-9dda-6f2afee57bac"
_OJ2y.Name = _dEX("\029\019\018\056\008\104\056\019\008\081")
_OJ2y.Description = ""
_OJ2y.AltText = ""
_OJ2y.Resources = {
	{
		Type = "jpg", 
		Filename = "fertigteil0_1.jpg", 
		Directives = {}
	}
}
-- Cartridge Info --
varcartridge.Id="44e3660e-7d15-4eca-a326-537292240ac5"
varcartridge.Name="Turmbau zu Hanoi"
varcartridge.Description=[[Play Anywhere
Deine Aufgabe: Baue den Turm wieder ab und an der richtigen Stelle wieder auf ]]
varcartridge.Visible=true
varcartridge.Activity="Puzzle"
varcartridge.StartingLocationDescription=[[]]
varcartridge.StartingLocation = Wherigo.INVALID_ZONEPOINT
varcartridge.Version=""
varcartridge.Company=""
varcartridge.Author=""
varcartridge.BuilderVersion="URWIGO 1.21.5528.18461"
varcartridge.CreateDate="01/12/2012 09:04:17"
varcartridge.PublishDate="1/1/0001 12:00:00 AM"
varcartridge.UpdateDate="03/16/2015 21:23:41"
varcartridge.LastPlayedDate="1/1/0001 12:00:00 AM"
varcartridge.TargetDevice="PocketPC"
varcartridge.TargetDeviceVersion="0"
varcartridge.StateId="1"
varcartridge.CountryId="2"
varcartridge.Complete=false
varcartridge.UseLogging=true

varcartridge.Media=_sEbX


-- Zones --
objSchatzinfo = Wherigo.Zone(varcartridge)
objSchatzinfo.Id = "490c8ae9-77a8-4d6c-bad3-ef363d12065d"
objSchatzinfo.Name = _dEX("\036\031\023\054\056\034\008\037\029\116")
objSchatzinfo.Description = _dEX("\052\008\019\018\013\012\056\019\023\056\013\106\019\018\013\085\019\116\031\054\031\023\008\037\104\118\055\112\018\091\013\054\112\012\013\064\019\018\056\008\104\125\054\112\056\019\008\081\019\037\013\118\013\081\019\008\106\019\018\013\025\112\018\106\019\013\019\018\013\106\008\018\019\077\056\013\054\112\029\013\103\076\058\094\089\037\029\116\018\091\054\056\008\116\037\019\037\013\104\019\012\056\019\081\081\056\039\013\106\008\019\013\034\112\091\013\064\008\037\106\019\037\013\019\008\037\019\012\013\036\031\023\054\056\034\019\012\013\037\116\056\025\019\037\106\008\104\013\012\008\037\106\024\013\068\037\125\012\108\017\119\019\018\012\019\056\034\019\013\106\019\037\013\055\112\018\091\013\054\112\029\013\106\019\037\013\076\054\112\108\081\054\056\034")
objSchatzinfo.Visible = true
objSchatzinfo.Commands = {}
objSchatzinfo.DistanceRange = Distance(-1, "feet")
objSchatzinfo.ShowObjects = "OnEnter"
objSchatzinfo.ProximityRange = Distance(60, "meters")
objSchatzinfo.AllowSetPositionTo = false
objSchatzinfo.Active = false
objSchatzinfo.Points = {
	ZonePoint(47.6095585201282, 9.60492150425898, 0), 
	ZonePoint(47.6097393487639, 9.60490004658686, 0), 
	ZonePoint(47.6096670173846, 9.6051414453982, 0)
}
objSchatzinfo.OriginalPoint = ZonePoint(47.6096549620922, 9.60498766541468, 0)
objSchatzinfo.DistanceRangeUOM = "Feet"
objSchatzinfo.ProximityRangeUOM = "Meters"
objSchatzinfo.OutOfRangeName = ""
objSchatzinfo.InRangeName = ""
objBauplatz = Wherigo.Zone(varcartridge)
objBauplatz.Id = "62b4d006-24fb-4ecc-a7f9-5d6d570a6020"
objBauplatz.Name = _dEX("\076\054\112\108\081\054\056\034")
objBauplatz.Description = _dEX("\052\008\019\018\013\012\116\081\081\013\019\008\037\013\025\112\037\106\019\018\012\031\023\116\019\037\019\018\013\085\019\116\031\054\031\023\008\037\104\118\055\112\018\091\013\054\112\012\013\064\019\018\056\008\104\056\019\008\081\019\037\013\054\112\029\104\019\125\054\112\056\013\025\019\018\106\019\037\013\118\013\106\008\019\013\064\019\018\056\008\104\056\019\008\081\019\013\025\112\018\106\019\037\013\104\019\081\008\019\029\019\018\056\013\118\013\054\125\019\018\013\081\019\008\106\019\018\013\054\091\013\029\054\081\012\031\023\019\037\013\117\081\054\056\034\013\054\112\029\104\019\125\054\112\056\024\013")
objBauplatz.Visible = true
objBauplatz.Media = _dDfeU
objBauplatz.Commands = {}
objBauplatz.DistanceRange = Distance(-1, "feet")
objBauplatz.ShowObjects = "OnEnter"
objBauplatz.ProximityRange = Distance(60, "meters")
objBauplatz.AllowSetPositionTo = false
objBauplatz.Active = false
objBauplatz.Points = {
	ZonePoint(47.6102095002908, 9.60450844407069, 0), 
	ZonePoint(47.6100937710763, 9.60431532502162, 0), 
	ZonePoint(47.6100576056443, 9.60456208825099, 0)
}
objBauplatz.OriginalPoint = ZonePoint(47.6101202923371, 9.60446195244777, 0)
objBauplatz.DistanceRangeUOM = "Feet"
objBauplatz.ProximityRangeUOM = "Meters"
objBauplatz.OutOfRangeName = ""
objBauplatz.InRangeName = ""
objMaterialplatz = Wherigo.Zone(varcartridge)
objMaterialplatz.Id = "96836ad9-358d-4660-96da-b4c5523efacb"
objMaterialplatz.Name = _dEX("\004\054\056\019\018\008\054\081\108\081\054\056\034")
objMaterialplatz.Description = _dEX("\052\008\019\018\013\077\054\037\037\012\056\013\038\112\013\004\054\056\019\018\008\054\081\013\034\025\008\012\031\023\019\037\081\054\104\019\018\037\039\013\106\054\012\013\106\112\013\008\091\013\004\116\091\019\037\056\013\037\008\031\023\056\013\070\019\018\125\054\112\019\037\013\077\054\037\037\012\056\024")
objMaterialplatz.Visible = true
objMaterialplatz.Media = _dDfeU
objMaterialplatz.Commands = {}
objMaterialplatz.DistanceRange = Distance(-1, "feet")
objMaterialplatz.ShowObjects = "OnEnter"
objMaterialplatz.ProximityRange = Distance(60, "meters")
objMaterialplatz.AllowSetPositionTo = false
objMaterialplatz.Active = false
objMaterialplatz.Points = {
	ZonePoint(47.6097176493606, 9.60381643414485, 0), 
	ZonePoint(47.6095295874884, 9.60375206112849, 0), 
	ZonePoint(47.6096597842412, 9.60403101086604, 0)
}
objMaterialplatz.OriginalPoint = ZonePoint(47.6096356736967, 9.60386650204646, 0)
objMaterialplatz.DistanceRangeUOM = "Feet"
objMaterialplatz.ProximityRangeUOM = "Meters"
objMaterialplatz.OutOfRangeName = ""
objMaterialplatz.InRangeName = ""

-- Characters --

-- Items --
objKran = Wherigo.ZItem{
	Cartridge = varcartridge, 
	Container = objSchatzinfo
}
objKran.Id = "fe7eeacc-5c5a-4920-af6c-ef1398944147"
objKran.Name = _dEX("\033\018\054\037")
objKran.Description = _dEX("\004\008\056\013\106\008\019\012\019\091\013\033\018\054\037\013\077\054\037\037\012\056\013\038\112\013\106\008\019\013\064\019\018\056\008\104\056\019\008\081\019\013\054\112\029\013\118\013\116\106\019\018\013\054\125\081\054\106\019\037")
objKran.Visible = true
objKran.Media = _XKy
objKran.Commands = {
	_KKKT9 = Wherigo.ZCommand{
		Text = _dEX("\125\019\037\112\056\034\019\037"), 
		CmdWith = false, 
		Enabled = true, 
		EmptyTargetListText = _dEX("\092\008\031\023\056\013\070\019\018\029\112\104\125\054\018")
	}
}
objKran.Commands._KKKT9.Custom = true
objKran.Commands._KKKT9.Id = "7d877c08-c565-4ff5-8b01-0b96f81d3b04"
objKran.Commands._KKKT9.WorksWithAll = true
objKran.ObjectLocation = Wherigo.INVALID_ZONEPOINT
objKran.Locked = false
objKran.Opened = false
_pUVQn = Wherigo.ZItem{
	Cartridge = varcartridge, 
	Container = Player
}
_pUVQn.Id = "05244b8b-171a-4744-b968-f5f84daa6525"
_pUVQn.Name = _dEX("\036\108\008\019\081\054\037\081\019\008\056\112\037\104")
_pUVQn.Description = _dEX("\038\008\019\012\019\012\013\036\108\008\019\081\013\008\012\056\013\054\081\012\013\117\081\054\069\118\046\037\069\025\023\019\018\019\118\078\023\019\018\008\104\116\013\077\116\037\034\008\108\008\019\018\056\013\118\013\106\024\023\024\013\106\112\013\077\054\037\037\012\056\013\008\023\037\013\112\019\125\019\018\054\081\081\013\012\108\008\019\081\019\037\013\025\116\013\106\112\013\104\019\037\112\019\104\019\037\106\013\117\081\054\056\034\013\023\054\012\056\013\118\013\012\056\019\081\081\013\038\008\031\023\013\084\019\056\034\056\013\008\037\013\106\008\019\013\004\008\056\056\019\013\106\019\012\013\117\081\054\056\034\019\012\024\103\076\058\094\038\019\008\037\019\013\046\112\029\104\054\125\019\013\125\019\012\056\019\023\056\013\106\054\018\008\037\039\013\106\019\037\013\085\019\116\031\054\031\023\008\037\104\118\055\112\018\091\013\054\112\012\013\064\019\018\056\008\104\056\019\008\081\019\037\013\106\019\018\013\050\116\037\019\013\036\031\023\054\056\034\008\037\029\116\013\054\112\029\013\106\019\091\013\076\054\112\108\081\054\056\034\013\025\008\019\106\019\018\013\054\112\029\034\112\125\054\112\019\037\024\013\038\112\013\077\054\037\037\012\056\013\037\112\018\013\019\008\037\013\064\019\018\056\008\104\056\019\008\081\013\054\112\029\013\019\008\037\091\054\081\013\056\018\054\037\012\108\116\018\056\008\019\018\019\037\024\013\078\019\008\056\019\018\023\008\037\013\077\054\037\037\012\056\013\038\112\013\037\112\018\013\077\081\019\008\037\019\018\019\013\076\054\112\056\019\008\081\019\013\054\112\029\013\104\018\116\019\012\012\019\018\019\037\013\076\054\112\056\019\008\081\019\037\013\012\056\054\108\019\081\037\013\118\013\023\008\019\018\034\112\013\025\008\018\012\056\013\106\112\013\106\019\037\013\004\054\056\019\018\008\054\081\108\081\054\056\034\013\125\019\037\116\019\056\008\104\019\037\024\013\103\076\058\094\078\054\019\023\081\019\013\037\112\037\013\106\008\019\013\046\037\034\054\023\081\013\106\019\018\013\055\112\019\018\091\019\039\013\091\008\056\013\106\019\037\019\037\013\106\112\013\012\108\008\019\081\019\037\013\025\008\081\081\012\056\024")
_pUVQn.Visible = true
_pUVQn.Media = _NCm1
_pUVQn.Commands = {
	_zbG = Wherigo.ZCommand{
		Text = _dEX("\078\019\008\056\019\018"), 
		CmdWith = false, 
		Enabled = true, 
		EmptyTargetListText = _dEX("\092\008\031\023\056\013\070\019\018\029\112\104\125\054\018")
	}
}
_pUVQn.Commands._zbG.Custom = true
_pUVQn.Commands._zbG.Id = "f4d0d78a-fd95-48f6-b58c-ed7b0184406d"
_pUVQn.Commands._zbG.WorksWithAll = true
_pUVQn.ObjectLocation = Wherigo.INVALID_ZONEPOINT
_pUVQn.Locked = false
_pUVQn.Opened = false
objLastwagen = Wherigo.ZItem{
	Cartridge = varcartridge, 
	Container = Player
}
objLastwagen.Id = "3e396091-d64e-4d66-b8e8-f06476899516"
objLastwagen.Name = _dEX("\040\054\012\056\025\054\104\019\037")
objLastwagen.Description = _dEX("\091\008\056\013\106\008\019\012\019\091\013\040\054\012\056\025\054\104\019\037\013\077\054\037\037\012\056\013\106\112\013\106\008\019\013\064\019\018\056\008\104\056\019\008\081\019\013\056\018\054\037\012\108\116\018\056\008\019\018\019\037\013\118\013\106\019\018\013\040\054\012\056\025\054\104\019\037\013\125\019\104\081\019\008\056\019\056\013\038\008\031\023\013\008\091\091\019\018\013\112\037\106\013\125\018\008\037\104\056\013\019\008\037\013\054\112\029\104\019\081\054\106\019\037\019\012\013\064\019\018\056\008\104\056\019\008\081\013\034\112\091\013\076\019\012\056\008\091\091\112\037\104\012\116\018\056\024")
objLastwagen.Visible = true
objLastwagen.Media = med_lastwagen0
objLastwagen.Commands = {}
objLastwagen.ObjectLocation = Wherigo.INVALID_ZONEPOINT
objLastwagen.Locked = false
objLastwagen.Opened = false
_qHI = Wherigo.ZItem(varcartridge)
_qHI.Id = "3f1c382a-3377-48cf-b173-c24b193fcc2a"
_qHI.Name = _dEX("\007\054\031\023\019\008\037\029\116\013\112\037\106\013\072\037\081\116\031\077\007\116\106\019")
_qHI.Description = _dEX("\078\019\037\037\013\106\112\013\037\008\031\023\056\013\008\091\013\101\091\112\081\054\056\116\018\013\104\019\012\108\008\019\081\056\013\023\054\012\056\039\013\019\018\023\054\019\081\056\012\056\013\038\112\013\023\008\019\018\013\106\008\019\013\078\019\018\056\019\013\046\076\007\038\013\016\036\108\008\019\081\013\091\008\056\013\114\013\055\112\019\018\091\019\037\109\013\125\034\025\024\013\101\064\085\052\013\016\047\013\055\112\019\018\091\019\109\013\091\008\056\013\052\008\081\029\019\013\106\019\018\019\018\013\038\112\013\104\019\091\054\019\012\012\013\085\007\118\007\054\031\023\019\081\008\012\056\008\037\104\013\106\008\019\013\064\008\037\054\081\077\116\116\018\106\008\037\054\056\019\037\013\125\019\018\019\031\023\037\019\037\013\077\054\037\037\012\056\024\013\076\019\008\091\013\036\108\008\019\081\019\037\013\091\008\056\013\110\013\055\112\019\018\091\019\037\013\104\008\125\056\012\013\077\019\008\037\019\013\089\037\029\116\024\013\038\019\037\013\072\037\081\116\031\077\118\007\116\106\019\013\019\018\023\054\019\081\056\012\056\013\106\112\013\008\091\091\019\018\024")
_qHI.Visible = true
_qHI.Media = _ltt2
_qHI.Commands = {
	_664xA = Wherigo.ZCommand{
		Text = _dEX("\072\037\081\116\031\077\118\007\116\106\019\013\054\037\034\019\008\104\019\037"), 
		CmdWith = false, 
		Enabled = true, 
		EmptyTargetListText = _dEX("\092\008\031\023\056\013\070\019\018\029\112\104\125\054\018")
	}, 
	_OLm = Wherigo.ZCommand{
		Text = _dEX("\007\054\031\023\019\008\037\029\116\013\034\019\008\104\019\037"), 
		CmdWith = false, 
		Enabled = true, 
		EmptyTargetListText = _dEX("\092\008\031\023\056\013\070\019\018\029\112\104\125\054\018")
	}
}
_qHI.Commands._664xA.Custom = true
_qHI.Commands._664xA.Id = "0154c7fa-5482-4fea-ab55-27cb1e007561"
_qHI.Commands._664xA.WorksWithAll = true
_qHI.Commands._OLm.Custom = true
_qHI.Commands._OLm.Id = "ebe2fff0-aa6b-4c20-a5df-765bc904b699"
_qHI.Commands._OLm.WorksWithAll = true
_qHI.ObjectLocation = Wherigo.INVALID_ZONEPOINT
_qHI.Locked = false
_qHI.Opened = false

-- Tasks --
_zPws = Wherigo.ZTask(varcartridge)
_zPws.Id = "c257c21d-45dc-4b15-bc50-2a826cd4c525"
_zPws.Name = _dEX("\055\112\018\091\013\070\019\018\012\019\056\034\019\037")
_zPws.Description = _dEX("\119\019\018\012\019\056\034\019\013\106\019\037\013\055\112\018\091\013\054\112\029\013\106\019\037\013\076\054\112\108\081\054\056\034\013\118\013\106\054\125\019\008\013\106\054\018\029\013\008\091\091\019\018\013\037\112\018\013\019\008\037\013\077\081\019\008\037\019\018\019\012\013\064\019\018\056\008\104\125\054\112\056\019\008\081\013\054\112\029\013\019\008\037\019\091\013\104\018\116\019\012\012\019\018\019\037\013\081\008\019\104\019\037\061")
_zPws.Visible = true
_zPws.Media = _EoCB
_zPws.Active = true
_zPws.Complete = false
_zPws.CorrectState = "None"

-- Cartridge Variables --
var_fertigteilnr = 0
aktZone = ""
var_fertigteile = 0
var_max_fertigteile = 5
_05fAX = 1234
_X4d = 5678
_BQcoD = _dEX("\116\125\084\036\031\023\054\056\034\008\037\029\116")
_btKZ = _dEX("\106\112\091\091\069")
_Rmt6q = _dEX("\116\125\084\033\018\054\037")
_HoqI = _dEX("\071\034\117\025\012")
_hnHrl = _dEX("\071\119\036\023")
_1H_ = _dEX("\106\112\091\091\069")
varcartridge.ZVariables = {
	var_fertigteilnr = 0, 
	aktZone = "", 
	var_fertigteile = 0, 
	var_max_fertigteile = 5, 
	_05fAX = 1234, 
	_X4d = 5678, 
	_BQcoD = _dEX("\116\125\084\036\031\023\054\056\034\008\037\029\116"), 
	_btKZ = _dEX("\106\112\091\091\069"), 
	_Rmt6q = _dEX("\116\125\084\033\018\054\037"), 
	_HoqI = _dEX("\071\034\117\025\012"), 
	_hnHrl = _dEX("\071\119\036\023"), 
	_1H_ = _dEX("\106\112\091\091\069")
}

-- Timers --

-- Inputs --
_VSh = Wherigo.ZInput(varcartridge)
_VSh.Id = "96bf1da8-ce15-48fb-9e8d-efa9f31b566a"
_VSh.Name = _dEX("\101\008\037\104\054\125\019\071\055\112\019\018\091\019")
_VSh.Description = ""
_VSh.Visible = true
_VSh.Media = _NCm1
_VSh.Choices = {
	"3", 
	"4", 
	"5"
}
_VSh.InputType = "MultipleChoice"
_VSh.Text = _dEX("\110\013\055\112\019\018\091\019\100\013\050\112\091\013\072\019\125\019\037\103\076\058\094\114\013\055\112\019\018\091\019\100\013\078\019\018\056\019\013\046\076\007\038\103\076\058\094\047\013\055\112\019\018\091\019\100\013\078\019\018\056\019\013\101\064\085\052")

-- WorksWithList for object commands --

-- functions --
function varcartridge:OnStart()
	if (_G[_dEX("\101\037\070")][_dEX("\038\019\070\008\031\019\089\038")] == _dEX("\038\019\012\077\056\116\108")) or (_G[_dEX("\101\037\070")][_dEX("\117\081\054\056\029\116\018\091")] == _dEX("\078\008\037\110\093")) then
		_05fAX = 0
		_X4d = 0
	end
	_Urwigo.Dialog(false, {
		{
			Text = (_dEX("\052\054\081\081\116\013")..Player.Name).._dEX("\103\076\058\094\103\076\058\094\036\031\023\116\019\037\039\013\106\054\012\012\013\038\112\013\023\019\081\029\019\037\013\091\116\019\031\023\056\019\012\056\039\013\106\008\019\012\019\012\013\025\112\037\106\019\018\012\031\023\116\019\037\019\013\085\019\116\031\054\031\023\008\037\104\118\076\054\112\025\019\018\077\013\054\037\013\106\008\019\013\018\008\031\023\056\008\104\019\013\036\056\019\081\081\019\013\034\112\013\070\019\018\012\019\056\034\019\037\024\103\076\058\094\040\019\008\106\019\018\013\025\112\018\106\019\013\125\019\008\013\040\008\019\029\019\018\112\037\104\013\106\019\018\013\064\019\018\056\008\104\056\019\008\081\019\013\106\019\018\013\029\054\081\012\031\023\019\013\067\018\056\013\034\112\091\013\046\112\029\125\054\112\013\104\019\025\054\019\023\081\056\024\013\072\037\056\019\018\013\106\019\091\013\055\112\091\013\125\019\029\008\037\106\019\037\013\012\008\031\023\013\089\037\029\116\018\091\054\056\008\116\037\019\037\013\029\112\019\018\013\019\008\037\019\037\013\036\031\023\054\056\034\013\118\013\106\008\019\012\019\037\013\019\018\023\054\019\081\056\012\056\013\038\112\013\054\081\012\013\076\019\081\116\023\037\112\037\104\013\025\019\037\037\013\106\112\013\106\019\037\013\055\112\018\091\013\070\019\018\012\019\056\034\056\024"), 
			Media = _sEbX
		}, 
		{
			Text = _dEX("\046\125\019\018\013\012\112\031\023\019\013\038\008\018\013\034\112\019\018\012\056\013\091\054\081\013\019\008\037\019\037\013\029\018\019\008\019\037\013\117\081\054\056\034\013\118\013\031\054\024\013\001\047\120\001\047\013\004\019\056\019\018\013\012\116\081\081\056\019\037\013\018\019\008\031\023\019\037\013\112\037\106\013\012\056\019\081\081\019\013\038\008\031\023\013\008\037\013\106\008\019\013\004\008\056\056\019\024\013\046\037\012\031\023\081\008\019\012\012\019\037\106\013\081\008\019\012\013\106\008\019\013\036\108\008\019\081\018\019\104\019\081\037\013\106\112\018\031\023\013\112\037\106\013\106\054\037\037\013\077\054\037\037\013\019\012\013\054\112\031\023\013\012\031\023\116\037\013\081\116\012\104\019\023\019\037"), 
			Media = _sEbX
		}
	}, function(action)
		Wherigo.ShowScreen(Wherigo.DETAILSCREEN, _pUVQn)
	end)
end
function varcartridge:OnRestore()
end
function objSchatzinfo:OnEnter()
	_BQcoD = _dEX("\116\125\084\036\031\023\054\056\034\008\037\029\116")
	aktZone = objSchatzinfo
	_xUjy()
end
function objSchatzinfo:OnExit()
	_BQcoD = _dEX("\116\125\084\036\031\023\054\056\034\008\037\029\116")
	_XDjs()
end
function objBauplatz:OnEnter()
	_BQcoD = _dEX("\116\125\084\076\054\112\108\081\054\056\034")
	aktZone = objBauplatz
	_xUjy()
end
function objBauplatz:OnExit()
	_BQcoD = _dEX("\116\125\084\076\054\112\108\081\054\056\034")
	_XDjs()
end
function objMaterialplatz:OnEnter()
	_BQcoD = _dEX("\116\125\084\004\054\056\019\018\008\054\081\108\081\054\056\034")
	aktZone = objMaterialplatz
	_xUjy()
end
function objMaterialplatz:OnExit()
	_BQcoD = _dEX("\116\125\084\004\054\056\019\018\008\054\081\108\081\054\056\034")
	_XDjs()
end
function _VSh:OnGetInput(input)
	if input == nil then
		input = ""
	end
	if _Urwigo.Hash(string.lower(input)) == 51 then
		var_max_fertigteile = 3
	elseif _Urwigo.Hash(string.lower(input)) == 52 then
		var_max_fertigteile = 4
	else
		var_max_fertigteile = 5
	end
	init_fertigteile(objBauplatz,0)
	init_fertigteile(objMaterialplatz,0)
	init_fertigteile(objSchatzinfo,var_max_fertigteile)
	objSchatzinfo.Media = get_media("fertigteil",get_fertigteilestring(objSchatzinfo))
	objLastwagen.Fertigteilnr = 0
	init_play_anywhere(objSchatzinfo, objBauplatz, objMaterialplatz)
	_pUVQn:MoveTo(nil)
	objBauplatz.Active = true
	objBauplatz.Visible = true
	objMaterialplatz.Active = true
	objMaterialplatz.Visible = true
	objSchatzinfo.Active = true
	objSchatzinfo.Visible = true
	outWithMainScreen("Fein, du spielst jetzt mit "..var_max_fertigteile.." Tuermen, Viel Spass!",get_media("fertigteil",get_fertigteilestring(objSchatzinfo)))
end
function objKran:On_KKKT9(target)
	if objLastwagen.Locked then
		var_fertigteilnr = put_fertigteil(aktZone,objLastwagen.Fertigteilnr)
		med_msgmedia = get_media("lastwagen",var_fertigteilnr)
		if var_fertigteilnr > 0 then
			objLastwagen.Locked = false
			objLastwagen.Fertigteilnr = 0
			out("Das Fertigteil Nor: "..var_fertigteilnr.." ist auf dem Lastwagen, du laedtst es jetzt ab",get_media("lastwagen",var_fertigteilnr))
		else
			out("Der Lastwagen ist zwar voll, aber hier kannst du das Fertigteil nicht abladen",get_media("lastwagen",objLastwagen.Fertigteilnr))
		end
	else
		var_fertigteilnr = get_fertigteil(aktZone)
		
		if var_fertigteilnr > 0 then
			objLastwagen.Locked = true
			objLastwagen.Fertigteilnr = var_fertigteilnr
			out("Der Lastwagen war leer, du laedst das Fertigteil No: "..var_fertigteilnr.." auf den Lastwagen",get_media("lastwagen",var_fertigteilnr))
		else
			out("Der Lastwagen ist leer, allerdings gibt es hier auch nichts zum Aufladen",get_media("lastwagen",var_fertigteilnr))
		end
	end
	objLastwagen.Media = get_media("lastwagen",objLastwagen.Fertigteilnr)
	aktZone.Media = get_media("fertigteil",get_fertigteilestring(aktZone))
	_WFHCp()
end
function _pUVQn:On_zbG(target)
	_Urwigo.RunDialogs(function()
		Wherigo.GetInput(_VSh)
	end)
end
function _qHI:On_664xA(target)
	_Urwigo.MessageBox{
		Text = string.sub(Player.CompletionCode, 1, 15)
	}
end
function _qHI:On_OLm(target)
	if var_max_fertigteile == 3 then
		_Urwigo.MessageBox{
			Text = _dEX("\038\054\012\013\025\054\018\013\084\019\056\034\056\013\034\112\091\013\072\019\125\019\037\013\118\013\008\031\023\013\023\116\029\029\019\013\019\012\013\023\054\056\013\036\108\054\012\012\013\104\019\091\054\031\023\056\061"), 
			Media = _sEbX
		}
	elseif var_max_fertigteile == 4 then
		_Urwigo.MessageBox{
			Text = _dEX("\050\112\091\013\076\019\018\019\031\023\037\019\037\013\106\019\018\013\064\008\037\054\081\077\116\116\018\106\008\037\054\056\019\013\104\019\091\054\019\012\012\013\085\019\116\031\054\031\023\008\037\104\118\040\008\012\056\008\037\104\013\070\019\018\025\019\037\106\019\013\125\008\056\056\019\013\106\008\019\013\078\019\018\056\019\013\046\076\007\038\066").._05fAX, 
			Media = _ltt2
		}
	else
		_Urwigo.MessageBox{
			Text = _dEX("\050\112\091\013\076\019\018\019\031\023\037\019\037\013\106\019\018\013\064\008\037\054\081\077\116\116\018\106\008\037\054\056\019\013\104\019\091\054\019\012\012\013\085\019\116\031\054\031\023\008\037\104\118\040\008\012\056\008\037\104\013\070\019\018\025\019\037\106\019\013\125\008\056\056\019\013\106\008\019\013\078\019\018\056\019\013\101\064\085\052\066").._X4d, 
			Media = _ltt2
		}
	end
end

-- Urwigo functions --
function _xUjy()
	objKran.Name = [[Kran - Zone ]]..aktZone.Name
	objKran:MoveTo(aktZone)
	
	
	objKran.Visible = true
	Wherigo.ShowScreen(Wherigo.DETAILSCREEN, objKran)
end
function _XDjs()
	objKran.Visible = false
end
function _WFHCp()
	objBauplatz.Description = [[Auf dem Bauplatz liegen folgende Fertigteile: ]]..get_fertigteilestring(objBauplatz)
	objMaterialplatz.Description = [[Auf dem Materialplatz liegen folgende Fertigteile: ]]..get_fertigteilestring(objMaterialplatz)
	objSchatzinfo.Description = [[Auf der Schatzinfo liegen folgende Fertigteile: ]].. get_fertigteilestring(objSchatzinfo)
	var_fertigteile = #objBauplatz.Fertigteile
	
	if var_fertigteile == var_max_fertigteile then
		_Urwigo.MessageBox{
			Text = _dEX("\085\081\112\019\031\077\025\112\037\012\031\023\039\013\106\112\013\023\054\012\056\013\019\012\013\104\019\012\031\023\054\029\029\056\013\061\013\038\112\013\023\054\012\056\013\037\112\037\013\106\008\019\013\089\037\029\116\018\091\054\056\008\116\037\019\037\013\034\112\091\013\064\008\037\106\019\037\013\106\019\012\013\007\054\031\023\019\012\013\112\037\106\013\034\112\091\013\072\037\081\116\031\077\019\037\013\008\091\013\089\037\070\019\037\056\054\018"), 
			Media = _ltt2, 
			Callback = function(action)
				if action ~= nil then
					Wherigo.ShowScreen(Wherigo.MAINSCREEN)
					_zPws.Complete = true
					varcartridge.Complete = true
					_qHI:MoveTo(Player)
					varcartridge:RequestSync()
				end
			end
		}
	else
		var_fertigteile = #objMaterialplatz.Fertigteile
		if var_fertigteile == var_max_fertigteile then
			out("Oh no, Du hast den Turm zwar fertig aufgebaut, aber auf dem Materialplatz anstatt auf dem Bauplatz - das geht so leider nicht !Baue den Turm bitte auf dem Bauplatz auf",get_media("fertigteil",get_fertigteilestring(objMaterialplatz)))
		end
	end
end

-- Begin user functions --



aktZone = objSchatzinfo   --aktuelle Zone



function new_table(anzahl)
   local tbl = {}
   for i = 1, anzahl, 1 do
       table.insert(tbl,i,var_max_fertigteile + 1 - i)
   end
   return tbl
end


function init_fertigteile(objzone,anzahlteile)
    --legt das Table Fertigteile fuer die jeweilige Zone an das erste element ist das unterste Element und hat die Kardinalzahl 5 - mehr als 5 Teile sind zur Zeit nicht implementiert
    objzone.Fertigteile = new_table(anzahlteile)
end


function get_fertigteilestring(aktZone)
   
   local msg = ""
   --print("get fertigteilestring")
   if aktZone.Fertigteile ~= nil then
     --print ("Nr Fertigteile: ",#aktZone.Fertigteile)
     for i = 1, #aktZone.Fertigteile, 1 do
        --print(i)
        msg=msg..aktZone.Fertigteile[i]
     end   
   end
    --print(msg)
    return msg
end

function get_fertigteil(aktZone)
    local nr = 0
    if #aktZone.Fertigteile > 0 then
        nr = table.remove(aktZone.Fertigteile,#aktZone.Fertigteile)
    end
    return nr
end

function put_fertigteil(aktZone, teilnr) --return 0 bei Fehler, ansonsten Fertigteilnr
    if teilnr == 0 then
       return 0
    end
    if #aktZone.Fertigteile == 0 then
           table.insert(aktZone.Fertigteile,teilnr)
           return teilnr
    else
           if teilnr < aktZone.Fertigteile[#aktZone.Fertigteile] then 
               table.insert(aktZone.Fertigteile,teilnr)
               return teilnr
           end
    end
    return 0
end

function get_media(basename,fertigteilstring)
   local objects = varcartridge.AllZObjects
   local media_name = basename..fertigteilstring
   for i= 1, #objects,1 do
       if objects[i].Name == media_name then
           print(media_name)
           return objects[i]
       end
   end
   return nil
end


function out(m,med)
	 _Urwigo.MessageBox{
	 	Text= "" .. m,
	 	Media = med
	 }
end

function outWithMainScreen(m,med)
	 _Urwigo.MessageBox{
	 	Text= "" .. m,
		Media = med,
	 	Callback = function(action)
				if action ~= nil then
					Wherigo.ShowScreen(Wherigo.MAINSCREEN)
				end
			end
	 }
end

function init_play_anywhere(zone1, zone2, zone3)
    local dist = Wherigo.Distance(40,'m')
    zone1.OriginalPoint = Wherigo.TranslatePoint(Player.ObjectLocation,dist,0)
    zone1.Points = GetZonePoints(zone1.OriginalPoint,10)
    zone2.OriginalPoint = Wherigo.TranslatePoint(Player.ObjectLocation,dist,120)
    zone2.Points = GetZonePoints(zone2.OriginalPoint,10)
    zone3.OriginalPoint = Wherigo.TranslatePoint(Player.ObjectLocation,dist,240)
    zone3.Points = GetZonePoints(zone3.OriginalPoint,10)
end


function GetZonePoints(refPt, radi)
  local dist = Wherigo.Distance(radi, 'm')
  local pts = {
   Wherigo.TranslatePoint(refPt, dist, 0),
   Wherigo.TranslatePoint(refPt, dist, 60),
   Wherigo.TranslatePoint(refPt, dist, 120),
   Wherigo.TranslatePoint(refPt, dist, 180),
   Wherigo.TranslatePoint(refPt, dist, 240),
   Wherigo.TranslatePoint(refPt, dist, 300),
  }
 
  return pts
end

-- End user functions --
return varcartridge
