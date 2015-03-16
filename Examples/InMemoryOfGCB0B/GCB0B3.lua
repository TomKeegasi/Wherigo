require "Wherigo"
ZonePoint = Wherigo.ZonePoint
Distance = Wherigo.Distance
Player = Wherigo.Player

-- #Author Directives Go Here# --
-- #End Author Directives# --

cartGCB0B = Wherigo.ZCartridge()

-- MessageBox Callback Functions Table used by the Builder --
cartGCB0B.MsgBoxCBFuncs = {}

zmediaGCB0B = Wherigo.ZMedia(cartGCB0B)
zmediaGCB0B.Name="GCB0B"
zmediaGCB0B.Description=""
zmediaGCB0B.AltText=""
zmediaGCB0B.Id="deb693f5-6007-42e2-a2c1-7e1c73ba4de1"
zmediaGCB0B.Resources = {
{ Type = "jpg", Filename = "GCB0B.jpg", Directives = {},},
}
zmediaSantaMaria = Wherigo.ZMedia(cartGCB0B)
zmediaSantaMaria.Name="Santa Maria"
zmediaSantaMaria.Description=""
zmediaSantaMaria.AltText=""
zmediaSantaMaria.Id="e44b36b4-7daa-48b7-a992-b4159b66f32a"
zmediaSantaMaria.Resources = {
{ Type = "jpg", Filename = "Santa Maria.jpg", Directives = {},},
}
zmediaEvent = Wherigo.ZMedia(cartGCB0B)
zmediaEvent.Name="Event"
zmediaEvent.Description=""
zmediaEvent.AltText=""
zmediaEvent.Id="0735f9ba-4c9c-455b-9d01-847ca4a7c722"
zmediaEvent.Resources = {
{ Type = "gif", Filename = "Event.gif", Directives = {},},
}
zmediaPyramid = Wherigo.ZMedia(cartGCB0B)
zmediaPyramid.Name="Pyramid"
zmediaPyramid.Description=""
zmediaPyramid.AltText=""
zmediaPyramid.Id="34e7b11d-36ba-4816-b77a-9be7576abaec"
zmediaPyramid.Resources = {
{ Type = "jpg", Filename = "Pyramid.jpg", Directives = {},},
}
zmediaPhotoHunt = Wherigo.ZMedia(cartGCB0B)
zmediaPhotoHunt.Name="Photo Hunt"
zmediaPhotoHunt.Description=""
zmediaPhotoHunt.AltText=""
zmediaPhotoHunt.Id="680797e1-2e33-46c2-8f4b-72abfdff48c8"
zmediaPhotoHunt.Resources = {
{ Type = "jpg", Filename = "Photo Hunt.jpg", Directives = {},},
}
zmediaBrightAngel = Wherigo.ZMedia(cartGCB0B)
zmediaBrightAngel.Name="Bright Angel"
zmediaBrightAngel.Description=""
zmediaBrightAngel.AltText=""
zmediaBrightAngel.Id="61b45aa8-ed8c-4598-9c55-6145dfcab239"
zmediaBrightAngel.Resources = {
{ Type = "jpg", Filename = "Traditional.jpg", Directives = {},},
}
zmediaHooters = Wherigo.ZMedia(cartGCB0B)
zmediaHooters.Name="Hooters"
zmediaHooters.Description=""
zmediaHooters.AltText=""
zmediaHooters.Id="50a6dce3-8ff5-48bd-9057-ae3ec6ca1c9f"
zmediaHooters.Resources = {
{ Type = "gif", Filename = "hooters_logo_large_1240196505.gif", Directives = {},},
}
zmediaSound = Wherigo.ZMedia(cartGCB0B)
zmediaSound.Name="Sound"
zmediaSound.Description=""
zmediaSound.AltText=""
zmediaSound.Id="cb2978c4-32b1-4c1c-90f2-b8829b8d2a3b"
zmediaSound.Resources = {
{ Type = "fdl", Filename = "GCB0B Sound.fdl", Directives = {},},
}
zmediaFinal = Wherigo.ZMedia(cartGCB0B)
zmediaFinal.Name="Final"
zmediaFinal.Description=""
zmediaFinal.AltText=""
zmediaFinal.Id="89757972-81df-4851-bb8f-09e4a2ad0567"
zmediaFinal.Resources = {
{ Type = "fdl", Filename = "Final Sound.fdl", Directives = {},},
}
-- Cartridge Info --
cartGCB0B.Id="5de90c0e-ee26-4a19-9ac2-825a601c35e4"
cartGCB0B.Name="GCB0B"
cartGCB0B.Description=[[In Memory of GCB0B]]
cartGCB0B.Visible=true
cartGCB0B.Activity="Geocache"
cartGCB0B.StartingLocationDescription=[[]]
cartGCB0B.StartingLocation = ZonePoint(33.6401166915894,-112.121016669273,0)
cartGCB0B.Version="1"
cartGCB0B.Company=""
cartGCB0B.Author="JCanyoneer"
cartGCB0B.BuilderVersion="2.0.5129.5086"
cartGCB0B.CreateDate="3/29/2011 2:13:27 PM"
cartGCB0B.PublishDate="3/31/2011 5:53:51 AM"
cartGCB0B.UpdateDate="3/31/2011 6:24:03 AM"
cartGCB0B.LastPlayedDate="1/1/0001 12:00:00 AM"
cartGCB0B.TargetDevice="PocketPC"
cartGCB0B.TargetDeviceVersion="0"
cartGCB0B.StateId="1"
cartGCB0B.CountryId="2"
cartGCB0B.Complete=false
cartGCB0B.UseLogging=true
cartGCB0B.Media=zmediaGCB0B

-- Zones --
zoneGC27FDUnknown = Wherigo.Zone(cartGCB0B)
zoneGC27FDUnknown.Id="e45feff9-5366-41c2-8e04-d7c3f7b9df6e"
zoneGC27FDUnknown.Name="GC27FD-Unknown"
zoneGC27FDUnknown.Description=[[]]
zoneGC27FDUnknown.Visible=false
zoneGC27FDUnknown.DistanceRange = Distance(-1, "feet")
zoneGC27FDUnknown.ShowObjects="OnEnter"
zoneGC27FDUnknown.ProximityRange = Distance(200, "feet")
zoneGC27FDUnknown.AllowSetPositionTo=false
zoneGC27FDUnknown.Active=false
zoneGC27FDUnknown.Points = {
  ZonePoint(33.64217,-112.12099,0),
  ZonePoint(33.64217,-112.12094,0),
  ZonePoint(33.64213,-112.12094,0),
  ZonePoint(33.64213,-112.12099,0)
}
zoneGC27FDUnknown.OriginalPoint = ZonePoint(33.6421499888102,-112.12096666495,0)
zoneGC27FDUnknown.DistanceRangeUOM = "Feet"
zoneGC27FDUnknown.ProximityRangeUOM = "Feet"
zoneGC27FDUnknown.OutOfRangeName = ""
zoneGC27FDUnknown.InRangeName = ""
zoneGC27FDUnknown.Media=zmediaPyramid

zoneGC5F1Traditional = Wherigo.Zone(cartGCB0B)
zoneGC5F1Traditional.Id="6c155053-ac04-4988-ad3e-237051208a36"
zoneGC5F1Traditional.Name="GC5F1-Traditional"
zoneGC5F1Traditional.Description=[[]]
zoneGC5F1Traditional.Visible=false
zoneGC5F1Traditional.DistanceRange = Distance(-1, "feet")
zoneGC5F1Traditional.ShowObjects="OnEnter"
zoneGC5F1Traditional.ProximityRange = Distance(200, "feet")
zoneGC5F1Traditional.AllowSetPositionTo=false
zoneGC5F1Traditional.Active=false
zoneGC5F1Traditional.Points = {
  ZonePoint(33.64335,-112.11999,0),
  ZonePoint(33.64335,-112.11994,0),
  ZonePoint(33.64331,-112.11994,0),
  ZonePoint(33.64331,-112.11999,0)
}
zoneGC5F1Traditional.OriginalPoint = ZonePoint(33.643333307902,-112.119966665904,0)
zoneGC5F1Traditional.DistanceRangeUOM = "Feet"
zoneGC5F1Traditional.ProximityRangeUOM = "Feet"
zoneGC5F1Traditional.OutOfRangeName = ""
zoneGC5F1Traditional.InRangeName = ""
zoneGC5F1Traditional.Media=zmediaBrightAngel

zoneGC71EEVirtual = Wherigo.Zone(cartGCB0B)
zoneGC71EEVirtual.Id="d5df0001-4716-4bbd-9a3f-6c74d73c1036"
zoneGC71EEVirtual.Name="GC71EE-Virtual"
zoneGC71EEVirtual.Description=[[]]
zoneGC71EEVirtual.Visible=false
zoneGC71EEVirtual.DistanceRange = Distance(-1, "feet")
zoneGC71EEVirtual.ShowObjects="OnEnter"
zoneGC71EEVirtual.ProximityRange = Distance(200, "feet")
zoneGC71EEVirtual.AllowSetPositionTo=false
zoneGC71EEVirtual.Active=false
zoneGC71EEVirtual.Points = {
  ZonePoint(33.64254,-112.11772,0),
  ZonePoint(33.64254,-112.11768,0),
  ZonePoint(33.6425,-112.11768,0),
  ZonePoint(33.6425,-112.11772,0)
}
zoneGC71EEVirtual.OriginalPoint = ZonePoint(33.6425166447957,-112.11769999663,0)
zoneGC71EEVirtual.DistanceRangeUOM = "Feet"
zoneGC71EEVirtual.ProximityRangeUOM = "Feet"
zoneGC71EEVirtual.OutOfRangeName = ""
zoneGC71EEVirtual.InRangeName = ""
zoneGC71EEVirtual.Media=zmediaSantaMaria

zoneGC14NWVMulti = Wherigo.Zone(cartGCB0B)
zoneGC14NWVMulti.Id="8ec37953-a53b-4868-a560-61ef3487032f"
zoneGC14NWVMulti.Name="GC14NWV-Multi"
zoneGC14NWVMulti.Description=[[]]
zoneGC14NWVMulti.Visible=false
zoneGC14NWVMulti.DistanceRange = Distance(-1, "feet")
zoneGC14NWVMulti.ShowObjects="OnEnter"
zoneGC14NWVMulti.ProximityRange = Distance(200, "feet")
zoneGC14NWVMulti.AllowSetPositionTo=false
zoneGC14NWVMulti.Active=false
zoneGC14NWVMulti.Points = {
  ZonePoint(33.64005,-112.11877,0),
  ZonePoint(33.64005,-112.11873,0),
  ZonePoint(33.64001,-112.11873,0),
  ZonePoint(33.64001,-112.11877,0)
}
zoneGC14NWVMulti.OriginalPoint = ZonePoint(33.6400333404541,-112.11875,0)
zoneGC14NWVMulti.DistanceRangeUOM = "Feet"
zoneGC14NWVMulti.ProximityRangeUOM = "Feet"
zoneGC14NWVMulti.OutOfRangeName = ""
zoneGC14NWVMulti.InRangeName = ""
zoneGC14NWVMulti.Media=zmediaPhotoHunt

zoneGC51DEvent = Wherigo.Zone(cartGCB0B)
zoneGC51DEvent.Id="ca1d0dd1-0900-4946-a6b0-e2d2b29bec57"
zoneGC51DEvent.Name="GC51D-Event"
zoneGC51DEvent.Description=[[]]
zoneGC51DEvent.Visible=false
zoneGC51DEvent.DistanceRange = Distance(-1, "feet")
zoneGC51DEvent.ShowObjects="OnEnter"
zoneGC51DEvent.ProximityRange = Distance(200, "feet")
zoneGC51DEvent.AllowSetPositionTo=false
zoneGC51DEvent.Active=false
zoneGC51DEvent.Points = {
  ZonePoint(33.64,-112.12071,0),
  ZonePoint(33.64,-112.12066,0),
  ZonePoint(33.63996,-112.12066,0),
  ZonePoint(33.63996,-112.12071,0)
}
zoneGC51DEvent.OriginalPoint = ZonePoint(33.6399833043416,-112.120683336258,0)
zoneGC51DEvent.DistanceRangeUOM = "Feet"
zoneGC51DEvent.ProximityRangeUOM = "Feet"
zoneGC51DEvent.OutOfRangeName = ""
zoneGC51DEvent.InRangeName = ""
zoneGC51DEvent.Media=zmediaHooters

zoneGCB0BsCache = Wherigo.Zone(cartGCB0B)
zoneGCB0BsCache.Id="78beb540-195e-42c9-86e2-9e9cb3a953bb"
zoneGCB0BsCache.Name="GCB0Bs Cache"
zoneGCB0BsCache.Description=[[]]
zoneGCB0BsCache.Visible=false
zoneGCB0BsCache.DistanceRange = Distance(-1, "feet")
zoneGCB0BsCache.ShowObjects="OnEnter"
zoneGCB0BsCache.ProximityRange = Distance(10, "feet")
zoneGCB0BsCache.AllowSetPositionTo=false
zoneGCB0BsCache.Active=false
zoneGCB0BsCache.Points = {
  ZonePoint(33.64057,-112.12069,0),
  ZonePoint(33.64057,-112.12068,0),
  ZonePoint(33.64056,-112.12068,0),
  ZonePoint(33.64056,-112.12069,0)
}
zoneGCB0BsCache.OriginalPoint = ZonePoint(33.6405666351318,-112.120683336258,0)
zoneGCB0BsCache.DistanceRangeUOM = "Feet"
zoneGCB0BsCache.ProximityRangeUOM = "Feet"
zoneGCB0BsCache.OutOfRangeName = ""
zoneGCB0BsCache.InRangeName = ""

-- Characters --

-- Items --

-- Tasks --
ztaskGC27FDUnknown = Wherigo.ZTask(cartGCB0B)
ztaskGC27FDUnknown.Id="ecb270a9-035c-407e-ba77-28447f85e152"
ztaskGC27FDUnknown.Name="GC27FD-Unknown"
ztaskGC27FDUnknown.Description=[[In the Shadow of the Pyramid]]
ztaskGC27FDUnknown.Visible=false
ztaskGC27FDUnknown.Active=true
ztaskGC27FDUnknown.Complete=false
ztaskGC27FDUnknown.CorrectState = "None"

ztaskGC51DEvent = Wherigo.ZTask(cartGCB0B)
ztaskGC51DEvent.Id="85e0c7c0-c147-4922-9890-f7881666ddca"
ztaskGC51DEvent.Name="GC51D-Event"
ztaskGC51DEvent.Description=[[First Phoenix Geocachers "Happy Hour"]]
ztaskGC51DEvent.Visible=false
ztaskGC51DEvent.Active=false
ztaskGC51DEvent.Complete=false
ztaskGC51DEvent.CorrectState = "None"

ztaskGC71EEVirtual = Wherigo.ZTask(cartGCB0B)
ztaskGC71EEVirtual.Id="8d0ec256-7a36-4d1f-a59b-6be35359e4e9"
ztaskGC71EEVirtual.Name="GC71EE-Virtual"
ztaskGC71EEVirtual.Description=[[GCNP Santa Maria Spring]]
ztaskGC71EEVirtual.Visible=false
ztaskGC71EEVirtual.Active=false
ztaskGC71EEVirtual.Complete=false
ztaskGC71EEVirtual.CorrectState = "None"

ztaskGC5F1Traditional = Wherigo.ZTask(cartGCB0B)
ztaskGC5F1Traditional.Id="5a56cf39-4611-4cab-8b28-bb2bbc3c3adb"
ztaskGC5F1Traditional.Name="GC5F1-Traditional"
ztaskGC5F1Traditional.Description=[[GCNP Bright Angel]]
ztaskGC5F1Traditional.Visible=false
ztaskGC5F1Traditional.Active=false
ztaskGC5F1Traditional.Complete=false
ztaskGC5F1Traditional.CorrectState = "None"

ztaskGC14NWVMulti = Wherigo.ZTask(cartGCB0B)
ztaskGC14NWVMulti.Id="bc50f444-acc5-44d8-829b-47c6d4ba0a4e"
ztaskGC14NWVMulti.Name="GC14NWV-Multi"
ztaskGC14NWVMulti.Description=[[Photo Hunt Cache]]
ztaskGC14NWVMulti.Visible=false
ztaskGC14NWVMulti.Active=false
ztaskGC14NWVMulti.Complete=false
ztaskGC14NWVMulti.CorrectState = "None"

-- Cartridge Variables --
Emulator = true
PName = ""
DeviceID = ""
cartGCB0B.ZVariables = {Emulator = true, PName = "", DeviceID = ""}

-- Builder Variables (to be read by the builder only) --
buildervar = {}
buildervar.Emulator = {}
buildervar.Emulator.Id ="0b906b46-77b7-457e-a0cb-edcb13a57feb"
buildervar.Emulator.Name = "Emulator"
buildervar.Emulator.Type = "Flag"
buildervar.Emulator.Data=[[True]]
buildervar.Emulator.Description=[[]]

buildervar.PName = {}
buildervar.PName.Id ="1901aed9-b10f-4c88-ba61-0639e5e26414"
buildervar.PName.Name = "PName"
buildervar.PName.Type = "String"
buildervar.PName.Data=[[]]
buildervar.PName.Description=[[]]

buildervar.DeviceID = {}
buildervar.DeviceID.Id ="57d7347e-b213-4d66-9a9b-638b494d7fcc"
buildervar.DeviceID.Name = "DeviceID"
buildervar.DeviceID.Type = "String"
buildervar.DeviceID.Data=[[]]
buildervar.DeviceID.Description=[[]]


-- ZTimers --

-- Inputs --

--
-- Events/Conditions/Actions --
--

-------------------------------------------------------------------------------
------Builder Generated functions, Do not Edit, this will be overwritten------
-------------------------------------------------------------------------------

function cartGCB0B:OnStart()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
PName = Player.Name
DeviceID = Env.DeviceID
if   Wherigo.NoCaseEquals(DeviceID,"Desktop") and not Wherigo.NoCaseEquals(PName,"Builder") then
Emulator = true
Wherigo.MessageBox{Text=[[Sorry, GCB0B would not approve of you cheating. This wherigo can only be played at the location.]],}
else
Emulator = false
Wherigo.PlayAudio(zmediaFinal)
Wherigo.Dialog{{Text=[[Welcome, ]]..Player.Name..[[, to the Wherigo dedicated to the memory of GCB0B.]],Media=zmediaGCB0B},{Text=[[This wherigo will help you get to know one of Arizona's original cachers.]],Media=zmediaGCB0B},{Text=[[The first Cache by GCB0B that you will learn about is his Unknown cache.]],Media=zmediaGCB0B},{Text=[[A little trivia to start-GCB0B was the First Finder of Arizona's Oldest Geocache-GC57 Geocache.]],Media=zmediaGCB0B},{Text=[[Now let's head over to the Unknown area and I'll tell you a bit about GCB0B'c Unknown Cache.]],Media=zmediaGCB0B},}
zoneGC27FDUnknown.Visible = true
zoneGC27FDUnknown.Active = true
ztaskGC27FDUnknown.Visible = true
ztaskGC27FDUnknown.Active = true
end
end

function zoneGC27FDUnknown:OnEnter()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   Emulator == true then
Wherigo.MessageBox{Text=[[Sorry-GCB0B says you're playing on the emulator.]],Media=zmediaGCB0B,}
else
Wherigo.PlayAudio(zmediaSound)
Wherigo.Dialog{{Text=[[In the Shadow of the Pyramid was placed 11/11/2001. ]],Media=zmediaPyramid},{Text=[[This puzzle is one of the few AZ puzzles that does not abide by the 2 mile rule. It's also one of the only puzzles that solves for just the whole minutes. ]],Media=zmediaPyramid},{Text=[[It really is a great puzzle and I challenge you to check it out.]],Media=zmediaGCB0B},{Text=[[Now you'll need to walk over to find out about one of GCB0B's Traditional caches.]],Media=zmediaGCB0B},}
ztaskGC27FDUnknown.Complete = true
zoneGC27FDUnknown.Visible = false
zoneGC5F1Traditional.Active = true
ztaskGC5F1Traditional.Active = true
zoneGC5F1Traditional.Visible = true
ztaskGC5F1Traditional.Visible = true
end
end

function zoneGC5F1Traditional:OnEnter()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   Emulator == true then
Wherigo.MessageBox{Text=[[Come on, really? You want to cheat GCB0B?]],Media=zmediaGCB0B,}
else
Wherigo.PlayAudio(zmediaSound)
Wherigo.Dialog{{Text=[[GCNP Bright Angel is the only cache with a log in Grand Canyon. ]],Media=zmediaBrightAngel},{Text=[[It was placed 4/3/2001 and uses the NPS log book.]],Media=zmediaBrightAngel},{Text=[[This truely is one of the great cache ideas in Arizona.]],Media=zmediaGCB0B},{Text=[[Now, let's run over to one of GCB0B's Virtual caches, also in Grand Canyon.]],Media=zmediaGCB0B},{Text=[[Another interesting note about one of GCB0B's Traditional caches  is that his T824 Table Mesa cache is the second oldest in the state.]],Media=zmediaGCB0B},}
ztaskGC5F1Traditional.Complete = true
zoneGC5F1Traditional.Visible = false
ztaskGC71EEVirtual.Active = true
zoneGC71EEVirtual.Active = true
zoneGC71EEVirtual.Visible = true
ztaskGC71EEVirtual.Visible = true
end
end

function zoneGC71EEVirtual:OnEnter()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   Emulator == true then
Wherigo.MessageBox{Text=[[No! No! No!-Now you're making GCB0B Mad.]],Media=zmediaGCB0B,}
else
Wherigo.PlayAudio(zmediaSound)
Wherigo.Dialog{{Text=[[GCNP Santa Maria Spring is just one of 5 of GCB0B's Virtual Caches.]],Media=zmediaSantaMaria},{Text=[[This Virtual was placed 7/16/2002.]],Media=zmediaSantaMaria},{Text=[[In order to log it, you must hike down the Hermit Trail to a spring and rest house and snap a photo.]],Media=zmediaSantaMaria},{Text=[[Another great Virtual that gets people out of their cars and using their legs.]],Media=zmediaGCB0B},{Text=[[Another novel Virtual of GCB0B's is GC46AA Photograph Arizona, placed 3/29/02]],Media=zmediaGCB0B},{Text=[[This cache requires the finder to go to the coordinates and snap photos, then pick a new spot in AZ for the next finder.]],Media=zmediaGCB0B},{Text=[[Now let's head over to learn about one of GCB0B's Multis]],Media=zmediaGCB0B},}
ztaskGC71EEVirtual.Complete = true
ztaskGC14NWVMulti.Active = true
zoneGC14NWVMulti.Active = true
zoneGC71EEVirtual.Visible = false
zoneGC14NWVMulti.Visible = true
ztaskGC14NWVMulti.Visible = true
end
end

function zoneGC14NWVMulti:OnEnter()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   Emulator == true then
Wherigo.MessageBox{Text=[[Last Chance. The Wherigo will shut down at the next Area if you are using the emulator.]],Media=zmediaGCB0B,}
else
Wherigo.PlayAudio(zmediaSound)
Wherigo.Dialog{{Text=[[Photo Hunt Cache is located North of Phoenix near I17 and the Carefree Highway.]],Media=zmediaGCB0B},{Text=[[This cache was placed 7/27/2007 and is different from most Multi Caches.]],Media=zmediaPhotoHunt},{Text=[[Instead of getting coordinates and different waypoints, this cache gives you 2 pictures.]],Media=zmediaPhotoHunt},{Text=[[One picture is taken facing North and the other facing East. Both are taken from the cache site.]],Media=zmediaPhotoHunt},{Text=[[You have to find that spot by wandering in the desert until you find the point where the pictures were taken.]],Media=zmediaPhotoHunt},{Text=[[Now, let's head over to the last cache type that GCB0B had, the Event Cache.]],Media=zmediaGCB0B},{Text=[[GCB0B also placed the second oldest active Multicache in AZ-GC51C, A Grand Undertaking.]],Media=zmediaGCB0B},}
ztaskGC14NWVMulti.Complete = true
zoneGC14NWVMulti.Visible = false
ztaskGC51DEvent.Active = true
ztaskGC51DEvent.Visible = true
zoneGC51DEvent.Visible = true
zoneGC51DEvent.Active = true
end
end

function zoneGC51DEvent:OnEnter()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   Emulator == true then
Wherigo.MessageBox{Text=[[I warned ya!]],Media=zmediaGCB0B,}
cartGCB0B.Complete = false
Wherigo.Command("SaveClose")
else
Wherigo.PlayAudio(zmediaSound)
Wherigo.Dialog{{Text=[[The First Phoenix Geocachers "Happy Hour" was Arizona first Event Cache.]],Media=zmediaHooters},{Text=[[GCB0B bought the first pitcher and invited other local cachers to join him here at Hooters 10 years ago.]],Media=zmediaHooters},{Text=[[GCB0B was truely a great inspiration to many Arizona geocachers and I hope that you learned a little bit about him doing this wherigo.]],Media=zmediaGCB0B},{Text=[[No go get that cache. Remember-It's a micro.]],Media=zmediaGCB0B},}
ztaskGC51DEvent.Complete = true
zoneGC51DEvent.Visible = false
ztaskGC51DEvent.Visible = false
zoneGCB0BsCache.Visible = true
zoneGCB0BsCache.Active = true
end
end

function zoneGCB0BsCache:OnProximity()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   ztaskGC51DEvent.Complete == true then
Wherigo.PlayAudio(zmediaFinal)
Wherigo.MessageBox{Text=[[Your cartridge has been marked complete and saved. The cache is right there!]],Media=zmediaGCB0B,}
cartGCB0B.Complete = true
cartGCB0B:RequestSync()
end
end
------End Builder Generated functions, Do not Edit, this will be overwritten------
-------------------------------------------------------------------------------
------Builder Generated callbacks, Do not Edit, this will be overwritten------
-------------------------------------------------------------------------------
--#LASTCALLBACKKEY=0#--
------End Builder Generated callbacks, Do not Edit, this will be overwritten------
-- #Author Functions Go Here# --
-- #End Author Functions# --
-- Nothing after this line --
return cartGCB0B
