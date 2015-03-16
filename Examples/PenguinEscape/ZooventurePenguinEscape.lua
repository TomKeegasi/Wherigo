require "Wherigo"
ZonePoint = Wherigo.ZonePoint
Distance = Wherigo.Distance
Player = Wherigo.Player

-- #Author Directives Go Here# --
-- #End Author Directives# --

cartZooventurePenguinEscape = Wherigo.ZCartridge()

-- MessageBox Callback Functions Table used by the Builder --
cartZooventurePenguinEscape.MsgBoxCBFuncs = {}

zmediaAlarmClcok = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaAlarmClcok.Name="AlarmClcok"
zmediaAlarmClcok.Description=""
zmediaAlarmClcok.AltText=""
zmediaAlarmClcok.Id="125d8779-e523-4fe4-9277-f85edbf0bf6f"
zmediaAlarmClcok.Resources = {
{ Type = "jpg", Filename = "alarmclock_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "alarmclock_garmin.jpg", Directives = {},},
}
zmediaAlarmClock_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaAlarmClock_MSG.Name="AlarmClock_MSG"
zmediaAlarmClock_MSG.Description=""
zmediaAlarmClock_MSG.AltText=""
zmediaAlarmClock_MSG.Id="808d6928-b8c8-4fd2-9fbe-6600c2fc76ca"
zmediaAlarmClock_MSG.Resources = {
{ Type = "jpg", Filename = "alarmclockmsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "alarmclockmsg_garmin.jpg", Directives = {},},
}
zmediaBenthePenguin = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaBenthePenguin.Name="BenthePenguin"
zmediaBenthePenguin.Description=""
zmediaBenthePenguin.AltText=""
zmediaBenthePenguin.Id="0be40dce-7ca2-4d43-a35e-d3c4321650bd"
zmediaBenthePenguin.Resources = {
{ Type = "jpg", Filename = "benpenguin_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "benpenguin_garmin.jpg", Directives = {},},
}
zmediaBenthePenguin_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaBenthePenguin_MSG.Name="BenthePenguin_MSG"
zmediaBenthePenguin_MSG.Description=""
zmediaBenthePenguin_MSG.AltText=""
zmediaBenthePenguin_MSG.Id="940f3f88-06f0-4c09-a821-40e3e90495e8"
zmediaBenthePenguin_MSG.Resources = {
{ Type = "jpg", Filename = "benpenguinmsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "benpenguinmsg_garmin.jpg", Directives = {},},
}
zmediaBrianthePenguin = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaBrianthePenguin.Name="BrianthePenguin"
zmediaBrianthePenguin.Description=""
zmediaBrianthePenguin.AltText=""
zmediaBrianthePenguin.Id="b3dc6fc8-dec3-4aaf-ad3b-c71abe3644d0"
zmediaBrianthePenguin.Resources = {
{ Type = "jpg", Filename = "brianpenguin_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "brianpenguin_garmin.jpg", Directives = {},},
}
zmediaBrianthePenguin_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaBrianthePenguin_MSG.Name="BrianthePenguin_MSG"
zmediaBrianthePenguin_MSG.Description=""
zmediaBrianthePenguin_MSG.AltText=""
zmediaBrianthePenguin_MSG.Id="409c1de4-b2d4-4897-acc4-863a901c53d3"
zmediaBrianthePenguin_MSG.Resources = {
{ Type = "jpg", Filename = "brianpenguinmsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "brianpenguinmsg_garmin.jpg", Directives = {},},
}
zmediaBrownBear = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaBrownBear.Name="BrownBear"
zmediaBrownBear.Description=""
zmediaBrownBear.AltText=""
zmediaBrownBear.Id="bd648c6c-6db5-4de5-8d34-47ae54e32eff"
zmediaBrownBear.Resources = {
{ Type = "jpg", Filename = "brownbear_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "brownbear_garmin.jpg", Directives = {},},
}
zmediaBrownBear_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaBrownBear_MSG.Name="BrownBear_MSG"
zmediaBrownBear_MSG.Description=""
zmediaBrownBear_MSG.AltText=""
zmediaBrownBear_MSG.Id="ba578fae-acd9-4763-adc3-071cae91937e"
zmediaBrownBear_MSG.Resources = {
{ Type = "jpg", Filename = "brownbearmsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "brownbearmsg_garmin.jpg", Directives = {},},
}
zmediaBrownBearSleeping = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaBrownBearSleeping.Name="BrownBearSleeping"
zmediaBrownBearSleeping.Description=""
zmediaBrownBearSleeping.AltText=""
zmediaBrownBearSleeping.Id="ceabcc05-204f-4b87-b1f5-b867118ad2eb"
zmediaBrownBearSleeping.Resources = {
{ Type = "jpg", Filename = "brownbearsleeping_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "brownbearsleeping_garmin.jpg", Directives = {},},
}
zmediaBrownBearSleeping_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaBrownBearSleeping_MSG.Name="BrownBearSleeping_MSG"
zmediaBrownBearSleeping_MSG.Description=""
zmediaBrownBearSleeping_MSG.AltText=""
zmediaBrownBearSleeping_MSG.Id="f4608baa-472b-4a41-8cbd-427e7ede410e"
zmediaBrownBearSleeping_MSG.Resources = {
{ Type = "jpg", Filename = "brownbearsleepingmsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "brownbearsleepingmsg_garmin.jpg", Directives = {},},
}
zmediaCake = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaCake.Name="Cake"
zmediaCake.Description=""
zmediaCake.AltText=""
zmediaCake.Id="1342d630-de21-49cb-b53e-e08001315158"
zmediaCake.Resources = {
{ Type = "jpg", Filename = "cake_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "cake_garmin.jpg", Directives = {},},
}
zmediaCake_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaCake_MSG.Name="Cake_MSG"
zmediaCake_MSG.Description=""
zmediaCake_MSG.AltText=""
zmediaCake_MSG.Id="32cbd0d0-5385-41a6-be28-655c72a25fdd"
zmediaCake_MSG.Resources = {
{ Type = "jpg", Filename = "cakemsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "cakemsg_garmin.jpg", Directives = {},},
}
zmediaColobus = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaColobus.Name="Colobus"
zmediaColobus.Description=""
zmediaColobus.AltText=""
zmediaColobus.Id="ed8af156-512d-4595-b1f9-af19700ac7b7"
zmediaColobus.Resources = {
{ Type = "jpg", Filename = "colobus_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "colobus_garmin.jpg", Directives = {},},
}
zmediaColobus_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaColobus_MSG.Name="Colobus_MSG"
zmediaColobus_MSG.Description=""
zmediaColobus_MSG.AltText=""
zmediaColobus_MSG.Id="2003b587-eb9b-4b01-a6b7-e72fcc753b14"
zmediaColobus_MSG.Resources = {
{ Type = "jpg", Filename = "colobusmsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "colobusmsg_garmin.jpg", Directives = {},},
}
zmediaDrainPlug = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaDrainPlug.Name="DrainPlug"
zmediaDrainPlug.Description=""
zmediaDrainPlug.AltText=""
zmediaDrainPlug.Id="a552ab3c-14ae-4904-ba5c-5cbe698db539"
zmediaDrainPlug.Resources = {
{ Type = "jpg", Filename = "drainplug_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "drainplug_garmin.jpg", Directives = {},},
}
zmediaDrainPlug_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaDrainPlug_MSG.Name="DrainPlug_MSG"
zmediaDrainPlug_MSG.Description=""
zmediaDrainPlug_MSG.AltText=""
zmediaDrainPlug_MSG.Id="a804942d-c44a-4687-8946-42a63f441c4f"
zmediaDrainPlug_MSG.Resources = {
{ Type = "jpg", Filename = "drainplugmsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "drainplugmsg_garmin.jpg", Directives = {},},
}
zmediaEgg = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaEgg.Name="Egg"
zmediaEgg.Description=""
zmediaEgg.AltText=""
zmediaEgg.Id="f859292e-950b-4650-9186-0a4f7d704506"
zmediaEgg.Resources = {
{ Type = "jpg", Filename = "egg2_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "egg2_garmin.jpg", Directives = {},},
}
zmediaEgg_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaEgg_MSG.Name="Egg_MSG"
zmediaEgg_MSG.Description=""
zmediaEgg_MSG.AltText=""
zmediaEgg_MSG.Id="fa886cec-4bdd-4bb6-b820-c179910cf755"
zmediaEgg_MSG.Resources = {
{ Type = "jpg", Filename = "egg2msg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "egg2msg_garmin.jpg", Directives = {},},
}
zmediaEmptyFoliage = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaEmptyFoliage.Name="EmptyFoliage"
zmediaEmptyFoliage.Description=""
zmediaEmptyFoliage.AltText=""
zmediaEmptyFoliage.Id="498f939d-c2b1-415f-8393-58e51b8a151f"
zmediaEmptyFoliage.Resources = {
{ Type = "jpg", Filename = "emptyfoliage_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "emptyfoliage_garmin.jpg", Directives = {},},
}
zmediaHappyPig = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaHappyPig.Name="HappyPig"
zmediaHappyPig.Description=""
zmediaHappyPig.AltText=""
zmediaHappyPig.Id="5ecaa52c-6a75-4823-b672-3601205c6f93"
zmediaHappyPig.Resources = {
{ Type = "jpg", Filename = "happypig_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "happypig_garmin.jpg", Directives = {},},
}
zmediaHappyPig_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaHappyPig_MSG.Name="HappyPig_MSG"
zmediaHappyPig_MSG.Description=""
zmediaHappyPig_MSG.AltText=""
zmediaHappyPig_MSG.Id="6a00f959-7833-49b8-b550-1a6b087ad840"
zmediaHappyPig_MSG.Resources = {
{ Type = "jpg", Filename = "happypigmsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "happypigmsg_garmin.jpg", Directives = {},},
}
zmediaHen = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaHen.Name="Hen"
zmediaHen.Description=""
zmediaHen.AltText=""
zmediaHen.Id="4abd3915-1e29-45c4-8b72-2d4ec8d8b3b2"
zmediaHen.Resources = {
{ Type = "jpg", Filename = "hen_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "hen_garmin.jpg", Directives = {},},
}
zmediaHen_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaHen_MSG.Name="Hen_MSG"
zmediaHen_MSG.Description=""
zmediaHen_MSG.AltText=""
zmediaHen_MSG.Id="ef54b0f4-20fa-4932-9612-62cd7695f7b4"
zmediaHen_MSG.Resources = {
{ Type = "jpg", Filename = "henmsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "henmsg_garmin.jpg", Directives = {},},
}
zmediaHippo = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaHippo.Name="Hippo"
zmediaHippo.Description=""
zmediaHippo.AltText=""
zmediaHippo.Id="294735b8-10de-45fd-b62d-276714a13bca"
zmediaHippo.Resources = {
{ Type = "jpg", Filename = "hippo_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "hippo_garmin.jpg", Directives = {},},
}
zmediaHippo_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaHippo_MSG.Name="Hippo_MSG"
zmediaHippo_MSG.Description=""
zmediaHippo_MSG.AltText=""
zmediaHippo_MSG.Id="df8369f5-11e4-41a9-a95b-4197efaedb49"
zmediaHippo_MSG.Resources = {
{ Type = "jpg", Filename = "hippomsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "hippomsg_garmin.jpg", Directives = {},},
}
zmediaHoney = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaHoney.Name="Honey"
zmediaHoney.Description=""
zmediaHoney.AltText=""
zmediaHoney.Id="96d7f696-bdf8-4126-bdae-e7fa78d69647"
zmediaHoney.Resources = {
{ Type = "jpg", Filename = "honey_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "honey_garmin.jpg", Directives = {},},
}
zmediaHoney_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaHoney_MSG.Name="Honey_MSG"
zmediaHoney_MSG.Description=""
zmediaHoney_MSG.AltText=""
zmediaHoney_MSG.Id="b198f737-4d3d-452c-b021-862c4712b674"
zmediaHoney_MSG.Resources = {
{ Type = "jpg", Filename = "honeymsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "honeymsg_garmin.jpg", Directives = {},},
}
zmediaJaredthePenguin = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaJaredthePenguin.Name="JaredthePenguin"
zmediaJaredthePenguin.Description=""
zmediaJaredthePenguin.AltText=""
zmediaJaredthePenguin.Id="d96555f4-113f-4cf0-a376-96956a1a1ea1"
zmediaJaredthePenguin.Resources = {
{ Type = "jpg", Filename = "jaredpenguin_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "jaredpenguin_garmin.jpg", Directives = {},},
}
zmediaJaredthePenguin_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaJaredthePenguin_MSG.Name="JaredthePenguin_MSG"
zmediaJaredthePenguin_MSG.Description=""
zmediaJaredthePenguin_MSG.AltText=""
zmediaJaredthePenguin_MSG.Id="fa3705de-62e2-4510-9737-adb53bba6f28"
zmediaJaredthePenguin_MSG.Resources = {
{ Type = "jpg", Filename = "jaredpenguinmsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "jaredpenguinmsg_garmin.jpg", Directives = {},},
}
zmediaJenthePenguin = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaJenthePenguin.Name="JenthePenguin"
zmediaJenthePenguin.Description=""
zmediaJenthePenguin.AltText=""
zmediaJenthePenguin.Id="bb836d67-c806-4b80-8a1b-1949bbf26eaa"
zmediaJenthePenguin.Resources = {
{ Type = "jpg", Filename = "jenpenguin_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "jenpenguin_garmin.jpg", Directives = {},},
}
zmediaJenthePenguin_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaJenthePenguin_MSG.Name="JenthePenguin_MSG"
zmediaJenthePenguin_MSG.Description=""
zmediaJenthePenguin_MSG.AltText=""
zmediaJenthePenguin_MSG.Id="a979d816-9ae3-4b72-9c8b-ab72590fef47"
zmediaJenthePenguin_MSG.Resources = {
{ Type = "jpg", Filename = "jenpenguinmsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "jenpenguinmsg_garmin.jpg", Directives = {},},
}
zmediaKokothePenguin = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaKokothePenguin.Name="KokothePenguin"
zmediaKokothePenguin.Description=""
zmediaKokothePenguin.AltText=""
zmediaKokothePenguin.Id="6b3e560b-c2e2-4885-b599-1e633866eb62"
zmediaKokothePenguin.Resources = {
{ Type = "jpg", Filename = "kokopenguin_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "kokopenguin_garmin.jpg", Directives = {},},
}
zmediaKokothePenguin_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaKokothePenguin_MSG.Name="KokothePenguin_MSG"
zmediaKokothePenguin_MSG.Description=""
zmediaKokothePenguin_MSG.AltText=""
zmediaKokothePenguin_MSG.Id="7e060285-07ec-4969-b67f-28bd64f2b01e"
zmediaKokothePenguin_MSG.Resources = {
{ Type = "jpg", Filename = "kokopenguinmsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "kokopenguinmsg_garmin.jpg", Directives = {},},
}
zmediaLemon = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaLemon.Name="Lemon"
zmediaLemon.Description=""
zmediaLemon.AltText=""
zmediaLemon.Id="d862aefd-4d85-46ab-99e2-2deb9084e063"
zmediaLemon.Resources = {
{ Type = "jpg", Filename = "lemon_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "lemon_garmin.jpg", Directives = {},},
}
zmediaLemon_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaLemon_MSG.Name="Lemon_MSG"
zmediaLemon_MSG.Description=""
zmediaLemon_MSG.AltText=""
zmediaLemon_MSG.Id="f6994703-4821-4999-baca-b26248a41dd5"
zmediaLemon_MSG.Resources = {
{ Type = "jpg", Filename = "lemonmsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "lemonmsg_garmin.jpg", Directives = {},},
}
zmediaOrangMap = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaOrangMap.Name="OrangMap"
zmediaOrangMap.Description=""
zmediaOrangMap.AltText=""
zmediaOrangMap.Id="a5180a6d-483c-4568-a3d5-3744f23275a5"
zmediaOrangMap.Resources = {
{ Type = "jpg", Filename = "orangmap_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "orangmap_garmin.jpg", Directives = {},},
}
zmediaOrangutan1 = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaOrangutan1.Name="Orangutan1"
zmediaOrangutan1.Description=""
zmediaOrangutan1.AltText=""
zmediaOrangutan1.Id="06d281f7-8546-473f-9145-14516b3d7e05"
zmediaOrangutan1.Resources = {
{ Type = "jpg", Filename = "orangutan1_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "orangutan1_garmin.jpg", Directives = {},},
}
zmediaOrangutan2 = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaOrangutan2.Name="Orangutan2"
zmediaOrangutan2.Description=""
zmediaOrangutan2.AltText=""
zmediaOrangutan2.Id="d98d0ef5-9218-4942-85ab-480d9aaa1cce"
zmediaOrangutan2.Resources = {
{ Type = "jpg", Filename = "orangutan2_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "orangutan2_garmin.jpg", Directives = {},},
}
zmediaOrangutanPenguin = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaOrangutanPenguin.Name="OrangutanPenguin"
zmediaOrangutanPenguin.Description=""
zmediaOrangutanPenguin.AltText=""
zmediaOrangutanPenguin.Id="c1182606-6bb8-496a-aed7-883473b0e00c"
zmediaOrangutanPenguin.Resources = {
{ Type = "jpg", Filename = "orangutanpenguin_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "orangutanpenguin_garmin.jpg", Directives = {},},
}
zmediaPenguins = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaPenguins.Name="Penguins"
zmediaPenguins.Description=""
zmediaPenguins.AltText=""
zmediaPenguins.Id="bb98cc9b-a089-41b9-851a-fa5e0dce4171"
zmediaPenguins.Resources = {
{ Type = "jpg", Filename = "penguingroup_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "penguingroup_garmin.jpg", Directives = {},},
}
zmediaPenguins_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaPenguins_MSG.Name="Penguins_MSG"
zmediaPenguins_MSG.Description=""
zmediaPenguins_MSG.AltText=""
zmediaPenguins_MSG.Id="b9e53783-2086-4c03-9bb0-5f6efa4fb3a3"
zmediaPenguins_MSG.Resources = {
{ Type = "jpg", Filename = "penguingroupmsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "penguingroupmsg_garmin.jpg", Directives = {},},
}
zmediaPinkBackGorilla = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaPinkBackGorilla.Name="PinkBackGorilla"
zmediaPinkBackGorilla.Description=""
zmediaPinkBackGorilla.AltText=""
zmediaPinkBackGorilla.Id="097a07d1-5d1b-4bf4-9a55-d5a1af30f794"
zmediaPinkBackGorilla.Resources = {
{ Type = "jpg", Filename = "pinkbackgorilla_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "pinkbackgorilla_garmin.jpg", Directives = {},},
}
zmediaPinkBackGorilla_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaPinkBackGorilla_MSG.Name="PinkBackGorilla_MSG"
zmediaPinkBackGorilla_MSG.Description=""
zmediaPinkBackGorilla_MSG.AltText=""
zmediaPinkBackGorilla_MSG.Id="4611bb4e-804a-42a8-a5d0-665a19c6a4e4"
zmediaPinkBackGorilla_MSG.Resources = {
{ Type = "jpg", Filename = "pinkbackgorillamsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "pinkbackgorillamsg_garmin.jpg", Directives = {},},
}
zmediaPython = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaPython.Name="Python"
zmediaPython.Description=""
zmediaPython.AltText=""
zmediaPython.Id="6aac4579-838c-4d4b-a77d-f3e60d7d484c"
zmediaPython.Resources = {
{ Type = "jpg", Filename = "python_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "python_garmin.jpg", Directives = {},},
}
zmediaPython_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaPython_MSG.Name="Python_MSG"
zmediaPython_MSG.Description=""
zmediaPython_MSG.AltText=""
zmediaPython_MSG.Id="aa7e4d91-5a9d-4601-a762-21d97a31fe56"
zmediaPython_MSG.Resources = {
{ Type = "jpg", Filename = "pythonmsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "pythonmsg_garmin.jpg", Directives = {},},
}
zmediaSadPig = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaSadPig.Name="SadPig"
zmediaSadPig.Description=""
zmediaSadPig.AltText=""
zmediaSadPig.Id="02d6ae2e-778b-4846-8c6d-8c6e6d91401e"
zmediaSadPig.Resources = {
{ Type = "jpg", Filename = "sadpig_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "sadpig_garmin.jpg", Directives = {},},
}
zmediaSadPig_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaSadPig_MSG.Name="SadPig_MSG"
zmediaSadPig_MSG.Description=""
zmediaSadPig_MSG.AltText=""
zmediaSadPig_MSG.Id="4629334d-3ebb-43c0-b8b7-f182b833eefd"
zmediaSadPig_MSG.Resources = {
{ Type = "jpg", Filename = "sadpigmsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "sadpigmsg_garmin.jpg", Directives = {},},
}
zmediaSadTiger = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaSadTiger.Name="SadTiger"
zmediaSadTiger.Description=""
zmediaSadTiger.AltText=""
zmediaSadTiger.Id="2ca7f807-adca-4973-b7f4-99feba7eb767"
zmediaSadTiger.Resources = {
{ Type = "jpg", Filename = "sadtiger_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "sadtiger_garmin.jpg", Directives = {},},
}
zmediaSadTiger_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaSadTiger_MSG.Name="SadTiger_MSG"
zmediaSadTiger_MSG.Description=""
zmediaSadTiger_MSG.AltText=""
zmediaSadTiger_MSG.Id="34fe0531-8856-46cc-b763-e6e1870a747b"
zmediaSadTiger_MSG.Resources = {
{ Type = "jpg", Filename = "sadtigermsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "sadtigermsg_garmin.jpg", Directives = {},},
}
zmediaShampoo = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaShampoo.Name="Shampoo"
zmediaShampoo.Description=""
zmediaShampoo.AltText=""
zmediaShampoo.Id="41f247a8-2107-47b8-8673-b19e6e40b19c"
zmediaShampoo.Resources = {
{ Type = "jpg", Filename = "shampoo_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "shampoo_garmin.jpg", Directives = {},},
}
zmediaShampoo_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaShampoo_MSG.Name="Shampoo_MSG"
zmediaShampoo_MSG.Description=""
zmediaShampoo_MSG.AltText=""
zmediaShampoo_MSG.Id="43902154-3364-4849-9507-dbb6b31d38f5"
zmediaShampoo_MSG.Resources = {
{ Type = "jpg", Filename = "shampoomsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "shampoomsg_garmin.jpg", Directives = {},},
}
zmediaShaunathePenguin = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaShaunathePenguin.Name="ShaunathePenguin"
zmediaShaunathePenguin.Description=""
zmediaShaunathePenguin.AltText=""
zmediaShaunathePenguin.Id="d5cc712e-0c61-45b5-9dd7-2a281ff84620"
zmediaShaunathePenguin.Resources = {
{ Type = "jpg", Filename = "shaunapenguin_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "shaunapenguin_garmin.jpg", Directives = {},},
}
zmediaShaunathePenguin_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaShaunathePenguin_MSG.Name="ShaunathePenguin_MSG"
zmediaShaunathePenguin_MSG.Description=""
zmediaShaunathePenguin_MSG.AltText=""
zmediaShaunathePenguin_MSG.Id="3ea1d07d-7868-4348-be25-32610b61c02e"
zmediaShaunathePenguin_MSG.Resources = {
{ Type = "jpg", Filename = "shaunapenguinmsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "shaunapenguinmsg_garmin.jpg", Directives = {},},
}
zmediaSiamang = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaSiamang.Name="Siamang"
zmediaSiamang.Description=""
zmediaSiamang.AltText=""
zmediaSiamang.Id="5d58c9b1-0ab5-4a14-a555-af1aa3250b02"
zmediaSiamang.Resources = {
{ Type = "jpg", Filename = "siamang_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "siamang_garmin.jpg", Directives = {},},
}
zmediaSiamang_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaSiamang_MSG.Name="Siamang_MSG"
zmediaSiamang_MSG.Description=""
zmediaSiamang_MSG.AltText=""
zmediaSiamang_MSG.Id="e3c119a7-919c-4a42-870a-8b7c71cd2016"
zmediaSiamang_MSG.Resources = {
{ Type = "jpg", Filename = "siamangmsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "siamangmsg_garmin.jpg", Directives = {},},
}
zmediaSiamangVoice = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaSiamangVoice.Name="SiamangVoice"
zmediaSiamangVoice.Description=""
zmediaSiamangVoice.AltText=""
zmediaSiamangVoice.Id="dfbc8454-9627-4229-928b-46d6694d4378"
zmediaSiamangVoice.Resources = {
{ Type = "jpg", Filename = "siamangvoice_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "siamangvoice_garmin.jpg", Directives = {},},
}
zmediaSiamangVoice_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaSiamangVoice_MSG.Name="SiamangVoice_MSG"
zmediaSiamangVoice_MSG.Description=""
zmediaSiamangVoice_MSG.AltText=""
zmediaSiamangVoice_MSG.Id="ee3bad29-4a68-441e-8858-d2672d3e6e87"
zmediaSiamangVoice_MSG.Resources = {
{ Type = "jpg", Filename = "siamangvoicemsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "siamangvoicemsg_garmin.jpg", Directives = {},},
}
zmediaSilverBackGorilla = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaSilverBackGorilla.Name="SilverBackGorilla"
zmediaSilverBackGorilla.Description=""
zmediaSilverBackGorilla.AltText=""
zmediaSilverBackGorilla.Id="61165e65-4ad5-4130-98b1-c31dbeccece4"
zmediaSilverBackGorilla.Resources = {
{ Type = "jpg", Filename = "silverbackgorilla_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "silverbackgorilla_garmin.jpg", Directives = {},},
}
zmediaSilverBackGorilla_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaSilverBackGorilla_MSG.Name="SilverBackGorilla_MSG"
zmediaSilverBackGorilla_MSG.Description=""
zmediaSilverBackGorilla_MSG.AltText=""
zmediaSilverBackGorilla_MSG.Id="e692b5a3-4eac-4c13-8020-8433470a327e"
zmediaSilverBackGorilla_MSG.Resources = {
{ Type = "jpg", Filename = "silverbackgorillamsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "silverbackgorillamsg_garmin.jpg", Directives = {},},
}
zmediaSnowLeopard = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaSnowLeopard.Name="SnowLeopard"
zmediaSnowLeopard.Description=""
zmediaSnowLeopard.AltText=""
zmediaSnowLeopard.Id="cf36b7e7-549e-4abf-ad6b-66f190dd3f59"
zmediaSnowLeopard.Resources = {
{ Type = "jpg", Filename = "snowleopard_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "snowleopard_garmin.jpg", Directives = {},},
}
zmediaSnowLeopard_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaSnowLeopard_MSG.Name="SnowLeopard_MSG"
zmediaSnowLeopard_MSG.Description=""
zmediaSnowLeopard_MSG.AltText=""
zmediaSnowLeopard_MSG.Id="26381723-b333-4ffd-aefe-8c2d0e42905c"
zmediaSnowLeopard_MSG.Resources = {
{ Type = "jpg", Filename = "snowleopardmsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "snowleopardmsg_garmin.jpg", Directives = {},},
}
zmediaSnowyOwl = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaSnowyOwl.Name="SnowyOwl"
zmediaSnowyOwl.Description=""
zmediaSnowyOwl.AltText=""
zmediaSnowyOwl.Id="73c1f68c-24a0-42de-a514-790331a5b7a9"
zmediaSnowyOwl.Resources = {
{ Type = "jpg", Filename = "snowyowl_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "snowyowl_garmin.jpg", Directives = {},},
}
zmediaSnowyOwl_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaSnowyOwl_MSG.Name="SnowyOwl_MSG"
zmediaSnowyOwl_MSG.Description=""
zmediaSnowyOwl_MSG.AltText=""
zmediaSnowyOwl_MSG.Id="96c644f5-a57c-461e-88c7-9829b4b9eae8"
zmediaSnowyOwl_MSG.Resources = {
{ Type = "jpg", Filename = "snowyowlmsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "snowyowlmsg_garmin.jpg", Directives = {},},
}
zmediaStripeyTiger = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaStripeyTiger.Name="StripeyTiger"
zmediaStripeyTiger.Description=""
zmediaStripeyTiger.AltText=""
zmediaStripeyTiger.Id="a2ffb02b-e4b7-4180-99c7-9511d72f7fee"
zmediaStripeyTiger.Resources = {
{ Type = "jpg", Filename = "stripeytiger_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "stripeytiger_garmin.jpg", Directives = {},},
}
zmediaZebra_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaZebra_MSG.Name="Zebra_MSG"
zmediaZebra_MSG.Description=""
zmediaZebra_MSG.AltText=""
zmediaZebra_MSG.Id="9f6d50c0-6b27-48db-a5e9-e0b2f23e4379"
zmediaZebra_MSG.Resources = {
{ Type = "jpg", Filename = "zebramsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "zebramsg_garmin.jpg", Directives = {},},
}
zmediaZoneAustralasia = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaZoneAustralasia.Name="ZoneAustralasia"
zmediaZoneAustralasia.Description=""
zmediaZoneAustralasia.AltText=""
zmediaZoneAustralasia.Id="49de22dc-2f6f-4226-92ad-eefcdeb6577d"
zmediaZoneAustralasia.Resources = {
{ Type = "jpg", Filename = "zoneaustralia_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "zoneaustralia_garmin.jpg", Directives = {},},
}
zmediaIntro = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaIntro.Name="Intro"
zmediaIntro.Description=""
zmediaIntro.AltText=""
zmediaIntro.Id="ad06b0b3-5f95-4af2-bde0-9b9844f1862e"
zmediaIntro.Resources = {
{ Type = "jpg", Filename = "intro.jpg", Directives = {},},
}
zmediaSunBear_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaSunBear_MSG.Name="SunBear_MSG"
zmediaSunBear_MSG.Description=""
zmediaSunBear_MSG.AltText=""
zmediaSunBear_MSG.Id="8c754a60-e4d3-42e1-8541-1801a7e68e83"
zmediaSunBear_MSG.Resources = {
{ Type = "jpg", Filename = "sunbearmsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "sunbearmsg_garmin.jpg", Directives = {},},
}
zmediaZoneAfrica = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaZoneAfrica.Name="ZoneAfrica"
zmediaZoneAfrica.Description=""
zmediaZoneAfrica.AltText=""
zmediaZoneAfrica.Id="34775203-3e2d-4ccf-9231-6d24a2bc20e6"
zmediaZoneAfrica.Resources = {
{ Type = "jpg", Filename = "zoneafrica_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "zoneafrica_garmin.jpg", Directives = {},},
}
zmediaTigerStripes_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaTigerStripes_MSG.Name="TigerStripes_MSG"
zmediaTigerStripes_MSG.Description=""
zmediaTigerStripes_MSG.AltText=""
zmediaTigerStripes_MSG.Id="b953d73e-9c9a-4db9-ba81-008730bf418e"
zmediaTigerStripes_MSG.Resources = {
{ Type = "jpg", Filename = "tigerstripesmsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "tigerstripesmsg_garmin.jpg", Directives = {},},
}
zmediaZebra = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaZebra.Name="Zebra"
zmediaZebra.Description=""
zmediaZebra.AltText=""
zmediaZebra.Id="90b10857-3a36-47a6-83aa-1970c0eb92d6"
zmediaZebra.Resources = {
{ Type = "jpg", Filename = "zebra_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "zebra_garmin.jpg", Directives = {},},
}
zmediaSiamangWithVoice_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaSiamangWithVoice_MSG.Name="SiamangWithVoice_MSG"
zmediaSiamangWithVoice_MSG.Description=""
zmediaSiamangWithVoice_MSG.AltText=""
zmediaSiamangWithVoice_MSG.Id="b28993e1-29b0-4751-b458-5cd18b7c890b"
zmediaSiamangWithVoice_MSG.Resources = {
{ Type = "jpg", Filename = "siamangwithvoicemsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "siamangwithvoicemsg_garmin.jpg", Directives = {},},
}
zmediaZookeeper_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaZookeeper_MSG.Name="Zookeeper_MSG"
zmediaZookeeper_MSG.Description=""
zmediaZookeeper_MSG.AltText=""
zmediaZookeeper_MSG.Id="31325bd8-5d6b-4ad5-ab12-f003cf1adcef"
zmediaZookeeper_MSG.Resources = {
{ Type = "jpg", Filename = "zookeepermsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "zookeepermsg_garmin.jpg", Directives = {},},
}
zmediaSiamangWithVoice = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaSiamangWithVoice.Name="SiamangWithVoice"
zmediaSiamangWithVoice.Description=""
zmediaSiamangWithVoice.AltText=""
zmediaSiamangWithVoice.Id="738a567a-feff-49a5-83c1-4b5a756b3969"
zmediaSiamangWithVoice.Resources = {
{ Type = "jpg", Filename = "siamangwithvoice_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "siamangwithvoice_garmin.jpg", Directives = {},},
}
zmediaPoster = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaPoster.Name="Poster"
zmediaPoster.Description=""
zmediaPoster.AltText=""
zmediaPoster.Id="2aa9b6e1-bbd5-45a4-b04c-91d11d74cba5"
zmediaPoster.Resources = {
{ Type = "jpg", Filename = "zooposter.jpg", Directives = {},},
}
zmediaSunBear = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaSunBear.Name="SunBear"
zmediaSunBear.Description=""
zmediaSunBear.AltText=""
zmediaSunBear.Id="844a00d8-9559-49ce-a520-96550f108099"
zmediaSunBear.Resources = {
{ Type = "jpg", Filename = "sunbear_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "sunbear_garmin.jpg", Directives = {},},
}
zmediaZoneTemperateForest = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaZoneTemperateForest.Name="ZoneTemperateForest"
zmediaZoneTemperateForest.Description=""
zmediaZoneTemperateForest.AltText=""
zmediaZoneTemperateForest.Id="37486cd2-3769-4d3b-9e8e-cf982e58507b"
zmediaZoneTemperateForest.Resources = {
{ Type = "jpg", Filename = "zonetemperate_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "zonetemperate_garmin.jpg", Directives = {},},
}
zmediaZonePenguinPool = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaZonePenguinPool.Name="ZonePenguinPool"
zmediaZonePenguinPool.Description=""
zmediaZonePenguinPool.AltText=""
zmediaZonePenguinPool.Id="2e341197-6981-482e-b7b6-46058849495b"
zmediaZonePenguinPool.Resources = {
{ Type = "jpg", Filename = "zonepenguinpool_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "zonepenguinpool_garmin.jpg", Directives = {},},
}
zmediaStripeyTiger_MSG = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaStripeyTiger_MSG.Name="StripeyTiger_MSG"
zmediaStripeyTiger_MSG.Description=""
zmediaStripeyTiger_MSG.AltText=""
zmediaStripeyTiger_MSG.Id="c690abba-8363-4f54-b4ee-9307e6f25130"
zmediaStripeyTiger_MSG.Resources = {
{ Type = "jpg", Filename = "stripeytigermsg_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "stripeytigermsg_garmin.jpg", Directives = {},},
}
zmediaZoneAfricanVillage = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaZoneAfricanVillage.Name="ZoneAfricanVillage"
zmediaZoneAfricanVillage.Description=""
zmediaZoneAfricanVillage.AltText=""
zmediaZoneAfricanVillage.Id="6dd1590d-6abd-46d3-b034-77535442236a"
zmediaZoneAfricanVillage.Resources = {
{ Type = "jpg", Filename = "zoneafricanvillage_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "zoneafricanvillage_garmin.jpg", Directives = {},},
}
zmediaTigerStripes = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaTigerStripes.Name="TigerStripes"
zmediaTigerStripes.Description=""
zmediaTigerStripes.AltText=""
zmediaTigerStripes.Id="09a46535-a1af-4784-b631-7b2dbf54d172"
zmediaTigerStripes.Resources = {
{ Type = "jpg", Filename = "tigerstripes_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "tigerstripes_garmin.jpg", Directives = {},},
}
zmediaZookeeper = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaZookeeper.Name="Zookeeper"
zmediaZookeeper.Description=""
zmediaZookeeper.AltText=""
zmediaZookeeper.Id="b624b6c4-06ea-42cc-ba92-aeb44bd20a71"
zmediaZookeeper.Resources = {
{ Type = "jpg", Filename = "zookeeper_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "zookeeper_garmin.jpg", Directives = {},},
}
zmediaZoneTropicalAsia = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaZoneTropicalAsia.Name="ZoneTropicalAsia"
zmediaZoneTropicalAsia.Description=""
zmediaZoneTropicalAsia.AltText=""
zmediaZoneTropicalAsia.Id="1a08778a-a5c9-42c1-99ae-58950478ea5a"
zmediaZoneTropicalAsia.Resources = {
{ Type = "jpg", Filename = "zonetropicalasia_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "zonetropicalasia_garmin.jpg", Directives = {},},
}
zmediaZoneRainForest = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaZoneRainForest.Name="ZoneRainForest"
zmediaZoneRainForest.Description=""
zmediaZoneRainForest.AltText=""
zmediaZoneRainForest.Id="6d3158ba-b203-4d86-95d6-88048d4235c4"
zmediaZoneRainForest.Resources = {
{ Type = "jpg", Filename = "zonerainforest_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "zonerainforest_garmin.jpg", Directives = {},},
}
zmediaZoneNorthernTrail = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaZoneNorthernTrail.Name="ZoneNorthernTrail"
zmediaZoneNorthernTrail.Description=""
zmediaZoneNorthernTrail.AltText=""
zmediaZoneNorthernTrail.Id="7ee4c2dc-422b-417a-b6ca-34e01459638d"
zmediaZoneNorthernTrail.Resources = {
{ Type = "jpg", Filename = "zonenorthtrail_ppc.jpg", Directives = {},},
{ Type = "jpg", Filename = "zonenorthtrail_garmin.jpg", Directives = {},},
}
zmediaiconalarmclock = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconalarmclock.Name="iconalarmclock"
zmediaiconalarmclock.Description=""
zmediaiconalarmclock.AltText=""
zmediaiconalarmclock.Id="3b3a6754-0755-4a50-b732-cad595a6290d"
zmediaiconalarmclock.Resources = {
{ Type = "jpg", Filename = "iconalarmclock.jpg", Directives = {},},
}
zmediaiconbenpenguin = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconbenpenguin.Name="iconbenpenguin"
zmediaiconbenpenguin.Description=""
zmediaiconbenpenguin.AltText=""
zmediaiconbenpenguin.Id="651728fc-5737-4111-9fc8-d2037f07fd8a"
zmediaiconbenpenguin.Resources = {
{ Type = "jpg", Filename = "iconbenpenguin.jpg", Directives = {},},
}
zmediaiconbrianpenguin = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconbrianpenguin.Name="iconbrianpenguin"
zmediaiconbrianpenguin.Description=""
zmediaiconbrianpenguin.AltText=""
zmediaiconbrianpenguin.Id="9cb01790-e000-4dc9-acc5-dc77842bd9d4"
zmediaiconbrianpenguin.Resources = {
{ Type = "jpg", Filename = "iconbrianpenguin.jpg", Directives = {},},
}
zmediaiconbrownbear = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconbrownbear.Name="iconbrownbear"
zmediaiconbrownbear.Description=""
zmediaiconbrownbear.AltText=""
zmediaiconbrownbear.Id="0d1c7620-ee9a-4b4c-a1ca-1c393ce8cd39"
zmediaiconbrownbear.Resources = {
{ Type = "jpg", Filename = "iconbrownbear.jpg", Directives = {},},
}
zmediaiconcake = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconcake.Name="iconcake"
zmediaiconcake.Description=""
zmediaiconcake.AltText=""
zmediaiconcake.Id="82d09510-c0e2-4c3a-a2c7-436cdfd54155"
zmediaiconcake.Resources = {
{ Type = "jpg", Filename = "iconcake.jpg", Directives = {},},
}
zmediaiconcolobus = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconcolobus.Name="iconcolobus"
zmediaiconcolobus.Description=""
zmediaiconcolobus.AltText=""
zmediaiconcolobus.Id="b6dadc93-dbb9-4789-b4e9-6499a5ea08c0"
zmediaiconcolobus.Resources = {
{ Type = "jpg", Filename = "iconcolobus.jpg", Directives = {},},
}
zmediaicondrainplug = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaicondrainplug.Name="icondrainplug"
zmediaicondrainplug.Description=""
zmediaicondrainplug.AltText=""
zmediaicondrainplug.Id="3c4c3b7d-72af-4927-902c-acf8428bb03f"
zmediaicondrainplug.Resources = {
{ Type = "jpg", Filename = "icondrainplug.jpg", Directives = {},},
}
zmediaiconegg = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconegg.Name="iconegg"
zmediaiconegg.Description=""
zmediaiconegg.AltText=""
zmediaiconegg.Id="99058e69-a05e-4787-85da-9805405566f5"
zmediaiconegg.Resources = {
{ Type = "jpg", Filename = "iconegg.jpg", Directives = {},},
}
zmediaicongorilla = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaicongorilla.Name="icongorilla"
zmediaicongorilla.Description=""
zmediaicongorilla.AltText=""
zmediaicongorilla.Id="18493bf4-09d5-47db-89c1-97c1a261616e"
zmediaicongorilla.Resources = {
{ Type = "jpg", Filename = "icongorilla.jpg", Directives = {},},
}
zmediaiconhen = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconhen.Name="iconhen"
zmediaiconhen.Description=""
zmediaiconhen.AltText=""
zmediaiconhen.Id="8a192d4b-a4ea-438e-ac71-a9d8cac7cbcf"
zmediaiconhen.Resources = {
{ Type = "jpg", Filename = "iconhen.jpg", Directives = {},},
}
zmediaiconhippo = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconhippo.Name="iconhippo"
zmediaiconhippo.Description=""
zmediaiconhippo.AltText=""
zmediaiconhippo.Id="362c4d26-bc07-4408-9b6e-3254a561b4b2"
zmediaiconhippo.Resources = {
{ Type = "jpg", Filename = "iconhippo.jpg", Directives = {},},
}
zmediaiconhoney = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconhoney.Name="iconhoney"
zmediaiconhoney.Description=""
zmediaiconhoney.AltText=""
zmediaiconhoney.Id="d467901b-8488-413a-b35d-272590b84ea4"
zmediaiconhoney.Resources = {
{ Type = "jpg", Filename = "iconhoney.jpg", Directives = {},},
}
zmediaiconjaredpenguin = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconjaredpenguin.Name="iconjaredpenguin"
zmediaiconjaredpenguin.Description=""
zmediaiconjaredpenguin.AltText=""
zmediaiconjaredpenguin.Id="ef0b5db1-9c3f-4b83-949e-dbe62b68a720"
zmediaiconjaredpenguin.Resources = {
{ Type = "jpg", Filename = "iconjaredpenguin.jpg", Directives = {},},
}
zmediaiconjenpenguin = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconjenpenguin.Name="iconjenpenguin"
zmediaiconjenpenguin.Description=""
zmediaiconjenpenguin.AltText=""
zmediaiconjenpenguin.Id="17ffa33e-a33e-4744-b5c4-4b47ddb68d4f"
zmediaiconjenpenguin.Resources = {
{ Type = "jpg", Filename = "iconjenpenguin.jpg", Directives = {},},
}
zmediaiconkokopenguin = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconkokopenguin.Name="iconkokopenguin"
zmediaiconkokopenguin.Description=""
zmediaiconkokopenguin.AltText=""
zmediaiconkokopenguin.Id="d3a1da28-6980-4cf3-bebf-360a8e29c6aa"
zmediaiconkokopenguin.Resources = {
{ Type = "jpg", Filename = "iconkokopenguin.jpg", Directives = {},},
}
zmediaiconlemon = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconlemon.Name="iconlemon"
zmediaiconlemon.Description=""
zmediaiconlemon.AltText=""
zmediaiconlemon.Id="74ac8114-becb-4b77-b230-a609da71f789"
zmediaiconlemon.Resources = {
{ Type = "jpg", Filename = "iconlemon.jpg", Directives = {},},
}
zmediaiconpig = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconpig.Name="iconpig"
zmediaiconpig.Description=""
zmediaiconpig.AltText=""
zmediaiconpig.Id="f867b928-b2ff-4601-9b47-487c86b282cf"
zmediaiconpig.Resources = {
{ Type = "jpg", Filename = "iconpig.jpg", Directives = {},},
}
zmediaiconpython = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconpython.Name="iconpython"
zmediaiconpython.Description=""
zmediaiconpython.AltText=""
zmediaiconpython.Id="8bcbd5d4-a112-4c9b-88e5-73f4872a2e09"
zmediaiconpython.Resources = {
{ Type = "jpg", Filename = "iconpython.jpg", Directives = {},},
}
zmediaiconshampoo = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconshampoo.Name="iconshampoo"
zmediaiconshampoo.Description=""
zmediaiconshampoo.AltText=""
zmediaiconshampoo.Id="d05cc4fb-6231-4175-8f77-e3f51d36c050"
zmediaiconshampoo.Resources = {
{ Type = "jpg", Filename = "iconshampoo.jpg", Directives = {},},
}
zmediaiconshaunapenguin = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconshaunapenguin.Name="iconshaunapenguin"
zmediaiconshaunapenguin.Description=""
zmediaiconshaunapenguin.AltText=""
zmediaiconshaunapenguin.Id="6d3d8513-b5c4-48d7-8ff8-1d488b9d7c69"
zmediaiconshaunapenguin.Resources = {
{ Type = "jpg", Filename = "iconshaunapenguin.jpg", Directives = {},},
}
zmediaiconsimang = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconsimang.Name="iconsimang"
zmediaiconsimang.Description=""
zmediaiconsimang.AltText=""
zmediaiconsimang.Id="2c6bd5d4-1d51-4a7d-b097-da53e059b492"
zmediaiconsimang.Resources = {
{ Type = "jpg", Filename = "iconsiamang.jpg", Directives = {},},
}
zmediaiconsimangvoice = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconsimangvoice.Name="iconsimangvoice"
zmediaiconsimangvoice.Description=""
zmediaiconsimangvoice.AltText=""
zmediaiconsimangvoice.Id="db1333be-eac6-44e0-abe3-55a9b739b626"
zmediaiconsimangvoice.Resources = {
{ Type = "jpg", Filename = "iconsiamangvoice.jpg", Directives = {},},
}
zmediaiconsnowleopard = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconsnowleopard.Name="iconsnowleopard"
zmediaiconsnowleopard.Description=""
zmediaiconsnowleopard.AltText=""
zmediaiconsnowleopard.Id="8c86fc46-6f8a-4f47-b29d-be56f1c94bfa"
zmediaiconsnowleopard.Resources = {
{ Type = "jpg", Filename = "iconsnowleopard.jpg", Directives = {},},
}
zmediaiconsnowyowl = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconsnowyowl.Name="iconsnowyowl"
zmediaiconsnowyowl.Description=""
zmediaiconsnowyowl.AltText=""
zmediaiconsnowyowl.Id="563d72ab-ae7a-4947-b226-2e540337154a"
zmediaiconsnowyowl.Resources = {
{ Type = "jpg", Filename = "iconsnowyowl.jpg", Directives = {},},
}
zmediaiconsunbear = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconsunbear.Name="iconsunbear"
zmediaiconsunbear.Description=""
zmediaiconsunbear.AltText=""
zmediaiconsunbear.Id="0b3296a5-52cf-4236-8c20-d2b75395eaf2"
zmediaiconsunbear.Resources = {
{ Type = "jpg", Filename = "iconsunbear.jpg", Directives = {},},
}
zmediaicontiger = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaicontiger.Name="icontiger"
zmediaicontiger.Description=""
zmediaicontiger.AltText=""
zmediaicontiger.Id="10a9fb30-ce85-4ab9-ba80-9994b9817e9e"
zmediaicontiger.Resources = {
{ Type = "jpg", Filename = "icontiger.jpg", Directives = {},},
}
zmediaicontigerstripes = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaicontigerstripes.Name="icontigerstripes"
zmediaicontigerstripes.Description=""
zmediaicontigerstripes.AltText=""
zmediaicontigerstripes.Id="88aa5459-4df4-4456-89e6-1fdf5fae58f7"
zmediaicontigerstripes.Resources = {
{ Type = "jpg", Filename = "icontigerstripes.jpg", Directives = {},},
}
zmediaiconzebra = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconzebra.Name="iconzebra"
zmediaiconzebra.Description=""
zmediaiconzebra.AltText=""
zmediaiconzebra.Id="c062034c-2294-4b75-9c47-c52ed89859db"
zmediaiconzebra.Resources = {
{ Type = "jpg", Filename = "iconzebra.jpg", Directives = {},},
}
zmediaiconzookeeper = Wherigo.ZMedia(cartZooventurePenguinEscape)
zmediaiconzookeeper.Name="iconzookeeper"
zmediaiconzookeeper.Description=""
zmediaiconzookeeper.AltText=""
zmediaiconzookeeper.Id="459281b5-9094-4025-965f-363b5bd936f2"
zmediaiconzookeeper.Resources = {
{ Type = "jpg", Filename = "iconzookeeper.jpg", Directives = {},},
}
-- Cartridge Info --
cartZooventurePenguinEscape.Id="2320bd5c-9787-4de8-aec3-e4ac7a6abe71"
cartZooventurePenguinEscape.Name="Zooventure: Penguin Escape!"
cartZooventurePenguinEscape.Description=[[The Penguins in the Zoo are up to no good! It's up to you to help the Zookeeper figure out what's wrong and set things right.]]
cartZooventurePenguinEscape.Visible=true
cartZooventurePenguinEscape.Activity="TourGuide"
cartZooventurePenguinEscape.StartingLocationDescription=[[Go to the Penguin Pool at the Woodland Park Zoo to begin this cartridge.]]
cartZooventurePenguinEscape.StartingLocation = ZonePoint(47.666489,-122.350749,0)
cartZooventurePenguinEscape.Version=""
cartZooventurePenguinEscape.Company=""
cartZooventurePenguinEscape.Author=""
cartZooventurePenguinEscape.BuilderVersion="2.0.5129.5086"
cartZooventurePenguinEscape.CreateDate="1/5/2008 12:22:46 PM"
cartZooventurePenguinEscape.PublishDate="1/1/0001 12:00:00 AM"
cartZooventurePenguinEscape.UpdateDate="6/6/2008 10:53:41 AM"
cartZooventurePenguinEscape.LastPlayedDate="1/1/0001 12:00:00 AM"
cartZooventurePenguinEscape.TargetDevice="PocketPC"
cartZooventurePenguinEscape.TargetDeviceVersion="0"
cartZooventurePenguinEscape.StateId="1"
cartZooventurePenguinEscape.CountryId="2"
cartZooventurePenguinEscape.Complete=false
cartZooventurePenguinEscape.UseLogging=true

-- Zones --
zonePenguinPool = Wherigo.Zone(cartZooventurePenguinEscape)
zonePenguinPool.Id="2db859d7-fb02-41f1-abad-40f80428edb1"
zonePenguinPool.Name="Penguin Pool"
zonePenguinPool.Description=[[]]
zonePenguinPool.Visible=false
zonePenguinPool.DistanceRange = Distance(-1, "feet")
zonePenguinPool.ShowObjects="OnEnter"
zonePenguinPool.ProximityRange = Distance(200, "feet")
zonePenguinPool.AllowSetPositionTo=false
zonePenguinPool.Active=false
zonePenguinPool.Points = {
  ZonePoint(47.6687,-122.35278,0),
  ZonePoint(47.66864,-122.35258,0),
  ZonePoint(47.6686,-122.35233,0),
  ZonePoint(47.66872,-122.35209,0),
  ZonePoint(47.66894,-122.35204,0),
  ZonePoint(47.66904,-122.35214,0),
  ZonePoint(47.66913,-122.35235,0),
  ZonePoint(47.66916,-122.35254,0),
  ZonePoint(47.66912,-122.35278,0),
  ZonePoint(47.66898,-122.35288,0),
  ZonePoint(47.66882,-122.35287,0)
}
zonePenguinPool.OriginalPoint = ZonePoint(47.6687000274658,-122.352783330282,0)
zonePenguinPool.DistanceRangeUOM = "Feet"
zonePenguinPool.ProximityRangeUOM = "Feet"
zonePenguinPool.OutOfRangeName = ""
zonePenguinPool.InRangeName = ""
zonePenguinPool.Media=zmediaZonePenguinPool

zoneNorthernTrail = Wherigo.Zone(cartZooventurePenguinEscape)
zoneNorthernTrail.Id="25fa0074-2b5d-4fc1-8a40-10c2ee91fc89"
zoneNorthernTrail.Name="Northern Trail"
zoneNorthernTrail.Description=[[]]
zoneNorthernTrail.Visible=false
zoneNorthernTrail.DistanceRange = Distance(-1, "feet")
zoneNorthernTrail.ShowObjects="OnEnter"
zoneNorthernTrail.ProximityRange = Distance(200, "feet")
zoneNorthernTrail.AllowSetPositionTo=false
zoneNorthernTrail.Active=false
zoneNorthernTrail.Points = {
  ZonePoint(47.67047,-122.35059,0),
  ZonePoint(47.67075,-122.35034,0),
  ZonePoint(47.671,-122.34964,0),
  ZonePoint(47.67096,-122.34924,0),
  ZonePoint(47.67119,-122.34916,0),
  ZonePoint(47.67161,-122.34983,0),
  ZonePoint(47.67159,-122.35103,0),
  ZonePoint(47.67131,-122.35124,0),
  ZonePoint(47.671,-122.35098,0),
  ZonePoint(47.67073,-122.35106,0),
  ZonePoint(47.6705,-122.35124,0),
  ZonePoint(47.67035,-122.35098,0)
}
zoneNorthernTrail.OriginalPoint = ZonePoint(47.6704666773478,-122.35058333079,0)
zoneNorthernTrail.DistanceRangeUOM = "Feet"
zoneNorthernTrail.ProximityRangeUOM = "Feet"
zoneNorthernTrail.OutOfRangeName = ""
zoneNorthernTrail.InRangeName = ""
zoneNorthernTrail.Media=zmediaZoneNorthernTrail

zoneAustralasia = Wherigo.Zone(cartZooventurePenguinEscape)
zoneAustralasia.Id="a9eff983-b40a-4279-b7cb-a5de8dcc6fc4"
zoneAustralasia.Name="Australasia"
zoneAustralasia.Description=[[]]
zoneAustralasia.Visible=false
zoneAustralasia.DistanceRange = Distance(-1, "feet")
zoneAustralasia.ShowObjects="OnEnter"
zoneAustralasia.ProximityRange = Distance(200, "feet")
zoneAustralasia.AllowSetPositionTo=false
zoneAustralasia.Active=false
zoneAustralasia.Points = {
  ZonePoint(47.67003,-122.35154,0),
  ZonePoint(47.67026,-122.35154,0),
  ZonePoint(47.67034,-122.35135,0),
  ZonePoint(47.66998,-122.35075,0),
  ZonePoint(47.66964,-122.35024,0),
  ZonePoint(47.66936,-122.35009,0),
  ZonePoint(47.66904,-122.35005,0),
  ZonePoint(47.66879,-122.35025,0),
  ZonePoint(47.6686,-122.35066,0),
  ZonePoint(47.66873,-122.35143,0),
  ZonePoint(47.66879,-122.35149,0),
  ZonePoint(47.66899,-122.35149,0),
  ZonePoint(47.6692,-122.35145,0),
  ZonePoint(47.66935,-122.35133,0),
  ZonePoint(47.66955,-122.35115,0),
  ZonePoint(47.6698,-122.35121,0)
}
zoneAustralasia.OriginalPoint = ZonePoint(47.6700333277384,-122.351533317566,0)
zoneAustralasia.DistanceRangeUOM = "Feet"
zoneAustralasia.ProximityRangeUOM = "Feet"
zoneAustralasia.OutOfRangeName = ""
zoneAustralasia.InRangeName = ""
zoneAustralasia.Media=zmediaZoneAustralasia

zoneTropicalAsia = Wherigo.Zone(cartZooventurePenguinEscape)
zoneTropicalAsia.Id="021a2d5e-e6fb-4014-ac77-6d9402fa90bb"
zoneTropicalAsia.Name="Tropical Asia"
zoneTropicalAsia.Description=[[]]
zoneTropicalAsia.Visible=false
zoneTropicalAsia.DistanceRange = Distance(-1, "feet")
zoneTropicalAsia.ShowObjects="OnEnter"
zoneTropicalAsia.ProximityRange = Distance(200, "feet")
zoneTropicalAsia.AllowSetPositionTo=false
zoneTropicalAsia.Active=false
zoneTropicalAsia.Points = {
  ZonePoint(47.6698,-122.34914,0),
  ZonePoint(47.6699,-122.34936,0),
  ZonePoint(47.67003,-122.34957,0),
  ZonePoint(47.67014,-122.34969,0),
  ZonePoint(47.6703,-122.34961,0),
  ZonePoint(47.67035,-122.34924,0),
  ZonePoint(47.67026,-122.34891,0),
  ZonePoint(47.67008,-122.34862,0),
  ZonePoint(47.66989,-122.34827,0),
  ZonePoint(47.66971,-122.34819,0),
  ZonePoint(47.66946,-122.34811,0),
  ZonePoint(47.66926,-122.34784,0),
  ZonePoint(47.66894,-122.3478,0),
  ZonePoint(47.6688,-122.34791,0),
  ZonePoint(47.66851,-122.34782,0),
  ZonePoint(47.66836,-122.34788,0),
  ZonePoint(47.66826,-122.34816,0),
  ZonePoint(47.66825,-122.34845,0),
  ZonePoint(47.66837,-122.34877,0),
  ZonePoint(47.66848,-122.34908,0),
  ZonePoint(47.66861,-122.34927,0),
  ZonePoint(47.66882,-122.34936,0),
  ZonePoint(47.66905,-122.3494,0),
  ZonePoint(47.6692,-122.34938,0),
  ZonePoint(47.66936,-122.34924,0),
  ZonePoint(47.66955,-122.34912,0),
  ZonePoint(47.66967,-122.34915,0)
}
zoneTropicalAsia.OriginalPoint = ZonePoint(47.6697999954224,-122.34913333257,0)
zoneTropicalAsia.DistanceRangeUOM = "Feet"
zoneTropicalAsia.ProximityRangeUOM = "Feet"
zoneTropicalAsia.OutOfRangeName = ""
zoneTropicalAsia.InRangeName = ""
zoneTropicalAsia.Media=zmediaZoneTropicalAsia

zoneAfricanSavanna = Wherigo.Zone(cartZooventurePenguinEscape)
zoneAfricanSavanna.Id="055fa829-0474-4423-a01e-eb6ede5c14c9"
zoneAfricanSavanna.Name="African Savanna"
zoneAfricanSavanna.Description=[[]]
zoneAfricanSavanna.Visible=false
zoneAfricanSavanna.DistanceRange = Distance(-1, "feet")
zoneAfricanSavanna.ShowObjects="OnEnter"
zoneAfricanSavanna.ProximityRange = Distance(200, "feet")
zoneAfricanSavanna.AllowSetPositionTo=false
zoneAfricanSavanna.Active=false
zoneAfricanSavanna.Points = {
  ZonePoint(47.66684,-122.35115,0),
  ZonePoint(47.6667,-122.35085,0),
  ZonePoint(47.66668,-122.3504,0),
  ZonePoint(47.66675,-122.35,0),
  ZonePoint(47.66689,-122.34954,0),
  ZonePoint(47.66712,-122.34935,0),
  ZonePoint(47.66736,-122.34923,0),
  ZonePoint(47.66763,-122.34923,0),
  ZonePoint(47.66791,-122.34929,0),
  ZonePoint(47.66811,-122.34939,0),
  ZonePoint(47.66834,-122.3495,0),
  ZonePoint(47.66851,-122.34958,0),
  ZonePoint(47.66862,-122.3498,0),
  ZonePoint(47.66862,-122.35007,0),
  ZonePoint(47.66854,-122.35031,0),
  ZonePoint(47.6684,-122.35037,0),
  ZonePoint(47.66831,-122.35045,0),
  ZonePoint(47.66816,-122.35064,0),
  ZonePoint(47.66807,-122.35086,0),
  ZonePoint(47.66798,-122.35109,0),
  ZonePoint(47.66787,-122.35118,0),
  ZonePoint(47.66772,-122.35116,0),
  ZonePoint(47.66762,-122.35134,0),
  ZonePoint(47.66741,-122.35147,0),
  ZonePoint(47.66729,-122.35139,0),
  ZonePoint(47.66713,-122.35127,0),
  ZonePoint(47.66692,-122.35118,0)
}
zoneAfricanSavanna.OriginalPoint = ZonePoint(47.6668333053589,-122.351150004069,0)
zoneAfricanSavanna.DistanceRangeUOM = "Feet"
zoneAfricanSavanna.ProximityRangeUOM = "Feet"
zoneAfricanSavanna.OutOfRangeName = ""
zoneAfricanSavanna.InRangeName = ""
zoneAfricanSavanna.Media=zmediaZoneAfrica

zoneTemperateForest = Wherigo.Zone(cartZooventurePenguinEscape)
zoneTemperateForest.Id="969203e0-f766-42b9-905a-584b90b503c0"
zoneTemperateForest.Name="Temperate Forest"
zoneTemperateForest.Description=[[]]
zoneTemperateForest.Visible=false
zoneTemperateForest.DistanceRange = Distance(-1, "feet")
zoneTemperateForest.ShowObjects="OnEnter"
zoneTemperateForest.ProximityRange = Distance(200, "feet")
zoneTemperateForest.AllowSetPositionTo=false
zoneTemperateForest.Active=false
zoneTemperateForest.Points = {
  ZonePoint(47.66657,-122.35124,0),
  ZonePoint(47.66632,-122.35094,0),
  ZonePoint(47.66613,-122.35139,0),
  ZonePoint(47.66607,-122.35188,0),
  ZonePoint(47.66625,-122.35228,0),
  ZonePoint(47.6666,-122.35247,0),
  ZonePoint(47.66668,-122.35217,0),
  ZonePoint(47.66665,-122.35176,0),
  ZonePoint(47.66652,-122.35147,0)
}
zoneTemperateForest.OriginalPoint = ZonePoint(47.66656665802,-122.351233323415,0)
zoneTemperateForest.DistanceRangeUOM = "Feet"
zoneTemperateForest.ProximityRangeUOM = "Feet"
zoneTemperateForest.OutOfRangeName = ""
zoneTemperateForest.InRangeName = ""
zoneTemperateForest.Media=zmediaZoneTemperateForest

zoneTropicalRainForest = Wherigo.Zone(cartZooventurePenguinEscape)
zoneTropicalRainForest.Id="a1060bbf-768c-4121-aee7-7a961d6cbb04"
zoneTropicalRainForest.Name="Tropical Rain Forest"
zoneTropicalRainForest.Description=[[]]
zoneTropicalRainForest.Visible=false
zoneTropicalRainForest.DistanceRange = Distance(-1, "feet")
zoneTropicalRainForest.ShowObjects="OnEnter"
zoneTropicalRainForest.ProximityRange = Distance(200, "feet")
zoneTropicalRainForest.AllowSetPositionTo=false
zoneTropicalRainForest.Active=false
zoneTropicalRainForest.Points = {
  ZonePoint(47.66852,-122.35206,0),
  ZonePoint(47.66845,-122.35226,0),
  ZonePoint(47.66842,-122.3525,0),
  ZonePoint(47.66803,-122.35264,0),
  ZonePoint(47.66775,-122.35256,0),
  ZonePoint(47.66755,-122.35227,0),
  ZonePoint(47.66731,-122.35195,0),
  ZonePoint(47.66748,-122.35157,0),
  ZonePoint(47.66776,-122.35144,0),
  ZonePoint(47.66796,-122.35128,0),
  ZonePoint(47.66816,-122.35107,0),
  ZonePoint(47.66842,-122.35117,0),
  ZonePoint(47.6685,-122.35162,0)
}
zoneTropicalRainForest.OriginalPoint = ZonePoint(47.6685166676839,-122.352066675822,0)
zoneTropicalRainForest.DistanceRangeUOM = "Feet"
zoneTropicalRainForest.ProximityRangeUOM = "Feet"
zoneTropicalRainForest.OutOfRangeName = ""
zoneTropicalRainForest.InRangeName = ""
zoneTropicalRainForest.Media=zmediaZoneRainForest

zoneAfricanVillage = Wherigo.Zone(cartZooventurePenguinEscape)
zoneAfricanVillage.Id="0a0f6e44-e9c3-465d-962a-303b536e4f4f"
zoneAfricanVillage.Name="African Village"
zoneAfricanVillage.Description=[[]]
zoneAfricanVillage.Visible=false
zoneAfricanVillage.DistanceRange = Distance(-1, "feet")
zoneAfricanVillage.ShowObjects="OnEnter"
zoneAfricanVillage.ProximityRange = Distance(200, "feet")
zoneAfricanVillage.AllowSetPositionTo=false
zoneAfricanVillage.Active=false
zoneAfricanVillage.Points = {
  ZonePoint(47.66692,-122.35082,0),
  ZonePoint(47.66696,-122.3505,0),
  ZonePoint(47.66691,-122.35016,0),
  ZonePoint(47.66665,-122.35005,0),
  ZonePoint(47.66651,-122.35008,0),
  ZonePoint(47.66642,-122.35048,0),
  ZonePoint(47.66647,-122.35081,0),
  ZonePoint(47.66672,-122.35093,0)
}
zoneAfricanVillage.OriginalPoint = ZonePoint(47.6669166564941,-122.350816663106,0)
zoneAfricanVillage.DistanceRangeUOM = "Feet"
zoneAfricanVillage.ProximityRangeUOM = "Feet"
zoneAfricanVillage.OutOfRangeName = ""
zoneAfricanVillage.InRangeName = ""
zoneAfricanVillage.Media=zmediaZoneAfricanVillage

-- Characters --
zcharacterZookeeper = Wherigo.ZCharacter(cartZooventurePenguinEscape)
zcharacterZookeeper.Id="df20eda6-db6c-4502-879d-4e3f7f64b80e"
zcharacterZookeeper.Name="Zookeeper"
zcharacterZookeeper.Description=[[]]
zcharacterZookeeper.Visible=true
zcharacterZookeeper.Media=zmediaZookeeper
zcharacterZookeeper.Icon=zmediaiconzookeeper
zcharacterZookeeper.Gender="Male"
zcharacterZookeeper.Type="NPC"
zcharacterZookeeper.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zcharacterZookeeper.Commands = {
  Talk = Wherigo.ZCommand{Text="Talk", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zcharacterZookeeper.Commands.Talk.Custom = true
zcharacterZookeeper.Commands.Talk.Id="c2a9ded2-7fc9-4666-b621-d1f41e3186fb"
zcharacterZookeeper.Commands.Talk.WorksWithAll = true

zcharacterPenguins = Wherigo.ZCharacter(cartZooventurePenguinEscape)
zcharacterPenguins.Id="358c4c53-ce15-4694-b391-a341a3bff6f3"
zcharacterPenguins.Name="Penguins"
zcharacterPenguins.Description=[[]]
zcharacterPenguins.Visible=true
zcharacterPenguins.Media=zmediaPenguins
zcharacterPenguins.Gender="Male"
zcharacterPenguins.Type="NPC"
zcharacterPenguins.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zcharacterPenguins.Commands = {
  Photograph = Wherigo.ZCommand{Text="Photograph", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Yell = Wherigo.ZCommand{Text="Yell", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Feed = Wherigo.ZCommand{Text="Feed", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zcharacterPenguins.Commands.Photograph.Custom = true
zcharacterPenguins.Commands.Photograph.Id="dd1bde8e-ff62-4ca4-aa7a-8b32f3b58904"
zcharacterPenguins.Commands.Photograph.WorksWithAll = true
zcharacterPenguins.Commands.Yell.Custom = true
zcharacterPenguins.Commands.Yell.Id="301c0ad6-b61b-4293-a2a1-f3b51e9ad302"
zcharacterPenguins.Commands.Yell.WorksWithAll = true
zcharacterPenguins.Commands.Feed.Custom = true
zcharacterPenguins.Commands.Feed.Id="ccd53cf3-415a-4c17-a160-af980ad43f92"
zcharacterPenguins.Commands.Feed.WorksWithAll = true
zcharacterPenguins.Commands.Examine.Custom = true
zcharacterPenguins.Commands.Examine.Id="360ed9f7-566d-41d5-8221-07a36bef1d7c"
zcharacterPenguins.Commands.Examine.WorksWithAll = true

zcharacterBrownBear = Wherigo.ZCharacter(cartZooventurePenguinEscape)
zcharacterBrownBear.Id="bfbce702-73a8-40a0-9424-f32579526f02"
zcharacterBrownBear.Name="Brown Bear"
zcharacterBrownBear.Description=[[]]
zcharacterBrownBear.Visible=true
zcharacterBrownBear.Media=zmediaBrownBearSleeping
zcharacterBrownBear.Icon=zmediaiconbrownbear
zcharacterBrownBear.Gender="Male"
zcharacterBrownBear.Type="NPC"
zcharacterBrownBear.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zcharacterBrownBear.Commands = {
  Talk = Wherigo.ZCommand{Text="Talk", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zcharacterBrownBear.Commands.Talk.Custom = true
zcharacterBrownBear.Commands.Talk.Id="674fa652-24bb-4564-b04b-7de4853bc04f"
zcharacterBrownBear.Commands.Talk.WorksWithAll = true
zcharacterBrownBear.Commands.Examine.Custom = true
zcharacterBrownBear.Commands.Examine.Id="93771c88-051b-40c4-860f-af3339fb18ab"
zcharacterBrownBear.Commands.Examine.WorksWithAll = true

zcharacterSnowyOwl = Wherigo.ZCharacter(cartZooventurePenguinEscape)
zcharacterSnowyOwl.Id="2ab6075e-e404-4b32-b5df-e81c12925e9c"
zcharacterSnowyOwl.Name="Snowy Owl"
zcharacterSnowyOwl.Description=[[]]
zcharacterSnowyOwl.Visible=true
zcharacterSnowyOwl.Media=zmediaSnowyOwl
zcharacterSnowyOwl.Icon=zmediaiconsnowyowl
zcharacterSnowyOwl.Gender="Male"
zcharacterSnowyOwl.Type="NPC"
zcharacterSnowyOwl.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zcharacterSnowyOwl.Commands = {
  Talk = Wherigo.ZCommand{Text="Talk", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zcharacterSnowyOwl.Commands.Talk.Custom = true
zcharacterSnowyOwl.Commands.Talk.Id="d55e7305-aad2-43d1-8000-89f11a449a6d"
zcharacterSnowyOwl.Commands.Talk.WorksWithAll = true
zcharacterSnowyOwl.Commands.Examine.Custom = true
zcharacterSnowyOwl.Commands.Examine.Id="bb68ef5d-43d9-4871-a678-d68e91374808"
zcharacterSnowyOwl.Commands.Examine.WorksWithAll = true

zcharacterTiger = Wherigo.ZCharacter(cartZooventurePenguinEscape)
zcharacterTiger.Id="4d675f17-1530-4f59-a8c8-eecd1c1acdd2"
zcharacterTiger.Name="Tiger"
zcharacterTiger.Description=[[]]
zcharacterTiger.Visible=true
zcharacterTiger.Media=zmediaSadTiger
zcharacterTiger.Icon=zmediaicontiger
zcharacterTiger.Gender="Male"
zcharacterTiger.Type="NPC"
zcharacterTiger.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zcharacterTiger.Commands = {
  Talk = Wherigo.ZCommand{Text="Talk", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zcharacterTiger.Commands.Talk.Custom = true
zcharacterTiger.Commands.Talk.Id="8a67b10f-7e75-4980-8848-7ad1048e986b"
zcharacterTiger.Commands.Talk.WorksWithAll = true
zcharacterTiger.Commands.Examine.Custom = true
zcharacterTiger.Commands.Examine.Id="0c2524e5-1a10-48b8-9737-2cc5f3fd0bad"
zcharacterTiger.Commands.Examine.WorksWithAll = true

zcharacterSnowLeopard = Wherigo.ZCharacter(cartZooventurePenguinEscape)
zcharacterSnowLeopard.Id="44116d0f-f0cb-4c75-8736-1a2bfd209ab5"
zcharacterSnowLeopard.Name="Snow Leopard"
zcharacterSnowLeopard.Description=[[]]
zcharacterSnowLeopard.Visible=true
zcharacterSnowLeopard.Media=zmediaSnowLeopard
zcharacterSnowLeopard.Icon=zmediaiconsnowleopard
zcharacterSnowLeopard.Gender="Male"
zcharacterSnowLeopard.Type="NPC"
zcharacterSnowLeopard.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zcharacterSnowLeopard.Commands = {
  Talk = Wherigo.ZCommand{Text="Talk", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zcharacterSnowLeopard.Commands.Talk.Custom = true
zcharacterSnowLeopard.Commands.Talk.Id="ee0a2c36-3033-4aab-868b-245daba187b1"
zcharacterSnowLeopard.Commands.Talk.WorksWithAll = true
zcharacterSnowLeopard.Commands.Examine.Custom = true
zcharacterSnowLeopard.Commands.Examine.Id="b7e1fe48-6ab7-4613-9f3a-4dcb778fba88"
zcharacterSnowLeopard.Commands.Examine.WorksWithAll = true

zcharacterSunBear = Wherigo.ZCharacter(cartZooventurePenguinEscape)
zcharacterSunBear.Id="329c521a-d025-4202-9a19-e359b0a050a2"
zcharacterSunBear.Name="Sun Bear"
zcharacterSunBear.Description=[[]]
zcharacterSunBear.Visible=true
zcharacterSunBear.Media=zmediaSunBear
zcharacterSunBear.Icon=zmediaiconsunbear
zcharacterSunBear.Gender="Male"
zcharacterSunBear.Type="NPC"
zcharacterSunBear.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zcharacterSunBear.Commands = {
  Talk = Wherigo.ZCommand{Text="Talk", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zcharacterSunBear.Commands.Talk.Custom = true
zcharacterSunBear.Commands.Talk.Id="07f3cad4-5079-49c4-a4a5-1b3fe703b017"
zcharacterSunBear.Commands.Talk.WorksWithAll = true
zcharacterSunBear.Commands.Examine.Custom = true
zcharacterSunBear.Commands.Examine.Id="5f01c8f1-27c4-4f55-b63e-a3b9147e4eda"
zcharacterSunBear.Commands.Examine.WorksWithAll = true

zcharacterHippopotamus = Wherigo.ZCharacter(cartZooventurePenguinEscape)
zcharacterHippopotamus.Id="2eb8c430-3095-4043-a494-130e7e0d1e9e"
zcharacterHippopotamus.Name="Hippopotamus"
zcharacterHippopotamus.Description=[[]]
zcharacterHippopotamus.Visible=true
zcharacterHippopotamus.Media=zmediaHippo
zcharacterHippopotamus.Icon=zmediaiconhippo
zcharacterHippopotamus.Gender="Male"
zcharacterHippopotamus.Type="NPC"
zcharacterHippopotamus.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zcharacterHippopotamus.Commands = {
  Talk = Wherigo.ZCommand{Text="Talk", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zcharacterHippopotamus.Commands.Talk.Custom = true
zcharacterHippopotamus.Commands.Talk.Id="9f66e5fa-45af-4465-a8cc-f9a9c48fcb70"
zcharacterHippopotamus.Commands.Talk.WorksWithAll = true
zcharacterHippopotamus.Commands.Examine.Custom = true
zcharacterHippopotamus.Commands.Examine.Id="c714f1e5-0959-4f62-9dad-8e7217b5fe1a"
zcharacterHippopotamus.Commands.Examine.WorksWithAll = true

zcharacterZebra = Wherigo.ZCharacter(cartZooventurePenguinEscape)
zcharacterZebra.Id="06a3e0ce-e50f-4494-b4e8-53d0507a15e3"
zcharacterZebra.Name="Zebra"
zcharacterZebra.Description=[[]]
zcharacterZebra.Visible=true
zcharacterZebra.Media=zmediaZebra
zcharacterZebra.Icon=zmediaiconzebra
zcharacterZebra.Gender="Male"
zcharacterZebra.Type="NPC"
zcharacterZebra.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zcharacterZebra.Commands = {
  Talk = Wherigo.ZCommand{Text="Talk", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zcharacterZebra.Commands.Talk.Custom = true
zcharacterZebra.Commands.Talk.Id="c463730a-87cd-4aa7-b5bf-f7d8233eb666"
zcharacterZebra.Commands.Talk.WorksWithAll = true
zcharacterZebra.Commands.Examine.Custom = true
zcharacterZebra.Commands.Examine.Id="0b3152d4-3dd1-4064-9278-51c01118bc98"
zcharacterZebra.Commands.Examine.WorksWithAll = true

zcharacterPython = Wherigo.ZCharacter(cartZooventurePenguinEscape)
zcharacterPython.Id="8312c851-f5c9-4001-b84c-3ca6c643cd2f"
zcharacterPython.Name="Python"
zcharacterPython.Description=[[]]
zcharacterPython.Visible=true
zcharacterPython.Media=zmediaPython
zcharacterPython.Icon=zmediaiconpython
zcharacterPython.Gender="Male"
zcharacterPython.Type="NPC"
zcharacterPython.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zcharacterPython.Commands = {
  Talk = Wherigo.ZCommand{Text="Talk", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zcharacterPython.Commands.Talk.Custom = true
zcharacterPython.Commands.Talk.Id="6b0859b9-2bfd-4818-bcaa-bdc12f3e8b81"
zcharacterPython.Commands.Talk.WorksWithAll = true
zcharacterPython.Commands.Examine.Custom = true
zcharacterPython.Commands.Examine.Id="6090b497-1a43-4e74-b23f-8c291a501dc8"
zcharacterPython.Commands.Examine.WorksWithAll = true

zcharacterSiamang = Wherigo.ZCharacter(cartZooventurePenguinEscape)
zcharacterSiamang.Id="8ca06945-e0a6-4b6e-b327-5d06892d29fe"
zcharacterSiamang.Name="Siamang"
zcharacterSiamang.Description=[[]]
zcharacterSiamang.Visible=true
zcharacterSiamang.Media=zmediaSiamang
zcharacterSiamang.Icon=zmediaiconsimang
zcharacterSiamang.Gender="Male"
zcharacterSiamang.Type="NPC"
zcharacterSiamang.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zcharacterSiamang.Commands = {
  Talk = Wherigo.ZCommand{Text="Talk", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zcharacterSiamang.Commands.Talk.Custom = true
zcharacterSiamang.Commands.Talk.Id="b667cad1-ec45-49cd-9417-7d45ebad462a"
zcharacterSiamang.Commands.Talk.WorksWithAll = true
zcharacterSiamang.Commands.Examine.Custom = true
zcharacterSiamang.Commands.Examine.Id="4356f0cd-5191-44ac-b93a-42f40cb2336b"
zcharacterSiamang.Commands.Examine.WorksWithAll = true

zcharacterSadPig = Wherigo.ZCharacter(cartZooventurePenguinEscape)
zcharacterSadPig.Id="2a062bef-fcfa-4d1f-a2e4-3d1ba89d6894"
zcharacterSadPig.Name="Sad Pig"
zcharacterSadPig.Description=[[]]
zcharacterSadPig.Visible=true
zcharacterSadPig.Media=zmediaSadPig
zcharacterSadPig.Icon=zmediaiconpig
zcharacterSadPig.Gender="Male"
zcharacterSadPig.Type="NPC"
zcharacterSadPig.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zcharacterSadPig.Commands = {
  Talk = Wherigo.ZCommand{Text="Talk", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zcharacterSadPig.Commands.Talk.Custom = true
zcharacterSadPig.Commands.Talk.Id="cb849671-d0fe-4de1-8787-920b7021bfa8"
zcharacterSadPig.Commands.Talk.WorksWithAll = true
zcharacterSadPig.Commands.Examine.Custom = true
zcharacterSadPig.Commands.Examine.Id="42ba85a0-a101-4839-8a3b-7fd64e53a414"
zcharacterSadPig.Commands.Examine.WorksWithAll = true

zcharacterChicken = Wherigo.ZCharacter(cartZooventurePenguinEscape)
zcharacterChicken.Id="6ac2fd3d-d3f2-4fc9-9cd5-207e837e2658"
zcharacterChicken.Name="Chicken"
zcharacterChicken.Description=[[]]
zcharacterChicken.Visible=true
zcharacterChicken.Media=zmediaHen
zcharacterChicken.Icon=zmediaiconhen
zcharacterChicken.Gender="Male"
zcharacterChicken.Type="NPC"
zcharacterChicken.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zcharacterChicken.Commands = {
  Talk = Wherigo.ZCommand{Text="Talk", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zcharacterChicken.Commands.Talk.Custom = true
zcharacterChicken.Commands.Talk.Id="ee1fe575-8185-4ce9-a764-788953f1286f"
zcharacterChicken.Commands.Talk.WorksWithAll = true
zcharacterChicken.Commands.Examine.Custom = true
zcharacterChicken.Commands.Examine.Id="56550cce-7cee-4c72-88e7-44c32edede9a"
zcharacterChicken.Commands.Examine.WorksWithAll = true

zcharacterSilverbackGorilla = Wherigo.ZCharacter(cartZooventurePenguinEscape)
zcharacterSilverbackGorilla.Id="20d89ff0-e89a-4f36-b31a-2d47ba083a56"
zcharacterSilverbackGorilla.Name="Silverback Gorilla"
zcharacterSilverbackGorilla.Description=[[]]
zcharacterSilverbackGorilla.Visible=true
zcharacterSilverbackGorilla.Media=zmediaPinkBackGorilla
zcharacterSilverbackGorilla.Icon=zmediaicongorilla
zcharacterSilverbackGorilla.Gender="Male"
zcharacterSilverbackGorilla.Type="NPC"
zcharacterSilverbackGorilla.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zcharacterSilverbackGorilla.Commands = {
  Talk = Wherigo.ZCommand{Text="Talk", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zcharacterSilverbackGorilla.Commands.Talk.Custom = true
zcharacterSilverbackGorilla.Commands.Talk.Id="9a9450ef-c82d-4acf-a82e-8dea62e25a77"
zcharacterSilverbackGorilla.Commands.Talk.WorksWithAll = true
zcharacterSilverbackGorilla.Commands.Examine.Custom = true
zcharacterSilverbackGorilla.Commands.Examine.Id="522ebce0-4a59-407f-8eaf-ed080dd0221d"
zcharacterSilverbackGorilla.Commands.Examine.WorksWithAll = true

zcharacterColobusMonkey = Wherigo.ZCharacter(cartZooventurePenguinEscape)
zcharacterColobusMonkey.Id="1844c29e-1712-4ff5-ae17-e8fe38831511"
zcharacterColobusMonkey.Name="Colobus Monkey"
zcharacterColobusMonkey.Description=[[]]
zcharacterColobusMonkey.Visible=true
zcharacterColobusMonkey.Media=zmediaColobus
zcharacterColobusMonkey.Icon=zmediaiconcolobus
zcharacterColobusMonkey.Gender="Male"
zcharacterColobusMonkey.Type="NPC"
zcharacterColobusMonkey.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zcharacterColobusMonkey.Commands = {
  Talk = Wherigo.ZCommand{Text="Talk", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zcharacterColobusMonkey.Commands.Talk.Custom = true
zcharacterColobusMonkey.Commands.Talk.Id="d992ef37-4cc5-4aa8-a801-326f24ff820e"
zcharacterColobusMonkey.Commands.Talk.WorksWithAll = true
zcharacterColobusMonkey.Commands.Examine.Custom = true
zcharacterColobusMonkey.Commands.Examine.Id="6875db6a-2606-481e-844d-bee342ea7f31"
zcharacterColobusMonkey.Commands.Examine.WorksWithAll = true

-- Items --
zitemAlarmClock = Wherigo.ZItem(cartZooventurePenguinEscape)
zitemAlarmClock.Id="9ae7a091-b11d-40d4-b56e-bc77b8e5d925"
zitemAlarmClock.Name="Alarm Clock"
zitemAlarmClock.Description=[[]]
zitemAlarmClock.Visible=true
zitemAlarmClock.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zitemAlarmClock.Media=zmediaAlarmClcok
zitemAlarmClock.Icon=zmediaiconalarmclock
zitemAlarmClock.Locked = false
zitemAlarmClock.Opened = false
zitemAlarmClock.Commands = {
  UseWith = Wherigo.ZCommand{Text="Use With", CmdWith=true, Enabled=false, EmptyTargetListText="The 'Use With' command is not available because you are not presently in a zone. Check the 'Locations' tab to navigate."},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zitemAlarmClock.Commands.UseWith.Custom = true
zitemAlarmClock.Commands.UseWith.Id="c90de881-ede6-4452-95da-a6263d565264"
zitemAlarmClock.Commands.UseWith.WorksWithAll = false
zitemAlarmClock.Commands.UseWith.WorksWithListIds = {"df20eda6-db6c-4502-879d-4e3f7f64b80e", "bfbce702-73a8-40a0-9424-f32579526f02", "2ab6075e-e404-4b32-b5df-e81c12925e9c", }
zitemAlarmClock.Commands.Examine.Custom = true
zitemAlarmClock.Commands.Examine.Id="4ae4ffb8-6ebb-41d9-be5e-722ea10ea457"
zitemAlarmClock.Commands.Examine.WorksWithAll = true

zitemShaunathePenguin = Wherigo.ZItem(cartZooventurePenguinEscape)
zitemShaunathePenguin.Id="456767cd-8ba2-41a3-8f87-e17cb9f0db45"
zitemShaunathePenguin.Name="Shauna the Penguin"
zitemShaunathePenguin.Description=[[]]
zitemShaunathePenguin.Visible=true
zitemShaunathePenguin.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zitemShaunathePenguin.Media=zmediaShaunathePenguin
zitemShaunathePenguin.Icon=zmediaiconshaunapenguin
zitemShaunathePenguin.Locked = false
zitemShaunathePenguin.Opened = false
zitemShaunathePenguin.Commands = {
  Take = Wherigo.ZCommand{Text="Take", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zitemShaunathePenguin.Commands.Take.Custom = true
zitemShaunathePenguin.Commands.Take.Id="4cddec88-7748-4fa0-8822-fde37f92c64f"
zitemShaunathePenguin.Commands.Take.WorksWithAll = true
zitemShaunathePenguin.Commands.Examine.Custom = true
zitemShaunathePenguin.Commands.Examine.Id="8eed5a17-3579-4866-b14d-44fad84f7405"
zitemShaunathePenguin.Commands.Examine.WorksWithAll = true

zitemHoney = Wherigo.ZItem(cartZooventurePenguinEscape)
zitemHoney.Id="e7b3e368-bc88-41df-8fd5-23b75b25f97e"
zitemHoney.Name="Honey"
zitemHoney.Description=[[]]
zitemHoney.Visible=true
zitemHoney.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zitemHoney.Media=zmediaHoney
zitemHoney.Icon=zmediaiconhoney
zitemHoney.Locked = false
zitemHoney.Opened = false
zitemHoney.Commands = {
  Give = Wherigo.ZCommand{Text="Give", CmdWith=true, Enabled=false, EmptyTargetListText="The 'Give' command is not available because you are not presently in a zone. Check the 'Locations' tab to navigate."},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zitemHoney.Commands.Give.Custom = true
zitemHoney.Commands.Give.Id="c199502e-50a2-4c8a-90fc-4802d42699e2"
zitemHoney.Commands.Give.WorksWithAll = false
zitemHoney.Commands.Give.WorksWithListIds = {"df20eda6-db6c-4502-879d-4e3f7f64b80e", "4d675f17-1530-4f59-a8c8-eecd1c1acdd2", "44116d0f-f0cb-4c75-8736-1a2bfd209ab5", "329c521a-d025-4202-9a19-e359b0a050a2", }
zitemHoney.Commands.Examine.Custom = true
zitemHoney.Commands.Examine.Id="66219e2a-c016-4f73-8e7b-6541aca10f6d"
zitemHoney.Commands.Examine.WorksWithAll = true

zitemJenthePenguin = Wherigo.ZItem(cartZooventurePenguinEscape)
zitemJenthePenguin.Id="da49d16b-8caa-43e0-910c-1e5b791e3b7a"
zitemJenthePenguin.Name="Jen the Penguin"
zitemJenthePenguin.Description=[[]]
zitemJenthePenguin.Visible=true
zitemJenthePenguin.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zitemJenthePenguin.Media=zmediaJenthePenguin
zitemJenthePenguin.Icon=zmediaiconjenpenguin
zitemJenthePenguin.Locked = false
zitemJenthePenguin.Opened = false
zitemJenthePenguin.Commands = {
  Take = Wherigo.ZCommand{Text="Take", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zitemJenthePenguin.Commands.Take.Custom = true
zitemJenthePenguin.Commands.Take.Id="5ff3e5ba-84fa-4703-98be-d744edbe6d6a"
zitemJenthePenguin.Commands.Take.WorksWithAll = true
zitemJenthePenguin.Commands.Examine.Custom = true
zitemJenthePenguin.Commands.Examine.Id="bb0a1f6f-bc42-44a2-9969-6adf1de681cd"
zitemJenthePenguin.Commands.Examine.WorksWithAll = true

zitemTigerStripes = Wherigo.ZItem(cartZooventurePenguinEscape)
zitemTigerStripes.Id="b0df76f4-a7ee-44a7-a64e-4d69ffe8b35e"
zitemTigerStripes.Name="Tiger Stripes"
zitemTigerStripes.Description=[[]]
zitemTigerStripes.Visible=true
zitemTigerStripes.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zitemTigerStripes.Media=zmediaTigerStripes
zitemTigerStripes.Icon=zmediaicontigerstripes
zitemTigerStripes.Locked = false
zitemTigerStripes.Opened = false
zitemTigerStripes.Commands = {
  Take = Wherigo.ZCommand{Text="Take", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Give = Wherigo.ZCommand{Text="Give", CmdWith=true, Enabled=false, EmptyTargetListText="The 'Give' command is not available because you are not presently in a zone. Check the 'Locations' tab to navigate."},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Use = Wherigo.ZCommand{Text="Use", CmdWith=false, Enabled=false, EmptyTargetListText="Nothing available"},
}
zitemTigerStripes.Commands.Take.Custom = true
zitemTigerStripes.Commands.Take.Id="93786e4d-d20d-4749-bf92-66a526c4c06a"
zitemTigerStripes.Commands.Take.WorksWithAll = true
zitemTigerStripes.Commands.Give.Custom = true
zitemTigerStripes.Commands.Give.Id="609c0e7b-e92d-4ac1-8e7a-37476a3dc343"
zitemTigerStripes.Commands.Give.WorksWithAll = false
zitemTigerStripes.Commands.Give.WorksWithListIds = {"df20eda6-db6c-4502-879d-4e3f7f64b80e", "4d675f17-1530-4f59-a8c8-eecd1c1acdd2", "44116d0f-f0cb-4c75-8736-1a2bfd209ab5", }
zitemTigerStripes.Commands.Examine.Custom = true
zitemTigerStripes.Commands.Examine.Id="945380e4-090e-4556-80bc-c77311db6720"
zitemTigerStripes.Commands.Examine.WorksWithAll = true
zitemTigerStripes.Commands.Use.Custom = true
zitemTigerStripes.Commands.Use.Id="db302503-4343-41bc-8185-8dbdeec62b9c"
zitemTigerStripes.Commands.Use.WorksWithAll = true

zitemDrainPlug = Wherigo.ZItem(cartZooventurePenguinEscape)
zitemDrainPlug.Id="cc534863-8fdd-43ff-9589-8ccdbfa3b257"
zitemDrainPlug.Name="Drain Plug"
zitemDrainPlug.Description=[[]]
zitemDrainPlug.Visible=true
zitemDrainPlug.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zitemDrainPlug.Media=zmediaDrainPlug
zitemDrainPlug.Icon=zmediaicondrainplug
zitemDrainPlug.Locked = false
zitemDrainPlug.Opened = false
zitemDrainPlug.Commands = {
  Give = Wherigo.ZCommand{Text="Give", CmdWith=true, Enabled=false, EmptyTargetListText="The 'Give' command is not available because you are not presently in a zone. Check the 'Locations' tab to navigate."},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zitemDrainPlug.Commands.Give.Custom = true
zitemDrainPlug.Commands.Give.Id="7385aa8e-9520-4016-952f-72c426502911"
zitemDrainPlug.Commands.Give.WorksWithAll = false
zitemDrainPlug.Commands.Give.WorksWithListIds = {"df20eda6-db6c-4502-879d-4e3f7f64b80e", "2eb8c430-3095-4043-a494-130e7e0d1e9e", "06a3e0ce-e50f-4494-b4e8-53d0507a15e3", }
zitemDrainPlug.Commands.Examine.Custom = true
zitemDrainPlug.Commands.Examine.Id="659ba89c-90ca-48da-9de6-3d88d52a58be"
zitemDrainPlug.Commands.Examine.WorksWithAll = true

zitemBenthePenguin = Wherigo.ZItem(cartZooventurePenguinEscape)
zitemBenthePenguin.Id="211ba495-a966-42a9-a43c-23c5d6f95882"
zitemBenthePenguin.Name="Ben the Penguin"
zitemBenthePenguin.Description=[[]]
zitemBenthePenguin.Visible=true
zitemBenthePenguin.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zitemBenthePenguin.Media=zmediaBenthePenguin
zitemBenthePenguin.Icon=zmediaiconbenpenguin
zitemBenthePenguin.Locked = false
zitemBenthePenguin.Opened = false
zitemBenthePenguin.Commands = {
  Take = Wherigo.ZCommand{Text="Take", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zitemBenthePenguin.Commands.Take.Custom = true
zitemBenthePenguin.Commands.Take.Id="30cb3972-efa7-48c1-8335-2f379d218027"
zitemBenthePenguin.Commands.Take.WorksWithAll = true
zitemBenthePenguin.Commands.Examine.Custom = true
zitemBenthePenguin.Commands.Examine.Id="17b11b57-2342-41e1-a5e5-f2c2190ae8af"
zitemBenthePenguin.Commands.Examine.WorksWithAll = true

zitemSiamangsVoice = Wherigo.ZItem(cartZooventurePenguinEscape)
zitemSiamangsVoice.Id="16050201-e505-43b2-9055-e69b64c6e7a1"
zitemSiamangsVoice.Name="Siamang's Voice"
zitemSiamangsVoice.Description=[[]]
zitemSiamangsVoice.Visible=true
zitemSiamangsVoice.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zitemSiamangsVoice.Media=zmediaSiamangVoice
zitemSiamangsVoice.Icon=zmediaiconsimangvoice
zitemSiamangsVoice.Locked = false
zitemSiamangsVoice.Opened = false
zitemSiamangsVoice.Commands = {
  Take = Wherigo.ZCommand{Text="Take", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Give = Wherigo.ZCommand{Text="Give", CmdWith=true, Enabled=false, EmptyTargetListText="The 'Give' command is not available because you are not presently in a zone. Check the 'Locations' tab to navigate."},
}
zitemSiamangsVoice.Commands.Take.Custom = true
zitemSiamangsVoice.Commands.Take.Id="6459b87a-156f-4f42-ad8f-3f363c9a9c3c"
zitemSiamangsVoice.Commands.Take.WorksWithAll = true
zitemSiamangsVoice.Commands.Examine.Custom = true
zitemSiamangsVoice.Commands.Examine.Id="134312e1-294f-4706-91e3-dfd67a7c4793"
zitemSiamangsVoice.Commands.Examine.WorksWithAll = true
zitemSiamangsVoice.Commands.Give.Custom = true
zitemSiamangsVoice.Commands.Give.Id="a2a65421-b23d-4e09-ac22-67d0c586cf8f"
zitemSiamangsVoice.Commands.Give.WorksWithAll = false
zitemSiamangsVoice.Commands.Give.WorksWithListIds = {"df20eda6-db6c-4502-879d-4e3f7f64b80e", "8312c851-f5c9-4001-b84c-3ca6c643cd2f", "8ca06945-e0a6-4b6e-b327-5d06892d29fe", }

zitemLemon = Wherigo.ZItem(cartZooventurePenguinEscape)
zitemLemon.Id="b211c1d3-cacb-4722-af64-cec0c1515e30"
zitemLemon.Name="Lemon"
zitemLemon.Description=[[]]
zitemLemon.Visible=true
zitemLemon.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zitemLemon.Media=zmediaLemon
zitemLemon.Icon=zmediaiconlemon
zitemLemon.Locked = false
zitemLemon.Opened = false
zitemLemon.Commands = {
  Take = Wherigo.ZCommand{Text="Take", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Give = Wherigo.ZCommand{Text="Give", CmdWith=true, Enabled=false, EmptyTargetListText="The 'Give' command is not available because you are not presently in a zone. Check the 'Locations' tab to navigate."},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zitemLemon.Commands.Take.Custom = true
zitemLemon.Commands.Take.Id="bb587e85-a89e-426e-9f88-4cc1a930a1b5"
zitemLemon.Commands.Take.WorksWithAll = true
zitemLemon.Commands.Give.Custom = true
zitemLemon.Commands.Give.Id="008412f4-e3d6-4226-9abc-6f49d91aa4a4"
zitemLemon.Commands.Give.WorksWithAll = false
zitemLemon.Commands.Give.WorksWithListIds = {"df20eda6-db6c-4502-879d-4e3f7f64b80e", "2a062bef-fcfa-4d1f-a2e4-3d1ba89d6894", }
zitemLemon.Commands.Examine.Custom = true
zitemLemon.Commands.Examine.Id="24f44fdf-50ed-466b-b0d5-2a326d9ac6dd"
zitemLemon.Commands.Examine.WorksWithAll = true

zitemKokothePenguin = Wherigo.ZItem(cartZooventurePenguinEscape)
zitemKokothePenguin.Id="05ae51ca-0492-446a-9266-0d8fca3285ed"
zitemKokothePenguin.Name="Koko the Penguin"
zitemKokothePenguin.Description=[[]]
zitemKokothePenguin.Visible=true
zitemKokothePenguin.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zitemKokothePenguin.Media=zmediaKokothePenguin
zitemKokothePenguin.Icon=zmediaiconkokopenguin
zitemKokothePenguin.Locked = false
zitemKokothePenguin.Opened = false
zitemKokothePenguin.Commands = {
  Take = Wherigo.ZCommand{Text="Take", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zitemKokothePenguin.Commands.Take.Custom = true
zitemKokothePenguin.Commands.Take.Id="343545a2-89b2-4040-9fe6-f63321794c19"
zitemKokothePenguin.Commands.Take.WorksWithAll = true
zitemKokothePenguin.Commands.Examine.Custom = true
zitemKokothePenguin.Commands.Examine.Id="a7d3cc29-1881-4ff8-8d18-34270edaa7d0"
zitemKokothePenguin.Commands.Examine.WorksWithAll = true

zitemEgg = Wherigo.ZItem(cartZooventurePenguinEscape)
zitemEgg.Id="7eaa60c8-2f7e-4445-9924-399fc1133390"
zitemEgg.Name="Egg"
zitemEgg.Description=[[]]
zitemEgg.Visible=true
zitemEgg.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zitemEgg.Media=zmediaEgg
zitemEgg.Icon=zmediaiconegg
zitemEgg.Locked = false
zitemEgg.Opened = false
zitemEgg.Commands = {
  Take = Wherigo.ZCommand{Text="Take", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zitemEgg.Commands.Take.Custom = true
zitemEgg.Commands.Take.Id="7372df32-72a2-4b03-b4b5-a4566ffcc4df"
zitemEgg.Commands.Take.WorksWithAll = true
zitemEgg.Commands.Examine.Custom = true
zitemEgg.Commands.Examine.Id="5e529957-444a-424d-9741-30cb63d0170b"
zitemEgg.Commands.Examine.WorksWithAll = true

zitemBrianthePenguin = Wherigo.ZItem(cartZooventurePenguinEscape)
zitemBrianthePenguin.Id="5ea4ff9b-76af-40a9-b240-a3554763ad5d"
zitemBrianthePenguin.Name="Brian the Penguin"
zitemBrianthePenguin.Description=[[]]
zitemBrianthePenguin.Visible=true
zitemBrianthePenguin.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zitemBrianthePenguin.Media=zmediaBrianthePenguin
zitemBrianthePenguin.Icon=zmediaiconbrianpenguin
zitemBrianthePenguin.Locked = false
zitemBrianthePenguin.Opened = false
zitemBrianthePenguin.Commands = {
  Take = Wherigo.ZCommand{Text="Take", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zitemBrianthePenguin.Commands.Take.Custom = true
zitemBrianthePenguin.Commands.Take.Id="0c4212d4-beb2-45af-ab85-99364d4b5a12"
zitemBrianthePenguin.Commands.Take.WorksWithAll = true
zitemBrianthePenguin.Commands.Examine.Custom = true
zitemBrianthePenguin.Commands.Examine.Id="44f6055f-6e8f-4713-a88a-1160508b9beb"
zitemBrianthePenguin.Commands.Examine.WorksWithAll = true

zitemJaredthePenguin = Wherigo.ZItem(cartZooventurePenguinEscape)
zitemJaredthePenguin.Id="c6ae9a68-fc2f-4469-99f8-25401102375e"
zitemJaredthePenguin.Name="Jared the Penguin"
zitemJaredthePenguin.Description=[[]]
zitemJaredthePenguin.Visible=true
zitemJaredthePenguin.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zitemJaredthePenguin.Media=zmediaJaredthePenguin
zitemJaredthePenguin.Icon=zmediaiconjaredpenguin
zitemJaredthePenguin.Locked = false
zitemJaredthePenguin.Opened = false
zitemJaredthePenguin.Commands = {
  Take = Wherigo.ZCommand{Text="Take", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zitemJaredthePenguin.Commands.Take.Custom = true
zitemJaredthePenguin.Commands.Take.Id="f6c16f1c-94ca-43b9-bdd1-19c130de2cae"
zitemJaredthePenguin.Commands.Take.WorksWithAll = true
zitemJaredthePenguin.Commands.Examine.Custom = true
zitemJaredthePenguin.Commands.Examine.Id="bb7cde87-f180-4d11-81e3-d960f82e13a3"
zitemJaredthePenguin.Commands.Examine.WorksWithAll = true

zitemShampoo = Wherigo.ZItem(cartZooventurePenguinEscape)
zitemShampoo.Id="cd130107-d92e-45e5-a014-13838f21be47"
zitemShampoo.Name="Shampoo"
zitemShampoo.Description=[[]]
zitemShampoo.Visible=true
zitemShampoo.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zitemShampoo.Media=zmediaShampoo
zitemShampoo.Icon=zmediaiconshampoo
zitemShampoo.Locked = false
zitemShampoo.Opened = false
zitemShampoo.Commands = {
  UseWith = Wherigo.ZCommand{Text="Use With", CmdWith=true, Enabled=false, EmptyTargetListText="The 'Use With' command is not available because you are not presently in a zone. Check the 'Locations' tab to navigate."},
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zitemShampoo.Commands.UseWith.Custom = true
zitemShampoo.Commands.UseWith.Id="f8bb9468-8287-4b3e-914d-37d6cd222709"
zitemShampoo.Commands.UseWith.WorksWithAll = false
zitemShampoo.Commands.UseWith.WorksWithListIds = {"20d89ff0-e89a-4f36-b31a-2d47ba083a56", }
zitemShampoo.Commands.Examine.Custom = true
zitemShampoo.Commands.Examine.Id="1573b483-91fa-45f6-9e86-c131bbc77869"
zitemShampoo.Commands.Examine.WorksWithAll = true

zitemCake = Wherigo.ZItem(cartZooventurePenguinEscape)
zitemCake.Id="1a85bccd-e848-48a4-bfca-594d0ee4db24"
zitemCake.Name="Cake"
zitemCake.Description=[[]]
zitemCake.Visible=true
zitemCake.ObjectLocation = Wherigo.INVALID_ZONEPOINT
zitemCake.Media=zmediaCake
zitemCake.Icon=zmediaiconcake
zitemCake.Locked = false
zitemCake.Opened = false
zitemCake.Commands = {
  Examine = Wherigo.ZCommand{Text="Examine", CmdWith=false, Enabled=true, EmptyTargetListText="Nothing available"},
}
zitemCake.Commands.Examine.Custom = true
zitemCake.Commands.Examine.Id="adba4fb4-99db-4d3b-85db-b0d9aaa8fdc3"
zitemCake.Commands.Examine.WorksWithAll = true

-- Tasks --
ztaskVisitthePenguinPool = Wherigo.ZTask(cartZooventurePenguinEscape)
ztaskVisitthePenguinPool.Id="8d83dc9d-3bb0-4427-a18f-ddcafdccd54b"
ztaskVisitthePenguinPool.Name="Visit the Penguin Pool"
ztaskVisitthePenguinPool.Description=[[]]
ztaskVisitthePenguinPool.Visible=false
ztaskVisitthePenguinPool.Media=zmediaZonePenguinPool
ztaskVisitthePenguinPool.Active=false
ztaskVisitthePenguinPool.Complete=false
ztaskVisitthePenguinPool.CorrectState = "None"

ztaskVisittheNorthernTrail = Wherigo.ZTask(cartZooventurePenguinEscape)
ztaskVisittheNorthernTrail.Id="eb62f168-84c9-4be0-aab9-6efb15665c12"
ztaskVisittheNorthernTrail.Name="Visit the Northern Trail"
ztaskVisittheNorthernTrail.Description=[[]]
ztaskVisittheNorthernTrail.Visible=false
ztaskVisittheNorthernTrail.Media=zmediaZoneNorthernTrail
ztaskVisittheNorthernTrail.Active=false
ztaskVisittheNorthernTrail.Complete=false
ztaskVisittheNorthernTrail.CorrectState = "None"

ztaskVisitAustralasia = Wherigo.ZTask(cartZooventurePenguinEscape)
ztaskVisitAustralasia.Id="ef10aa3d-96ec-49ab-acf2-23793868ded2"
ztaskVisitAustralasia.Name="Visit Australasia"
ztaskVisitAustralasia.Description=[[]]
ztaskVisitAustralasia.Visible=false
ztaskVisitAustralasia.Media=zmediaZoneAustralasia
ztaskVisitAustralasia.Active=false
ztaskVisitAustralasia.Complete=false
ztaskVisitAustralasia.CorrectState = "None"

ztaskHelpRoundUpthePenguins = Wherigo.ZTask(cartZooventurePenguinEscape)
ztaskHelpRoundUpthePenguins.Id="068dc669-b71e-465b-b37a-27064da342d9"
ztaskHelpRoundUpthePenguins.Name="Help Round Up the Penguins"
ztaskHelpRoundUpthePenguins.Description=[[You need to find 6 more penguins.]]
ztaskHelpRoundUpthePenguins.Visible=false
ztaskHelpRoundUpthePenguins.Media=zmediaPenguins
ztaskHelpRoundUpthePenguins.Active=false
ztaskHelpRoundUpthePenguins.Complete=false
ztaskHelpRoundUpthePenguins.CorrectState = "None"

ztaskWakeupBrownBear = Wherigo.ZTask(cartZooventurePenguinEscape)
ztaskWakeupBrownBear.Id="782421be-e0e0-4310-b311-313ed39264fe"
ztaskWakeupBrownBear.Name="Wake up Brown Bear"
ztaskWakeupBrownBear.Description=[[Find Brown Bear's alarm clock and 'Use' it to wake him up.]]
ztaskWakeupBrownBear.Visible=false
ztaskWakeupBrownBear.Media=zmediaAlarmClcok
ztaskWakeupBrownBear.Active=false
ztaskWakeupBrownBear.Complete=false
ztaskWakeupBrownBear.CorrectState = "None"

ztaskReturntheTigersStripes = Wherigo.ZTask(cartZooventurePenguinEscape)
ztaskReturntheTigersStripes.Id="35c4d170-707b-4c36-9c95-e5712b7c0789"
ztaskReturntheTigersStripes.Name="Return the Tiger's Stripes"
ztaskReturntheTigersStripes.Description=[[Find Tiger's stripes and 'Give' them back to him.]]
ztaskReturntheTigersStripes.Visible=false
ztaskReturntheTigersStripes.Media=zmediaTigerStripes
ztaskReturntheTigersStripes.Active=false
ztaskReturntheTigersStripes.Complete=false
ztaskReturntheTigersStripes.CorrectState = "None"

ztaskFindanAdhesiveforTiger = Wherigo.ZTask(cartZooventurePenguinEscape)
ztaskFindanAdhesiveforTiger.Id="3de3f637-13e3-4d9f-ba93-21ed8ad9aa6d"
ztaskFindanAdhesiveforTiger.Name="Find an Adhesive for Tiger"
ztaskFindanAdhesiveforTiger.Description=[[Find something sticky and 'Give' it to Tiger.]]
ztaskFindanAdhesiveforTiger.Visible=false
ztaskFindanAdhesiveforTiger.Media=zmediaSadTiger
ztaskFindanAdhesiveforTiger.Active=false
ztaskFindanAdhesiveforTiger.Complete=false
ztaskFindanAdhesiveforTiger.CorrectState = "None"

ztaskVisitTropicalAsia = Wherigo.ZTask(cartZooventurePenguinEscape)
ztaskVisitTropicalAsia.Id="a5a14006-6b56-465c-9c72-48fd1919c0f9"
ztaskVisitTropicalAsia.Name="Visit Tropical Asia"
ztaskVisitTropicalAsia.Description=[[]]
ztaskVisitTropicalAsia.Visible=false
ztaskVisitTropicalAsia.Media=zmediaZoneTropicalAsia
ztaskVisitTropicalAsia.Active=false
ztaskVisitTropicalAsia.Complete=false
ztaskVisitTropicalAsia.CorrectState = "None"

ztaskVisittheTemperateForest = Wherigo.ZTask(cartZooventurePenguinEscape)
ztaskVisittheTemperateForest.Id="6bbf28f8-2d1e-42bf-bb19-4095435c9774"
ztaskVisittheTemperateForest.Name="Visit the Temperate Forest"
ztaskVisittheTemperateForest.Description=[[]]
ztaskVisittheTemperateForest.Visible=false
ztaskVisittheTemperateForest.Media=zmediaZoneTemperateForest
ztaskVisittheTemperateForest.Active=false
ztaskVisittheTemperateForest.Complete=false
ztaskVisittheTemperateForest.CorrectState = "None"

ztaskVisittheAfricanSavanna = Wherigo.ZTask(cartZooventurePenguinEscape)
ztaskVisittheAfricanSavanna.Id="e0c85d10-3e8e-43bc-a79b-e24f75c5271d"
ztaskVisittheAfricanSavanna.Name="Visit the African Savanna"
ztaskVisittheAfricanSavanna.Description=[[]]
ztaskVisittheAfricanSavanna.Visible=false
ztaskVisittheAfricanSavanna.Media=zmediaZoneAfrica
ztaskVisittheAfricanSavanna.Active=false
ztaskVisittheAfricanSavanna.Complete=false
ztaskVisittheAfricanSavanna.CorrectState = "None"

ztaskRetrievetheSiamangsVoice = Wherigo.ZTask(cartZooventurePenguinEscape)
ztaskRetrievetheSiamangsVoice.Id="be56ecd1-7a6b-4a4d-8742-4a34213c3373"
ztaskRetrievetheSiamangsVoice.Name="Retrieve the Siamang's Voice"
ztaskRetrievetheSiamangsVoice.Description=[[Find the Siamang's voice and 'Give' it back to him.]]
ztaskRetrievetheSiamangsVoice.Visible=false
ztaskRetrievetheSiamangsVoice.Media=zmediaSiamangVoice
ztaskRetrievetheSiamangsVoice.Active=false
ztaskRetrievetheSiamangsVoice.Complete=false
ztaskRetrievetheSiamangsVoice.CorrectState = "None"

ztaskFindtheHipposDrainPlug = Wherigo.ZTask(cartZooventurePenguinEscape)
ztaskFindtheHipposDrainPlug.Id="030ea809-b236-4b36-86d9-2ff388a55118"
ztaskFindtheHipposDrainPlug.Name="Find the Hippo's Drain Plug"
ztaskFindtheHipposDrainPlug.Description=[[Find Hippo's drain plug and 'Give' it back to her.]]
ztaskFindtheHipposDrainPlug.Visible=false
ztaskFindtheHipposDrainPlug.Media=zmediaDrainPlug
ztaskFindtheHipposDrainPlug.Active=false
ztaskFindtheHipposDrainPlug.Complete=false
ztaskFindtheHipposDrainPlug.CorrectState = "None"

ztaskCurlthePigsTail = Wherigo.ZTask(cartZooventurePenguinEscape)
ztaskCurlthePigsTail.Id="22dc8ae7-3ef2-4a66-9696-bd8bd7c08ded"
ztaskCurlthePigsTail.Name="Curl the Pig's Tail"
ztaskCurlthePigsTail.Description=[[Devise a clever way to curl Pig's tail and save him from certain humiliation.]]
ztaskCurlthePigsTail.Visible=false
ztaskCurlthePigsTail.Media=zmediaSadPig
ztaskCurlthePigsTail.Active=false
ztaskCurlthePigsTail.Complete=false
ztaskCurlthePigsTail.CorrectState = "None"

ztaskVisittheTropicalRainForest = Wherigo.ZTask(cartZooventurePenguinEscape)
ztaskVisittheTropicalRainForest.Id="cccbc578-726a-4d13-9579-9bd1c8285e21"
ztaskVisittheTropicalRainForest.Name="Visit the Tropical Rain Forest"
ztaskVisittheTropicalRainForest.Description=[[]]
ztaskVisittheTropicalRainForest.Visible=false
ztaskVisittheTropicalRainForest.Media=zmediaZoneRainForest
ztaskVisittheTropicalRainForest.Active=false
ztaskVisittheTropicalRainForest.Complete=false
ztaskVisittheTropicalRainForest.CorrectState = "None"

-- Cartridge Variables --
TropicalAsiaAnswer = ""
SnowyOwlAnswer = ""
PigChat = "0"
PenguinVariable = 0
GorillaChat = "0"
PenguinCount = "6"
ChickenChat = false
AfricanAnswer = ""
HippoChat = "0"
RainForestAnswer = ""
KookaAnswer = ""
TigerChat = "0"
SnowyChat = "0"
ZebraChat = "0"
SiamangChat = "0"
TemperateAnswer = ""
NorthernTBoolean = false
PythonChat = "0"
SnowLeopardChat = "0"
SnowyTry = false
ColobusChat = "0"
ZooChat = "0"
KOOKABIRDANSWER = 0
cartZooventurePenguinEscape.ZVariables = {TropicalAsiaAnswer = "", SnowyOwlAnswer = "", PigChat = "0", PenguinVariable = 0, GorillaChat = "0", PenguinCount = "6", ChickenChat = false, AfricanAnswer = "", HippoChat = "0", RainForestAnswer = "", KookaAnswer = "", TigerChat = "0", SnowyChat = "0", ZebraChat = "0", SiamangChat = "0", TemperateAnswer = "", NorthernTBoolean = false, PythonChat = "0", SnowLeopardChat = "0", SnowyTry = false, ColobusChat = "0", ZooChat = "0", KOOKABIRDANSWER = 0}

-- Builder Variables (to be read by the builder only) --
buildervar = {}
buildervar.TropicalAsiaAnswer = {}
buildervar.TropicalAsiaAnswer.Id ="a2d4802a-e1ba-4c69-87ca-64909df1851e"
buildervar.TropicalAsiaAnswer.Name = "TropicalAsiaAnswer"
buildervar.TropicalAsiaAnswer.Type = "String"
buildervar.TropicalAsiaAnswer.Data=[[]]
buildervar.TropicalAsiaAnswer.Description=[[]]

buildervar.SnowyOwlAnswer = {}
buildervar.SnowyOwlAnswer.Id ="2f45bc85-ba66-4707-af88-b83dcf13f1e4"
buildervar.SnowyOwlAnswer.Name = "SnowyOwlAnswer"
buildervar.SnowyOwlAnswer.Type = "String"
buildervar.SnowyOwlAnswer.Data=[[]]
buildervar.SnowyOwlAnswer.Description=[[]]

buildervar.PigChat = {}
buildervar.PigChat.Id ="9320502a-83a1-4d00-b4a7-0299e69bedd4"
buildervar.PigChat.Name = "PigChat"
buildervar.PigChat.Type = "String"
buildervar.PigChat.Data=[[0]]
buildervar.PigChat.Description=[[]]

buildervar.PenguinVariable = {}
buildervar.PenguinVariable.Id ="cdbef79d-aa6a-4b99-b4d2-5e4b9d7215b8"
buildervar.PenguinVariable.Name = "PenguinVariable"
buildervar.PenguinVariable.Type = "Number"
buildervar.PenguinVariable.Data=[[0]]
buildervar.PenguinVariable.Description=[[]]

buildervar.GorillaChat = {}
buildervar.GorillaChat.Id ="b812e9f2-4d51-4b40-949b-58b9c7f7001c"
buildervar.GorillaChat.Name = "GorillaChat"
buildervar.GorillaChat.Type = "String"
buildervar.GorillaChat.Data=[[0]]
buildervar.GorillaChat.Description=[[]]

buildervar.PenguinCount = {}
buildervar.PenguinCount.Id ="83653c60-ec94-4b1a-9564-4015914102dc"
buildervar.PenguinCount.Name = "PenguinCount"
buildervar.PenguinCount.Type = "String"
buildervar.PenguinCount.Data=[[6]]
buildervar.PenguinCount.Description=[[]]

buildervar.ChickenChat = {}
buildervar.ChickenChat.Id ="e833fff8-d9b3-49ca-9368-5d3c6a94c807"
buildervar.ChickenChat.Name = "ChickenChat"
buildervar.ChickenChat.Type = "Flag"
buildervar.ChickenChat.Data=[[False]]
buildervar.ChickenChat.Description=[[]]

buildervar.AfricanAnswer = {}
buildervar.AfricanAnswer.Id ="1e3b807b-1ad9-4cbb-a2f3-98e782c4e927"
buildervar.AfricanAnswer.Name = "AfricanAnswer"
buildervar.AfricanAnswer.Type = "String"
buildervar.AfricanAnswer.Data=[[]]
buildervar.AfricanAnswer.Description=[[]]

buildervar.HippoChat = {}
buildervar.HippoChat.Id ="12db2d1c-b1c5-4c5e-bdd8-e73080eef081"
buildervar.HippoChat.Name = "HippoChat"
buildervar.HippoChat.Type = "String"
buildervar.HippoChat.Data=[[0]]
buildervar.HippoChat.Description=[[]]

buildervar.RainForestAnswer = {}
buildervar.RainForestAnswer.Id ="3d23379a-0eca-41f1-8705-aa0b87b33e4b"
buildervar.RainForestAnswer.Name = "RainForestAnswer"
buildervar.RainForestAnswer.Type = "String"
buildervar.RainForestAnswer.Data=[[]]
buildervar.RainForestAnswer.Description=[[]]

buildervar.KookaAnswer = {}
buildervar.KookaAnswer.Id ="b7a8974c-05d1-4c84-9717-3333d833223f"
buildervar.KookaAnswer.Name = "KookaAnswer"
buildervar.KookaAnswer.Type = "String"
buildervar.KookaAnswer.Data=[[]]
buildervar.KookaAnswer.Description=[[]]

buildervar.TigerChat = {}
buildervar.TigerChat.Id ="568f5281-fd2e-4ff6-b7e1-1215090f1073"
buildervar.TigerChat.Name = "TigerChat"
buildervar.TigerChat.Type = "String"
buildervar.TigerChat.Data=[[0]]
buildervar.TigerChat.Description=[[]]

buildervar.SnowyChat = {}
buildervar.SnowyChat.Id ="416e4076-5d55-4c1d-96ae-054ac5d5c7ec"
buildervar.SnowyChat.Name = "SnowyChat"
buildervar.SnowyChat.Type = "String"
buildervar.SnowyChat.Data=[[0]]
buildervar.SnowyChat.Description=[[]]

buildervar.ZebraChat = {}
buildervar.ZebraChat.Id ="e28a230c-694a-4894-af07-271c43c502f6"
buildervar.ZebraChat.Name = "ZebraChat"
buildervar.ZebraChat.Type = "String"
buildervar.ZebraChat.Data=[[0]]
buildervar.ZebraChat.Description=[[]]

buildervar.SiamangChat = {}
buildervar.SiamangChat.Id ="0a1c7a63-7150-4c54-8322-225c824a3b94"
buildervar.SiamangChat.Name = "SiamangChat"
buildervar.SiamangChat.Type = "String"
buildervar.SiamangChat.Data=[[0]]
buildervar.SiamangChat.Description=[[]]

buildervar.TemperateAnswer = {}
buildervar.TemperateAnswer.Id ="4a3f0b80-cb6d-4b35-859c-50a6874dd0e3"
buildervar.TemperateAnswer.Name = "TemperateAnswer"
buildervar.TemperateAnswer.Type = "String"
buildervar.TemperateAnswer.Data=[[]]
buildervar.TemperateAnswer.Description=[[]]

buildervar.NorthernTBoolean = {}
buildervar.NorthernTBoolean.Id ="67d14f97-c714-4d16-a235-7382f963d6d4"
buildervar.NorthernTBoolean.Name = "NorthernTBoolean"
buildervar.NorthernTBoolean.Type = "Flag"
buildervar.NorthernTBoolean.Data=[[False]]
buildervar.NorthernTBoolean.Description=[[]]

buildervar.PythonChat = {}
buildervar.PythonChat.Id ="c13e3df8-c460-4492-a4fd-4fb784ccc02d"
buildervar.PythonChat.Name = "PythonChat"
buildervar.PythonChat.Type = "String"
buildervar.PythonChat.Data=[[0]]
buildervar.PythonChat.Description=[[]]

buildervar.SnowLeopardChat = {}
buildervar.SnowLeopardChat.Id ="40572ed7-5cb0-4f04-9aab-fd080dc8ba20"
buildervar.SnowLeopardChat.Name = "SnowLeopardChat"
buildervar.SnowLeopardChat.Type = "String"
buildervar.SnowLeopardChat.Data=[[0]]
buildervar.SnowLeopardChat.Description=[[]]

buildervar.SnowyTry = {}
buildervar.SnowyTry.Id ="de378131-ac95-442a-a353-429a2ecce817"
buildervar.SnowyTry.Name = "SnowyTry"
buildervar.SnowyTry.Type = "Flag"
buildervar.SnowyTry.Data=[[False]]
buildervar.SnowyTry.Description=[[]]

buildervar.ColobusChat = {}
buildervar.ColobusChat.Id ="bfe97059-28fc-4b74-9c8b-bc83adc103ca"
buildervar.ColobusChat.Name = "ColobusChat"
buildervar.ColobusChat.Type = "String"
buildervar.ColobusChat.Data=[[0]]
buildervar.ColobusChat.Description=[[]]

buildervar.ZooChat = {}
buildervar.ZooChat.Id ="e4847fd8-296c-42fc-918d-16b9b87189e1"
buildervar.ZooChat.Name = "ZooChat"
buildervar.ZooChat.Type = "String"
buildervar.ZooChat.Data=[[0]]
buildervar.ZooChat.Description=[[]]

buildervar.KOOKABIRDANSWER = {}
buildervar.KOOKABIRDANSWER.Id ="e9a976a4-6e02-4923-9aed-af1abb6eaa95"
buildervar.KOOKABIRDANSWER.Name = "KOOKABIRDANSWER"
buildervar.KOOKABIRDANSWER.Type = "Number"
buildervar.KOOKABIRDANSWER.Data=[[0]]
buildervar.KOOKABIRDANSWER.Description=[[]]


-- ZTimers --

-- Inputs --
zinputNorthernTrail = Wherigo.ZInput(cartZooventurePenguinEscape)
zinputNorthernTrail.Id="1386d5b7-f156-41a1-a4a4-bf483001d6a8"
zinputNorthernTrail.Name="NorthernTrail"
zinputNorthernTrail.Description=[[]]
zinputNorthernTrail.Visible=true
zinputNorthernTrail.Choices = {"Shorter beaks", "A different bird call", "Dark spots", "Bigger feet"}
zinputNorthernTrail.InputType="MultipleChoice"
zinputNorthernTrail.InputVariableId="2f45bc85-ba66-4707-af88-b83dcf13f1e4"
zinputNorthernTrail.Text=[["I've been looking for a female owl for quite some time now, but I just don't know how to spot them! How are female owls different than male owls?"]]

zinputKookaburra = Wherigo.ZInput(cartZooventurePenguinEscape)
zinputKookaburra.Id="4081b43f-526b-42c2-8a5a-6f1de89481fb"
zinputKookaburra.Name="Kookaburra"
zinputKookaburra.Description=[[How many Kookaburra birds are there in the Kookaburra habitat?]]
zinputKookaburra.Visible=true
zinputKookaburra.InputType="Text"
zinputKookaburra.InputVariableId="e9a976a4-6e02-4923-9aed-af1abb6eaa95"
zinputKookaburra.Text=[["I think I saw that penguin, but I can't be sure! Tell me, how many Kookaburra birds are there in the Kookaburra habitat."]]

zinputAfricanSavanna = Wherigo.ZInput(cartZooventurePenguinEscape)
zinputAfricanSavanna.Id="4d660d10-4691-47ad-b0e4-cef6f7b91567"
zinputAfricanSavanna.Name="AfricanSavanna"
zinputAfricanSavanna.Description=[[]]
zinputAfricanSavanna.Visible=true
zinputAfricanSavanna.InputType="Text"
zinputAfricanSavanna.InputVariableId="1e3b807b-1ad9-4cbb-a2f3-98e782c4e927"
zinputAfricanSavanna.Text=[[Which animal has markings that are like a human fingerprint?]]

zinputTropicalAsia = Wherigo.ZInput(cartZooventurePenguinEscape)
zinputTropicalAsia.Id="79b0e5e5-a2cd-41b6-9885-79952f8bce0e"
zinputTropicalAsia.Name="TropicalAsia"
zinputTropicalAsia.Description=[[]]
zinputTropicalAsia.Visible=true
zinputTropicalAsia.Choices = {"Research Station", "Trail of Vines", "West side of Exhibit", "East side of Exhibit"}
zinputTropicalAsia.InputType="MultipleChoice"
zinputTropicalAsia.InputVariableId="a2d4802a-e1ba-4c69-87ca-64909df1851e"
zinputTropicalAsia.Text=[[Where could the penguin be hiding?]]

zinputTemperateForest = Wherigo.ZInput(cartZooventurePenguinEscape)
zinputTemperateForest.Id="bb9434a4-7470-413f-8ea0-bdb818ff06a7"
zinputTemperateForest.Name="TemperateForest"
zinputTemperateForest.Description=[[]]
zinputTemperateForest.Visible=true
zinputTemperateForest.InputType="Text"
zinputTemperateForest.InputVariableId="4a3f0b80-cb6d-4b35-859c-50a6874dd0e3"
zinputTemperateForest.Text=[[How many watts does it take to turn the bathroom lights on?]]

zinputRainForest = Wherigo.ZInput(cartZooventurePenguinEscape)
zinputRainForest.Id="66d0d939-2fae-472a-9881-b37d01334dd6"
zinputRainForest.Name="RainForest"
zinputRainForest.Description=[[]]
zinputRainForest.Visible=true
zinputRainForest.InputType="Text"
zinputRainForest.InputVariableId="3d23379a-0eca-41f1-8705-aa0b87b33e4b"
zinputRainForest.Text=[["Find the chart with all of the birds and use it as a reference.

"The penguin is hiding in the indoor exhibits of the Rain Forest Canopy Bird Room. Look for the bird with the skinniest neck. What is that bird's name?"]]

-- WorksWithList for zobject zcommands --
zitemAlarmClock.Commands.UseWith.WorksWithList={zcharacterZookeeper, zcharacterBrownBear, zcharacterSnowyOwl, }
zitemHoney.Commands.Give.WorksWithList={zcharacterZookeeper, zcharacterTiger, zcharacterSnowLeopard, zcharacterSunBear, }
zitemTigerStripes.Commands.Give.WorksWithList={zcharacterZookeeper, zcharacterTiger, zcharacterSnowLeopard, }
zitemDrainPlug.Commands.Give.WorksWithList={zcharacterZookeeper, zcharacterHippopotamus, zcharacterZebra, }
zitemSiamangsVoice.Commands.Give.WorksWithList={zcharacterZookeeper, zcharacterPython, zcharacterSiamang, }
zitemLemon.Commands.Give.WorksWithList={zcharacterZookeeper, zcharacterSadPig, }
zitemShampoo.Commands.UseWith.WorksWithList={zcharacterSilverbackGorilla, }

--
-- Events/Conditions/Actions --
--

-------------------------------------------------------------------------------
------Builder Generated functions, Do not Edit, this will be overwritten------
-------------------------------------------------------------------------------

function cartZooventurePenguinEscape:OnStart()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
zonePenguinPool.Visible = true
zonePenguinPool.Active = true
ztaskVisitthePenguinPool.Active = true
ztaskVisitthePenguinPool.Visible = true
Wherigo.Dialog{{Text=[["Hi! Welcome to the Woodland Park Zoo! I'm the Zookeeper and I'll be your guide. 

"Our tour starts at the Penguin Pool. Don't forget to grab a map at the entrance. It will help as we visit all of the interesting areas in the zoo."]],Media=zmediaZookeeper_MSG},{Text=[[New Task: Visit the Penguin Pool
		
Check the 'Locations' tab to navigate.]],Media=zmediaZonePenguinPool},}
end

function zonePenguinPool:OnEnter()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   ztaskVisitthePenguinPool.Complete == false and  not Player:Contains(zitemJaredthePenguin) then
ZooChat = "0"
ztaskVisitthePenguinPool.Complete = true
zcharacterZookeeper:MoveTo(zonePenguinPool)
zcharacterPenguins:MoveTo(zonePenguinPool)
Wherigo.MessageBox{Text=[["Here at the Penguin Pool, we have 6 Penguins: Shauna, Jen, Koko, Ben, Jared, and Brian. Try interacting with them."]],Media=zmediaZookeeper_MSG,}
else
if   PenguinVariable == 6 and ztaskVisitthePenguinPool.Complete == false then
ZooChat = "39"
ztaskVisitthePenguinPool.Complete = true
ztaskHelpRoundUpthePenguins.Complete = true
zcharacterZookeeper:MoveTo(zonePenguinPool)
zcharacterPenguins:MoveTo(zonePenguinPool)
zcharacterPenguins.Visible = true
zitemShaunathePenguin:MoveTo(nil)
zitemJenthePenguin:MoveTo(nil)
zitemKokothePenguin:MoveTo(nil)
zitemBenthePenguin:MoveTo(nil)
zitemBrianthePenguin:MoveTo(nil)
zitemJaredthePenguin:MoveTo(nil)
Wherigo.Dialog{{Text=[["Wonderful! You collected all the penguins and brought them back for me. Now I can get them their dinner and everything can go back to normal. 

"Thank you so much for your help! Enjoy the rest of your time at the zoo!"]],Media=zmediaZookeeper_MSG},{Text=[[This cartridge was brought to you by J2B2.

Don't forget to log your playing experience online at www.wherigo.com. Thanks for playing!]],Media=zmediaIntro},}
end
end
end

function zonePenguinPool:OnExit()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   zoneNorthernTrail.Visible == true then
zonePenguinPool.Active = false
zonePenguinPool.Visible = false
zcharacterPenguins.Commands["Photograph"].Enabled = false
zcharacterPenguins.Commands["Yell"].Enabled = false
zcharacterPenguins.Commands["Feed"].Enabled = false
end
end

function zcharacterPenguins:OnPhotograph()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
ZooChat = "1"
zcharacterPenguins.Visible = false
ztaskVisittheNorthernTrail.Visible = true
ztaskVisittheNorthernTrail.Active = true
ztaskHelpRoundUpthePenguins.Visible = true
ztaskHelpRoundUpthePenguins.Active = true
zoneNorthernTrail.Visible = true
zoneNorthernTrail.Active = true
Wherigo.Dialog{{Text=[[**BRIGHT FLASHES POP EVERYWHERE! 
		
**The penguins run wildly in circles covering their eyes with their wings. 
		
**They run for the gate, bust it open and scatter in all directions.**]],},{Text=[["Whoa!! You can't take pictures with flash! It stresses out the animals. 
		
"Now I'm going to have to round up the penguins, and you are going to have to help me. Let's go to the Northern trail first."]],Media=zmediaZookeeper_MSG},{Text=[[New Task: Help Round up the Penguins]],Media=zmediaPenguins},{Text=[[New Task: Visit the Northern Trail

Check the 'Locations' tab to navigate.]],Media=zmediaZoneNorthernTrail},}
end

function zcharacterPenguins:OnYell()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
ZooChat = "1"
zcharacterPenguins.Visible = false
ztaskVisittheNorthernTrail.Visible = true
ztaskVisittheNorthernTrail.Active = true
ztaskHelpRoundUpthePenguins.Visible = true
ztaskHelpRoundUpthePenguins.Active = true
zoneNorthernTrail.Visible = true
zoneNorthernTrail.Active = true
Wherigo.Dialog{{Text=[[**The penguins cover their ears with their wings and shake their heads. 
		
**They run for the gate, bust it open and scatter in all directions.**]],},{Text=[["Whoa!! Listen, you have to understand that animals like a quiet environment. 
		
"Now I'm going to have to round up the penguins, and you are going to have to help me. Let's try the Northern trail first."]],Media=zmediaZookeeper_MSG},{Text=[[New Task: Help Round Up the Penguins]],Media=zmediaPenguins},{Text=[[New Task: Visit the Northern Trail

Check the 'Locations' tab to navigate.]],Media=zmediaZoneNorthernTrail},}
end

function zcharacterPenguins:OnFeed()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
ZooChat = "1"
zcharacterPenguins.Visible = false
zcharacterPenguins:MoveTo(nil)
ztaskVisittheNorthernTrail.Visible = true
ztaskVisittheNorthernTrail.Active = true
ztaskHelpRoundUpthePenguins.Visible = true
ztaskHelpRoundUpthePenguins.Active = true
zoneNorthernTrail.Visible = true
zoneNorthernTrail.Active = true
Wherigo.Dialog{{Text=[[**You dangle your day old candy bar over the pool. The penguins start going wild: running in circles and snapping hungrily.
		
**They run for the gate, bust it open and scatter in all directions.**]],},{Text=[["Whoa!! Number one rule of the zoo is 'Please, do not feed the animals.' They have a very different diet than you and me. 
		
"Now I'm going to have to round up the penguins, and you are going to have to help me. Let's try the Northern trail first."]],Media=zmediaZookeeper_MSG},{Text=[[New Task: Help Round Up the Penguins]],Media=zmediaPenguins},{Text=[[New Task: Visit the Northern Trail

Check the 'Locations' tab to navigate.]],Media=zmediaZoneNorthernTrail},}
end

function zcharacterPenguins:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   ztaskHelpRoundUpthePenguins.Complete == true then
Wherigo.MessageBox{Text=[[The penguins are happily swimming, waddling and squawking around their habitatat.]],}
else
Wherigo.MessageBox{Text=[[Humboldt Penguins can swim up to 20 miles per hour. They have a special gland that removes excess salt from their blood, which allows them to drink sea water.]],Media=zmediaPenguins_MSG,}
end
end

function zcharacterZookeeper:OnTalk()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   Wherigo.NoCaseEquals(ZooChat,"0") then
Wherigo.MessageBox{Text=[["The penguins are really quite friendly. Try interacting with them."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"1") then
Wherigo.MessageBox{Text=[["We need to find all of the penguins. Let's head over to the Northern Trail first! 
		
"If you're not sure where to go, check the 'Locations' tab to navigate."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"2") then
Wherigo.MessageBox{Text=[["Let's try talking to Brown Bear. He might be able to help us find the missing penguin."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"3") then
Wherigo.MessageBox{Text=[["Let's find Brown Bear's alarm clock so we can wake him up!"]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"4") then
Wherigo.MessageBox{Text=[["You found the alarm clock! Now you just need to 'Use' it to wake up Brown Bear!"]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"5") then
Wherigo.MessageBox{Text=[["You found Shauna the Penguin! Quick! 'Take' her before she runs away again!"]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"6") then
Wherigo.MessageBox{Text=[["Word is there's a penguin hiding in Australasia. Let's get moving!"]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"7") then
Wherigo.MessageBox{Text=[["Let's try talking to Tiger. He looks really upset. We might be able to help him."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"8") then
Wherigo.MessageBox{Text=[["Let's help Tiger find his stripes."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"9") then
Wherigo.MessageBox{Text=[["You found Tiger's stripes! Let's 'Give' them back to him."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"10") then
Wherigo.MessageBox{Text=[["We need to find something really, really sticky to put Tiger's stripes back on."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"11") then
Wherigo.MessageBox{Text=[["That's some industrial strength honey you've got there."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"12") then
Wherigo.MessageBox{Text=[["Tiger thinks that one of the penguins may be impersonating a Kookaburra bird. 
		
"Let's count how many Kookaburras there are in the Kookaburra habitat."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"13") then
Wherigo.MessageBox{Text=[["You found Jen the Penguin! Quick! 'Take' her before she runs away again!"]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"14") then
Wherigo.MessageBox{Text=[["Let's hurry over to Tropical Asia. We've got a penguin to catch!"]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"15") then
Wherigo.MessageBox{Text=[["I'm worried about Siamang. Let's go talk to him and make sure he's all right"]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"16") then
Wherigo.MessageBox{Text=[["Python might know what happened to Siamang's voice. Let's try talking to him"]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"17") then
Wherigo.MessageBox{Text=[["Let's help Python. 'Take' the Siamang's voice before it goes missing again."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"18") then
Wherigo.MessageBox{Text=[["Let's 'Give' Siamang's voice back to him."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"19") then
Wherigo.MessageBox{Text=[["I hope we can figure out where that tricky penguin is hiding!"]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"20") then
Wherigo.MessageBox{Text=[["You found Koko the Penguin! Quick! 'Take' her before she runs away again!"]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"21") then
Wherigo.MessageBox{Text=[["I've received reports of penguins near the African Savanna. Off we go!"]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"22") then
Wherigo.MessageBox{Text=[["Let's talk to Hippo. She might be able to help us find the missing penguin."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"23") then
Wherigo.MessageBox{Text=[["Let's go to the Primary School in the African Village and find that penguin!"]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"23a") then
Wherigo.MessageBox{Text=[["Have you figured out which animal it is?"]],Media=zmediaZookeeper_MSG,Callback=cartZooventurePenguinEscape.MsgBoxCBFuncs.MsgBoxCB4}
elseif Wherigo.NoCaseEquals(ZooChat,"24") then
Wherigo.MessageBox{Text=[["Let's try talking to Zebra. He might know where to look for the missing penguin."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"25") then
Wherigo.MessageBox{Text=[["Let's return Hippo's drain plug."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"26") then
Wherigo.MessageBox{Text=[["You found Ben the Penguin! Quick! 'Take' him before he runs away again!"]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"27") then
Wherigo.MessageBox{Text=[["Okay! We're ready to head to the Temperate Forest!"]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"28") then
Wherigo.MessageBox{Text=[["Pig looks upset. Let's talk to him and see if we can help."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"29") then
Wherigo.MessageBox{Text=[[""Poor Pig. Let's find a way to curl his tail again!"]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"30") then
Wherigo.MessageBox{Text=[["I wish we could cheer Pig up. Maybe he'd like that lemon to chew on."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"31") then
Wherigo.MessageBox{Text=[["Let's head over to the calves. There's some information near by that might help us turn the bathroom lights back on."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"32") then
Wherigo.MessageBox{Text=[["Great work! Be sure to 'Take' Brian the Penguin before he runs away again."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"33") then
Wherigo.MessageBox{Text=[["Let's head off to the Tropical Rain Forest for the last penguin."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"34") then
Wherigo.MessageBox{Text=[["Let's see what all the fuss is about in the gorilla pen."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"35") then
Wherigo.MessageBox{Text=[["We've got to get Gorilla's shampoo back from the Colobus Monkeys! That color hair just doesn't suit him."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"36") then
Wherigo.MessageBox{Text=[["Let's 'Use' Gorilla's shampoo to get him looking like his usual, handsome self again."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"37") then
Wherigo.MessageBox{Text=[["Hurry up and 'Take' Jared the Penguin before he runs away again!"]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"38") then
Wherigo.MessageBox{Text=[["Great work! You've collected all the missing penguins! It's time to head back to the Penguin Pool and return them to their habitat."]],Media=zmediaZookeeper_MSG,}
elseif Wherigo.NoCaseEquals(ZooChat,"39") then
Wherigo.MessageBox{Text=[["Thanks for your help! I couldn't have done it without you!"]],Media=zmediaZookeeper_MSG,}
end
end

function zoneNorthernTrail:OnEnter()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   ztaskVisittheNorthernTrail.Complete == false then
ztaskVisittheNorthernTrail.Complete = true
zcharacterZookeeper:MoveTo(zoneNorthernTrail)
zcharacterBrownBear:MoveTo(zoneNorthernTrail)
ZooChat = "2"
Wherigo.MessageBox{Text=[["Rumor has it that one of the penguins stole Brown Bear's alarm clock while he was hibernating.

"Let's try talking to him. He might be able to help us find the penguin."]],Media=zmediaZookeeper_MSG,}
end
end

function zoneNorthernTrail:OnExit()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   zoneAustralasia.Visible == true then
zoneNorthernTrail.Visible = false
zoneNorthernTrail.Active = false
end
end

function zcharacterBrownBear:OnTalk()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   Wherigo.NoCaseEquals(ZooChat,"2") then
ZooChat = "3"
zcharacterSnowyOwl:MoveTo(zoneNorthernTrail)
ztaskWakeupBrownBear.Visible = true
ztaskWakeupBrownBear.Active = true
Wherigo.Dialog{{Text=[["ZZZZZZZZZZZZZZZZ"

**Brown Bear is sound asleep.**]],Media=zmediaBrownBearSleeping_MSG},{Text=[["Oh no...without his alarm clock, Brown Bear can't wake up from his hibernation! We need to find it and wake him up."]],Media=zmediaZookeeper_MSG},}
else
Wherigo.MessageBox{Text=[["ZZZZZZZZZZZZZZZZ"

**Brown Bear is sound asleep**]],Media=zmediaBrownBearSleeping_MSG,}
end
end

function zcharacterBrownBear:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[Brown Bears live in coastal, tundra, and mountain forest habitats. They can eat 25-35 pounds of food per day and can run up to 30 miles per hour. Brown Bears begin hibernation in November or December and stay dormant until April or May.]],Media=zmediaBrownBearSleeping_MSG,}
end

function zcharacterSnowyOwl:OnTalk()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   Wherigo.NoCaseEquals(SnowyChat,"0") then
SnowyChat = "1"
Wherigo.MessageBox{Text=[["Who are you? Are you the ones trying to round up all of those penguins? I can help you, but you need to answer a question first!"]],Media=zmediaSnowyOwl_MSG,Callback=cartZooventurePenguinEscape.MsgBoxCBFuncs.MsgBoxCB1}
elseif Wherigo.NoCaseEquals(SnowyChat,"1") then
Wherigo.MessageBox{Text=[["I'm sure you'll get it this time."]],Media=zmediaSnowyOwl_MSG,Callback=cartZooventurePenguinEscape.MsgBoxCBFuncs.MsgBoxCB1}
elseif Wherigo.NoCaseEquals(SnowyChat,"2") then
Wherigo.MessageBox{Text=[["What are you waiting for? Go wake Brown Bear!"]],Media=zmediaSnowyOwl_MSG,}
elseif Wherigo.NoCaseEquals(SnowyChat,"3") then
Wherigo.MessageBox{Text=[["Isn't that one of the penguins you're looking for?"]],Media=zmediaSnowyOwl_MSG,}
elseif Wherigo.NoCaseEquals(SnowyChat,"4") then
Wherigo.MessageBox{Text=[["It appears that your work here is done."]],Media=zmediaSnowyOwl_MSG,}
end
end

function zcharacterSnowyOwl:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[If a Snowy Owl had 9 babies, the parents would have to feed them about 1500 lemmings before the babies would be ready to go off on their own. 
	
Unlike other predatory birds, owls often carry prey in their beaks rather than their talons.]],Media=zmediaSnowyOwl_MSG,}
end

function zitemAlarmClock:OnUseWith(target)
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   target == zcharacterZookeeper then
Wherigo.MessageBox{Text=[["Good, it still works! Let's 'Use' it on Brown Bear!"]],Media=zmediaZookeeper_MSG,}
elseif target == zcharacterSnowyOwl then
Wherigo.MessageBox{Text=[["Oooh. Goodness, that's a terrible noise. Put it away before I take it away."]],Media=zmediaSnowyOwl_MSG,}
elseif target == zcharacterBrownBear then
ztaskWakeupBrownBear.Complete = true
zitemAlarmClock:MoveTo(zcharacterBrownBear)
zitemAlarmClock.Visible = false
zitemAlarmClock.Commands["UseWith"].Enabled = false
zitemShaunathePenguin:MoveTo(zoneNorthernTrail)
ZooChat = "5"
SnowyChat = "3"
Wherigo.Dialog{{Text=[[**Yawn** 

"Mmmm. Good morning! I feel like I've been asleep forever. What month is it? July? Hmmm...I'm going back to sleep until next April!"]],Media=zmediaBrownBear_MSG},{Text=[["Ah!! What's this underneath me? Shauna the penguin! What are you doing here? 
			
"Can you please take this penguin out of here so I can get some rest? ZZZZZzzzzzz..."]],Media=zmediaBrownBear_MSG},}
end
end

function zitemAlarmClock:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[Brown Bear's alarm clock. Designed specifically for long term use.]],Media=zmediaAlarmClock_MSG,}
end

function zitemShaunathePenguin:OnTake()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
zitemShaunathePenguin.Commands["Take"].Enabled = false
zitemShaunathePenguin:MoveTo(Player)
PenguinCount = "5"
ztaskHelpRoundUpthePenguins.Description = [[You need to find ]]..PenguinCount..[[ more penguins.]]
ztaskVisitAustralasia.Visible = true
ztaskVisitAustralasia.Active = true
zoneAustralasia.Visible = true
zoneAustralasia.Active = true
ZooChat = "6"
SnowyChat = "4"
Wherigo.Dialog{{Text=[[New Inventory Item:
	- Shauna the Penguin]],Media=zmediaShaunathePenguin_MSG},{Text=[["Great! Now that we've set everything right in the Northern Trail, it's time to head off to Australasia to find the next penguin."]],Media=zmediaZookeeper_MSG},{Text=[[New Task: Visit Australasia
		
Check the 'Locations' tab to navigate.]],Media=zmediaZoneAustralasia},}
PenguinVariable = PenguinVariable + 1
end

function zitemShaunathePenguin:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[Shauna the Penguin is a clever hider. Be sure to keep an eye on her...if she gets away, you may not be able to find her again!]],Media=zmediaShaunathePenguin_MSG,}
end

function zinputNorthernTrail:OnGetInput(input)
SnowyOwlAnswer = input
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   Wherigo.NoCaseEquals(SnowyOwlAnswer,"Shorter beaks") or Wherigo.NoCaseEquals(SnowyOwlAnswer,"Bigger feet") or Wherigo.NoCaseEquals(SnowyOwlAnswer,"A different bird call") then
Wherigo.MessageBox{Text=[["Are you sure? Go ahead and try again."]],Media=zmediaSnowyOwl_MSG,Callback=cartZooventurePenguinEscape.MsgBoxCBFuncs.MsgBoxCB1}
elseif Wherigo.NoCaseEquals(SnowyOwlAnswer,"Dark spots") then
zitemAlarmClock:MoveTo(Player)
zitemAlarmClock.Commands["UseWith"].Enabled = true
ZooChat = "4"
SnowyChat = "2"
Wherigo.Dialog{{Text=[["That's exactly right! Very good!"]],Media=zmediaSnowyOwl_MSG},{Text=[["That kooky penguin came by earlier and dropped off this alarm clock. I can't find a use for it. Why don't you take it?"]],Media=zmediaSnowyOwl_MSG},{Text=[[New Inventory Item:
	- Alarm Clock]],Media=zmediaAlarmClock_MSG},}
elseif action == nil then
Wherigo.MessageBox{Text=[["You should at least try, dear."]],Media=zmediaSnowyOwl_MSG,}
end
end

function zoneAustralasia:OnEnter()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   ztaskVisitAustralasia.Complete == false then
ztaskVisitAustralasia.Complete = true
zcharacterZookeeper:MoveTo(zoneAustralasia)
zcharacterTiger:MoveTo(zoneAustralasia)
ZooChat = "7"
Wherigo.MessageBox{Text=[["I thought I saw a penguin heading this way and I was right. The little rascal stole Tiger's stripes! He's in an awful mood now. 
		
"Let's 'Talk' to Tiger and see if we can help."]],Media=zmediaZookeeper_MSG,}
end
end

function zoneAustralasia:OnExit()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   zoneTropicalAsia.Visible == true then
zoneAustralasia.Visible = false
zoneAustralasia.Active = false
end
end

function zcharacterTiger:OnTalk()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   Wherigo.NoCaseEquals(TigerChat,"0") then
zcharacterSnowLeopard:MoveTo(zoneAustralasia)
ztaskReturntheTigersStripes.Visible = true
ztaskReturntheTigersStripes.Active = true
ZooChat = "8"
TigerChat = "1"
Wherigo.MessageBox{Text=[["I'm not coming out...I seem to, uh, have misplaced something. Not my stripes! No! A tiger is NEVER without his stripes! 
		
*Sigh* "Ok, please help me find my stripes."]],Media=zmediaSadTiger_MSG,}
elseif Wherigo.NoCaseEquals(TigerChat,"1") then
Wherigo.MessageBox{Text=[["This is sooooo embarassing..."]],Media=zmediaSadTiger_MSG,}
elseif Wherigo.NoCaseEquals(TigerChat,"2") then
Wherigo.MessageBox{Text=[["Please help me stick my stripes back on!"]],Media=zmediaSadTiger_MSG,}
elseif Wherigo.NoCaseEquals(TigerChat,"3") then
Wherigo.MessageBox{Text=[["Well that was fast!"]],Media=zmediaStripeyTiger_MSG,Callback=cartZooventurePenguinEscape.MsgBoxCBFuncs.MsgBoxCB2}
elseif Wherigo.NoCaseEquals(TigerChat,"4") then
Wherigo.MessageBox{Text=[["Thanks so much for your help! I feel like my old self again."]],Media=zmediaStripeyTiger_MSG,}
end
end

function zcharacterTiger:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   zcharacterTiger:Contains(zitemHoney) then
Wherigo.MessageBox{Text=[[A Tiger's pattern of stripes is like a human's fingerprint: no two are the same. Tigers are excellent swimmers and can easily swim across rivers 4-5 miles wide. They are well known to be fearsome predators, but surprisingly, 9 out of 10 of their hunts are unsuccessful.]],Media=zmediaStripeyTiger_MSG,}
else
Wherigo.MessageBox{Text=[[A Tiger's pattern of stripes is like a human's fingerprint: no two are the same. Tigers are excellent swimmers and can easily swim across rivers 4-5 miles wide. They are well known to be fearsome predators, but surprisingly, 9 out of 10 of their hunts are unsuccessful.]],Media=zmediaSadTiger_MSG,}
end
end

function zcharacterSnowLeopard:OnTalk()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   Wherigo.NoCaseEquals(SnowLeopardChat,"0") then
zitemTigerStripes:MoveTo(zoneAustralasia)
SnowLeopardChat = "1"
Wherigo.MessageBox{Text=[["I woke up this morning to find a penguin in my habitat. I just wanted to know what he was doing here, but as soon as he saw me, he got scared and dropped these stripes everywhere! Would you take them out of here for me?"]],Media=zmediaSnowLeopard_MSG,}
elseif Wherigo.NoCaseEquals(SnowLeopardChat,"1") then
Wherigo.MessageBox{Text=[["Are you going to take those stripes or what?"]],Media=zmediaSnowLeopard_MSG,}
else
Wherigo.MessageBox{Text=[["I hope Tiger starts feeling better."]],Media=zmediaSnowLeopard_MSG,}
end
end

function zcharacterSnowLeopard:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[Snow leopards have longer tails than most cats their size. This helps them keep their balance on mountainous terrain and cover their nose and mouth in cold weather. They are solitary creatures and spend most of their time alone.]],Media=zmediaSnowLeopard_MSG,}
end

function zitemTigerStripes:OnTake()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
zitemTigerStripes.Commands["Take"].Enabled = false
zitemTigerStripes.Commands["Give"].Enabled = true
zitemTigerStripes.Commands["Use"].Enabled = true
zitemTigerStripes:MoveTo(Player)
ZooChat = "9"
SnowLeopardChat = "2"
Wherigo.Dialog{{Text=[[New Inventory Item:
	- Tiger Stripes]],Media=zmediaTigerStripes_MSG},{Text=[["Great! Now we just need to 'Give' these back to Tiger."]],Media=zmediaZookeeper_MSG},}
end

function zitemTigerStripes:OnGive(target)
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   target == zcharacterTiger then
zitemTigerStripes.Commands["Give"].Enabled = false
ztaskReturntheTigersStripes.Complete = true
ztaskFindanAdhesiveforTiger.Visible = true
ztaskFindanAdhesiveforTiger.Active = true
zitemTigerStripes:MoveTo(zcharacterTiger)
zitemTigerStripes.Visible = false
zcharacterSunBear:MoveTo(zoneAustralasia)
ZooChat = "10"
TigerChat = "2"
Wherigo.MessageBox{Text=[["Oh, thank you, thank-wait a minute! How am I supposed to put these back on? They're not going to hold themselves up!
		
*SOB* "Please help me find an adhesive to stick my stripes back on!"]],Media=zmediaSadTiger_MSG,}
elseif target == zcharacterZookeeper then
Wherigo.MessageBox{Text=[["Stripes, huh? No way, they would clash with my uniform."]],Media=zmediaZookeeper_MSG,}
elseif target == zcharacterSnowLeopard then
Wherigo.MessageBox{Text=[[*Chuckle* "Oh...the other leopards would have a field day if they saw me in those."]],Media=zmediaSnowLeopard_MSG,}
end
end

function zitemTigerStripes:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[They say a tiger's stripes are as individual as fingerprints, but they all look the same to you.]],Media=zmediaTigerStripes_MSG,}
end

function zitemTigerStripes:OnUse()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[You try on the stripes, but they just don't look right. Best 'Give' them to Tiger.]],Media=zmediaTigerStripes_MSG,}
end

function zcharacterSunBear:OnTalk()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   Wherigo.NoCaseEquals(ZooChat,"10") then
zitemHoney:MoveTo(Player)
zitemHoney.Commands["Give"].Enabled = true
ZooChat = "11"
Wherigo.Dialog{{Text=[["Mmmphhmhph---I mean, uh, hello. This honey that I'm eating is soooooooo sticky. I think you could pretty much stick anything together with this stuff. It tastes great, too! Here, have some."]],Media=zmediaSunBear_MSG},{Text=[[New Inventory Item:
	- Honey]],Media=zmediaHoney_MSG},}
else
Wherigo.MessageBox{Text=[["Mmmphhmhph. This honey is sooooo good, huh?"]],Media=zmediaSunBear_MSG,}
end
end

function zcharacterSunBear:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[Sun Bears are the smallest members of the bear family. These primarily nocturnal creatures are also excellent climbers.]],Media=zmediaSunBear_MSG,}
end

function zitemHoney:OnGive(target)
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   target == zcharacterTiger then
ztaskFindanAdhesiveforTiger.Complete = true
zitemHoney:MoveTo(zcharacterTiger)
zitemHoney.Visible = false
zitemHoney.Commands["Give"].Enabled = false
zcharacterTiger.Media = zmediaStripeyTiger
ZooChat = "12"
TigerChat = "3"
Wherigo.Dialog{{Text=[["Honey? Come on, Tigers don't eat honey. Oh, wait a minute...I can use this to put my stripes back on! Thank you!"]],Media=zmediaSadTiger_MSG},{Text=[["Now then, how many Kookaburras are there in the Kookaburra habitat? I'm pretty sure I saw Jen the Penguin sneak in, and I think she might be impersonating a Kookaburra.
			
"Come back and talk to me when you've finished the count."]],Media=zmediaStripeyTiger_MSG},}
elseif target == zcharacterSunBear then
Wherigo.MessageBox{Text=[["No thanks. I already have some honey...Wait a minute, did I give you that?"]],Media=zmediaSunBear_MSG,}
elseif target == zcharacterSnowLeopard then
Wherigo.MessageBox{Text=[["No thank you, dear. I don't like honey."]],Media=zmediaSnowLeopard_MSG,}
elseif target == zcharacterZookeeper then
Wherigo.MessageBox{Text=[["Oh, no! You got my hands all sticky! Maybe you should think about giving that to Tiger."]],Media=zmediaZookeeper_MSG,}
end
end

function zitemHoney:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[It's very, very sticky.]],Media=zmediaHoney_MSG,}
end

function zinputKookaburra:OnGetInput(input)
KOOKABIRDANSWER = tonumber(input)
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   KOOKABIRDANSWER <= 4 and KOOKABIRDANSWER ~= 0 then
zitemJenthePenguin:MoveTo(zoneAustralasia)
ZooChat = "13"
TigerChat = "4"
Wherigo.MessageBox{Text=[["Aha! I knew that penguin was hiding in their habitat! She thought she could pass as a Kookaburra! 
		
"You should 'Take' Jen the Penguin quickly, before she causes any more trouble."]],Media=zmediaStripeyTiger_MSG,}
else
Wherigo.MessageBox{Text=[["Hm...why don't you come back and 'Talk' to me when you're ready."]],Media=zmediaStripeyTiger_MSG,}
end
end

function zitemJenthePenguin:OnTake()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
zitemJenthePenguin:MoveTo(Player)
zitemJenthePenguin.Commands["Take"].Enabled = false
ZooChat = "14"
PenguinCount = "4"
ztaskHelpRoundUpthePenguins.Description = [[You need to find ]]..PenguinCount..[[ more penguins.]]
ztaskVisitTropicalAsia.Visible = true
ztaskVisitTropicalAsia.Active = true
zoneTropicalAsia.Visible = true
zoneTropicalAsia.Active = true
Wherigo.Dialog{{Text=[[New Inventory Item:
	- Jen the Penguin]],Media=zmediaJenthePenguin_MSG},{Text=[["Great job! It's time to head over to Tropical Asia to find the next penguin!"]],Media=zmediaZookeeper_MSG},{Text=[[New Task: Visit Tropical Asia
		
Check the 'Locations' tab to navigate.]],Media=zmediaZoneTropicalAsia},}
PenguinVariable = PenguinVariable + 1
end

function zitemJenthePenguin:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[This penguin won't stop laughing.]],Media=zmediaJenthePenguin_MSG,}
end

function zoneTropicalAsia:OnEnter()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   ztaskVisitTropicalAsia.Complete == false then
ztaskVisitTropicalAsia.Complete = true
zcharacterZookeeper:MoveTo(zoneTropicalAsia)
zcharacterSiamang:MoveTo(zoneTropicalAsia)
ZooChat = "15"
Wherigo.MessageBox{Text=[["Welcome to Tropical Asia, home to three types of primates, as well as elephants and tapirs. 
		
"Now that's odd...we should have heard a Siamang greeting us by now. I hope nothing has happened! Maybe we should go check on them just to be safe."]],Media=zmediaZookeeper_MSG,}
end
end

function zoneTropicalAsia:OnExit()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   zoneAfricanSavanna.Visible == true then
zoneTropicalAsia.Visible = false
zoneTropicalAsia.Active = false
end
end

function zcharacterSiamang:OnTalk()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   Wherigo.NoCaseEquals(SiamangChat,"0") then
ztaskRetrievetheSiamangsVoice.Visible = true
ztaskRetrievetheSiamangsVoice.Active = true
zcharacterPython:MoveTo(zoneTropicalAsia)
ZooChat = "16"
SiamangChat = "1"
Wherigo.Dialog{{Text=[[**The Siamang opens its mouth to speak, but nothing comes out.**]],Media=zmediaSiamang_MSG},{Text=[["Oh, no! Siamang lost his voice! WAIT--did you hear that? I think it came from Python's habitat. 
			
"Let's talk to Python and find out what's going on around here."]],Media=zmediaZookeeper_MSG},}
elseif Wherigo.NoCaseEquals(SiamangChat,"1") then
Wherigo.MessageBox{Text=[[**The Siamang opens its mouth to speak, but nothing comes out.**]],Media=zmediaSiamang_MSG,}
elseif Wherigo.NoCaseEquals(SiamangChat,"2") then
Wherigo.MessageBox{Text=[["You figured that out pretty quickly..."]],Media=zmediaSiamangWithVoice_MSG,Callback=cartZooventurePenguinEscape.MsgBoxCBFuncs.MsgBoxCB3}
elseif Wherigo.NoCaseEquals(SiamangChat,"3") then
Wherigo.MessageBox{Text=[["Thanks for giving me back my voice. Good luck with the penguins."]],Media=zmediaSiamangWithVoice_MSG,}
end
end

function zcharacterSiamang:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[Siamangs have the loudest call of all lesser ape species. It can be heard up to 3 miles away!]],Media=zmediaSiamang_MSG,}
end

function zcharacterPython:OnTalk()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   Wherigo.NoCaseEquals(PythonChat,"0") then
zitemSiamangsVoice:MoveTo(zoneTropicalAsia)
ZooChat = "17"
PythonChat = "1"
Wherigo.MessageBox{Text=[[*Cough Cough*

"Every time I try to speak, this weird noise comes out. I keep waking myself up at night. Can you help me?"]],Media=zmediaPython_MSG,}
elseif Wherigo.NoCaseEquals(PythonChat,"1") then
Wherigo.MessageBox{Text=[["Are you going to help me or not? Please 'Take' that terrible sound away!"]],Media=zmediaPython_MSG,}
else
Wherigo.MessageBox{Text=[["Thanks for helping me! That sound was driving me crazy!"]],Media=zmediaPython_MSG,}
end
end

function zcharacterPython:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[The largest python species is the reticulated python, which can reach lengths of up to 33 feet (10 m). It competes with the anaconda as the world's largest snake, although it is lighter and more slender than its South American counterpart!]],Media=zmediaPython_MSG,}
end

function zitemSiamangsVoice:OnTake()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
zitemSiamangsVoice:MoveTo(Player)
zitemSiamangsVoice.Commands["Take"].Enabled = false
zitemSiamangsVoice.Commands["Give"].Enabled = true
ZooChat = "18"
PythonChat = "2"
Wherigo.Dialog{{Text=[[**You reach inside Python's mouth and take Siamang's voice.**]],},{Text=[[New Inventory Item:
	- Siamang's Voice]],Media=zmediaSiamangVoice_MSG},{Text=[["Great job! Let's 'Give' this to the Siamang so things can return to normal around here."]],Media=zmediaZookeeper_MSG},}
end

function zitemSiamangsVoice:OnGive(target)
-- #GroupDescription=Script Description --
-- #Comment=Script Comment --
if   target == zcharacterPython then
Wherigo.MessageBox{Text=[["No way. I just got rid of that. I'm not holding onto it for you."]],Media=zmediaPython_MSG,}
elseif target == zcharacterZookeeper then
Wherigo.MessageBox{Text=[["You can't give that away! It's for Siamang!"]],Media=zmediaZookeeper_MSG,}
elseif target == zcharacterSiamang then
ztaskRetrievetheSiamangsVoice.Complete = true
zitemSiamangsVoice.Commands["Give"].Enabled = false
zitemSiamangsVoice.Visible = false
ZooChat = "19"
SiamangChat = "2"
zcharacterSiamang.Media = zmediaSiamangWithVoice
Wherigo.Dialog{{Text=[["Thank you so much. That tricky penguin stole my voice while I was sleeping, but I have an idea of where she is hiding."]],Media=zmediaSiamangWithVoice_MSG},{Text=[["If you go to the Orangutan Viewing area, you'll see a map that might help you find her. Take a wild guess, and I'll let you know if you're right!

"Come back and 'Talk' to me when you think you know where to look."]],Media=zmediaSiamangWithVoice_MSG},}
end
end

function zitemSiamangsVoice:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[It's the voice box of a Hylobates Syndactylus, more commonly known as the Siamang.]],Media=zmediaSiamangVoice_MSG,}
end

function zinputTropicalAsia:OnGetInput(input)
TropicalAsiaAnswer = input
-- #GroupDescription=Script Description --
-- #Comment=Script Comment --
if   Wherigo.NoCaseEquals(TropicalAsiaAnswer,"Research Station") or Wherigo.NoCaseEquals(TropicalAsiaAnswer,"West side of Exhibit") or Wherigo.NoCaseEquals(TropicalAsiaAnswer,"East side of Exhibit") then
Wherigo.MessageBox{Text=[["Nope, she's not there. Go ahead and try again."]],Media=zmediaSiamang_MSG,Callback=cartZooventurePenguinEscape.MsgBoxCBFuncs.MsgBoxCB3}
elseif Wherigo.NoCaseEquals(TropicalAsiaAnswer,"Trail of Vines") then
zitemKokothePenguin:MoveTo(zoneTropicalAsia)
ZooChat = "20"
SiamangChat = "3"
Wherigo.MessageBox{Text=[["That's exactly where Koko the Penguin is! Good work!"]],Media=zmediaOrangutanPenguin,}
else
Wherigo.MessageBox{Text=[["Nope. She's not there.

"Come back and 'Talk' to me when you're ready to try again."]],Media=zmediaSiamang_MSG,}
end
end

function zitemKokothePenguin:OnTake()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
zitemKokothePenguin:MoveTo(Player)
zitemKokothePenguin.Commands["Take"].Enabled = false
ZooChat = "21"
PenguinCount = "3"
ztaskHelpRoundUpthePenguins.Description = [[You need to find ]]..PenguinCount..[[ more penguins.]]
ztaskVisittheAfricanSavanna.Visible = true
ztaskVisittheAfricanSavanna.Active = true
zoneAfricanSavanna.Visible = true
zoneAfricanSavanna.Active = true
Wherigo.Dialog{{Text=[[New Inventory Item:
	- Koko the Penguin]],Media=zmediaKokothePenguin_MSG},{Text=[["Great! Now that we've set everything right in Tropical Asia, it's time to head off to the African Savanna to find the next penguin."]],Media=zmediaZookeeper_MSG},{Text=[[New Task: Visit the African Savanna
		
Check the 'Locations' tab to navigate.]],Media=zmediaZoneAfrica},}
PenguinVariable = PenguinVariable + 1
end

function zitemKokothePenguin:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[This penguin carries around crayons and paper.]],Media=zmediaKokothePenguin_MSG,}
end

function zoneAfricanSavanna:OnEnter()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
zcharacterZookeeper:MoveTo(zoneAfricanSavanna)
if   ztaskVisittheAfricanSavanna.Complete == false then
ztaskVisittheAfricanSavanna.Complete = true
zcharacterHippopotamus:MoveTo(zoneAfricanSavanna)
zitemCake:MoveTo(zoneAfricanSavanna)
ZooChat = "22"
Wherigo.MessageBox{Text=[["This is the African Savanna, home to giraffes, hippos, zebras, and other animals of the African plains. 
	  
"Hippo is always throwing some fantastic pool party that everyone goes to. Let's check if she has seen any penguins."]],Media=zmediaZookeeper_MSG,}
else
if   ztaskVisittheAfricanSavanna.Complete == true and Player:Contains(zitemDrainPlug) then
Wherigo.MessageBox{Text=[["Let's 'Give' the drain plug back to Hippo and keep looking for that penguin."]],Media=zmediaZookeeper_MSG,}
end
end
end

function zoneAfricanSavanna:OnExit()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   zoneTemperateForest.Visible == true then
zoneAfricanSavanna.Visible = false
zoneAfricanSavanna.Active = false
end
end

function zcharacterHippopotamus:OnTalk()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   Wherigo.NoCaseEquals(HippoChat,"0") then
ztaskFindtheHipposDrainPlug.Visible = true
ztaskFindtheHipposDrainPlug.Active = true
HippoChat = "1"
ZooChat = "23"
zoneAfricanVillage.Visible = true
zoneAfricanVillage.Active = true
Wherigo.Dialog{{Text=[["Oh my, it's so hot today! I was going to have a pool party, but someone stole the drain plug and all the water drained out!"]],Media=zmediaHippo_MSG},{Text=[["I'll tell you where to look for that penguin if you promise to help find my drain plug."]],Media=zmediaHippo_MSG},{Text=[["Try the African Village. I'm pretty sure I saw a penguin heading in that direction earlier today.

"Good luck! I'll be here with the cake."]],Media=zmediaHippo_MSG},}
elseif Wherigo.NoCaseEquals(HippoChat,"1") then
Wherigo.MessageBox{Text=[["Did you find my drain plug yet?"]],Media=zmediaHippo_MSG,}
elseif Wherigo.NoCaseEquals(HippoChat,"2") then
Wherigo.MessageBox{Text=[["Thanks for finding my drain plug!"]],Media=zmediaHippo_MSG,}
end
end

function zcharacterHippopotamus:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[The word "hippopotamus" actually means "river horse" in Greek. Hippos excrete a red liquid from their skin, which protects them from the sun. They can open their mouths up to 150 degrees wide!]],Media=zmediaHippo_MSG,}
end

function zinputAfricanSavanna:OnGetInput(input)
AfricanAnswer = input
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   Wherigo.NoCaseEquals(AfricanAnswer,"zebra") then
ztaskFindtheHipposDrainPlug.Complete = true
zcharacterZebra:MoveTo(zoneAfricanVillage)
ZooChat = "24"
Wherigo.MessageBox{Text=[[**A zebra comes running up to the viewing window.**]],Media=zmediaZebra_MSG,}
else
Wherigo.MessageBox{Text=[["Hm. Come back and 'Talk' to me when you're ready."]],Media=zmediaZookeeper_MSG,}
end
end

function zitemDrainPlug:OnGive(target)
-- #GroupDescription=Script Description --
-- #Comment=Script Comment --
if   target == zcharacterHippopotamus then
zitemDrainPlug:MoveTo(zcharacterHippopotamus)
zitemDrainPlug.Visible = false
zitemDrainPlug.Commands["Give"].Enabled = false
zitemBenthePenguin:MoveTo(zoneAfricanSavanna)
ZooChat = "26"
HippoChat = "2"
Wherigo.Dialog{{Text=[["Thank you for finding the drain plug for my pool. Now I can have a huge pool party. I'll even invite the Zebra!"]],Media=zmediaHippo_MSG},{Text=[["Oh, I caught this penguin hiding behind me. He was trying to steal a slice of my cake, tricky little fellow..."]],Media=zmediaHippo_MSG},}
elseif target == zcharacterZebra then
Wherigo.MessageBox{Text=[["No, I really think you should keep it. I want to go to Hippo's pool party, remember? You can't have a pool party if there's no water in your pool."]],Media=zmediaZebra_MSG,}
elseif target == zcharacterZookeeper then
Wherigo.MessageBox{Text=[["That's Hippo's drain plug! Don't give it away!"]],Media=zmediaZookeeper_MSG,}
end
end

function zitemDrainPlug:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[The plug for the Hippo's pool.]],Media=zmediaDrainPlug_MSG,}
end

function zcharacterZebra:OnTalk()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   Wherigo.NoCaseEquals(ZebraChat,"0") then
zitemDrainPlug:MoveTo(Player)
zitemDrainPlug.Commands["Give"].Enabled = true
ZooChat = "25"
ZebraChat = "1"
Wherigo.Dialog{{Text=[["I heard that Hippo's pool was drained by a penguin. Serves her right for not inviting him to her pool party. She never invites me either..."]],Media=zmediaZebra_MSG},{Text=[["That clever penguin was hiding behind me earlier today but he got hungry and ran off. He was in such a hurry that he forgot to take this drain plug with him. 

"I'll let you have it if you promise to ask Hippo to invite us next time..."]],Media=zmediaZebra_MSG},{Text=[[New Inventory Item:
	- Drain Plug]],Media=zmediaDrainPlug_MSG},}
else
Wherigo.MessageBox{Text=[["Do you think Hippo will invite me to her pool party?"]],Media=zmediaZebra_MSG,}
end
end

function zcharacterZebra:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[Each zebra has its own, unique stripe pattern, which makes for easy identification. The stripes on a zebra are meant to confuse predators when the zebras are running as a herd.]],Media=zmediaZebra_MSG,}
end

function zitemDrainPlug:OnExamine()
-- #GroupDescription=Script Description --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[The plug for the Hippo's pool.]],Media=zmediaDrainPlug_MSG,}
end

function zitemBenthePenguin:OnTake()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
zitemBenthePenguin:MoveTo(Player)
zitemBenthePenguin.Commands["Take"].Enabled = false
ZooChat = "27"
PenguinCount = "2"
ztaskHelpRoundUpthePenguins.Description = [[You need to find ]]..PenguinCount..[[ more penguins.]]
ztaskVisittheTemperateForest.Visible = true
ztaskVisittheTemperateForest.Active = true
zoneTemperateForest.Visible = true
zoneTemperateForest.Active = true
Wherigo.Dialog{{Text=[[New Inventory Item:
	- Ben the Penguin]],Media=zmediaBenthePenguin_MSG},{Text=[["Great! Now that we've set everything right in the African Savanna, it's time to head off to the Temperate Forest to find the next penguin."]],Media=zmediaZookeeper_MSG},{Text=[[New Task: Visit the Temperate Forest
		
Check the 'Locations' tab to navigate.]],Media=zmediaZoneTemperateForest},}
PenguinVariable = PenguinVariable + 1
end

function zitemBenthePenguin:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[This penguin's life long dream is to become a singer. Someday, Hippo's pool party would make a great venue.]],Media=zmediaBenthePenguin_MSG,}
end

function zoneTemperateForest:OnEnter()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   ztaskVisittheTemperateForest.Complete == false then
ztaskVisittheTemperateForest.Complete = true
ZooChat = "28"
zcharacterZookeeper:MoveTo(zoneTemperateForest)
zcharacterSadPig:MoveTo(zoneTemperateForest)
Wherigo.MessageBox{Text=[["Here we are at the Temperate Forest. There's a petting zoo with live animals like goats and sheep, but we don't have time for that now. We've got to find the penguin before he causes any more trouble!"]],Media=zmediaZookeeper_MSG,}
end
end

function zoneTemperateForest:OnExit()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   zoneTropicalRainForest.Visible == true then
zoneTemperateForest.Visible = false
zoneTemperateForest.Active = false
end
end

function zcharacterSadPig:OnTalk()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   Wherigo.NoCaseEquals(PigChat,"0") then
PigChat = "1"
ZooChat = "29"
ztaskCurlthePigsTail.Visible = true
ztaskCurlthePigsTail.Active = true
zcharacterChicken:MoveTo(zoneTemperateForest)
Wherigo.MessageBox{Text=[["I am so depressed! I woke up this morning to find that my beautiful, curly tail had gone completely straight! 

"If I go to the barn dance like this, everyone will laugh at me! Oh, this is terrible! Can you please help me?"]],Media=zmediaSadPig_MSG,}
elseif Wherigo.NoCaseEquals(PigChat,"1") then
Wherigo.MessageBox{Text=[["My poor, poor tail!"]],Media=zmediaSadPig_MSG,}
elseif Wherigo.NoCaseEquals(PigChat,"2") then
Wherigo.MessageBox{Text=[["Let's see if you've found what we need to turn the lights back on."]],Media=zmediaHappyPig_MSG,Callback=cartZooventurePenguinEscape.MsgBoxCBFuncs.MsgBoxCB5}
elseif Wherigo.NoCaseEquals(PigChat,"3") then
Wherigo.MessageBox{Text=[["Thank you so much for helping me! I hope you find all the penguins."]],Media=zmediaHappyPig_MSG,}
end
end

function zcharacterSadPig:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   zcharacterSadPig:Contains(zitemLemon) then
Wherigo.MessageBox{Text=[[Pigs are the fourth most intelligent animal behind humans, primates, and cetaceans (whales and dolphins). They have large brains and are able to learn very quickly.]],Media=zmediaHappyPig_MSG,}
else
Wherigo.MessageBox{Text=[[Pigs are the fourth most intelligent animal behind humans, primates, and cetaceans (whales and dolphins). They have large brains and are able to learn very quickly.]],Media=zmediaSadPig_MSG,}
end
end

function zcharacterChicken:OnTalk()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   ChickenChat == false then
ChickenChat = true
zitemEgg:MoveTo(zoneTemperateForest)
zitemLemon:MoveTo(zoneTemperateForest)
Wherigo.MessageBox{Text=[["Who is that? Come closer. My eyes aren't what they used to be. 

"Have a look at my fantastic collection of eggs. I've even got a yellow one!"]],Media=zmediaHen_MSG,}
else
Wherigo.MessageBox{Text=[["My eggs should be hatching any day now. I'm so excited!"]],Media=zmediaHen_MSG,}
end
end

function zcharacterChicken:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[There are more chickens than people in the world. China alone is home to over 3 billion chickens. The chicken is also the closest living relative of the T-Rex!]],Media=zmediaHen_MSG,}
end

function zitemEgg:OnTake()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[["SQUAWK! Don't touch my egg!"]],Media=zmediaHen_MSG,}
end

function zitemEgg:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[It's a good-lookin' chicken egg.]],Media=zmediaEgg_MSG,}
end

function zitemLemon:OnTake()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
zitemLemon:MoveTo(Player)
ZooChat = "30"
zitemLemon.Commands["Take"].Enabled = false
zitemLemon.Commands["Give"].Enabled = true
Wherigo.MessageBox{Text=[[New Inventory Item:
	- Lemon]],Media=zmediaLemon_MSG,}
end

function zitemLemon:OnGive(target)
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   target == zcharacterZookeeper then
Wherigo.MessageBox{Text=[["I'll bet that lemon's so sour it could curl my hair!"]],Media=zmediaZookeeper_MSG,}
elseif target == zcharacterSadPig then
zitemLemon:MoveTo(zcharacterSadPig)
zitemLemon.Visible = false
zcharacterSadPig.Name = "Happy Pig"
zcharacterSadPig.Media = zmediaHappyPig
zitemLemon.Commands["Give"].Enabled = false
ztaskCurlthePigsTail.Complete = true
PigChat = "2"
ZooChat = "31"
Wherigo.Dialog{{Text=[["Eeeeuuuugggghhhh! That's sour! It really curls my tail! 

"Hey! That's it! Thanks for curling my tail! I'll be the hit of the barn dance."]],Media=zmediaHappyPig_MSG},{Text=[["The pesky penguin you're looking for is hiding in one of the bathrooms! Unfortunately the power is out so you will have a hard time finding him."]],Media=zmediaHappyPig_MSG},{Text=[["There's an information board near the electrical meter over by the calves. It contains some information that can help us turn the lights back on!

"Come back and 'Talk' to me when you think you've found it."]],Media=zmediaHappyPig_MSG},}
end
end

function zitemLemon:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[The lemon is sour, but sweet---Nature's candy.]],Media=zmediaLemon_MSG,}
end

function zinputTemperateForest:OnGetInput(input)
TemperateAnswer = input
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   Wherigo.NoCaseEquals(TemperateAnswer,"1000") then
PigChat = "3"
ZooChat = "32"
zitemBrianthePenguin:MoveTo(zoneTemperateForest)
Wherigo.Dialog{{Text=[[**The lights turn back on.**]],},{Text=[["There's Brian the penguin! Quick! 'Take' him before he runs away again!"]],Media=zmediaHappyPig_MSG},}
else
Wherigo.MessageBox{Text=[["Hm. The lights aren't turning back on. Why don't you try again?"]],Media=zmediaHappyPig_MSG,Callback=cartZooventurePenguinEscape.MsgBoxCBFuncs.MsgBoxCB5}
end
end

function zitemBrianthePenguin:OnTake()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
zitemBrianthePenguin:MoveTo(Player)
zitemBrianthePenguin.Commands["Take"].Enabled = false
ZooChat = "33"
PenguinCount = "1"
ztaskVisittheTropicalRainForest.Visible = true
ztaskVisittheTropicalRainForest.Active = true
zoneTropicalRainForest.Visible = true
zoneTropicalRainForest.Active = true
ztaskHelpRoundUpthePenguins.Description = [[You need to find ]]..PenguinCount..[[ more penguin.]]
Wherigo.Dialog{{Text=[[New Inventory Item:
	- Brian the Penguin]],Media=zmediaBrianthePenguin_MSG},{Text=[["Great work! Let's head over to the Tropical Rain Forest to find the last penguin!"]],Media=zmediaZookeeper_MSG},{Text=[[New Task: Visit the Tropical Rain Forest
		
Check the 'Locations' tab to navigate.]],Media=zmediaZoneRainForest},}
PenguinVariable = PenguinVariable + 1
end

function zitemBrianthePenguin:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[This penguin is surprisingly quiet. Keep an eye on him. He might be plotting something...]],Media=zmediaBrianthePenguin_MSG,}
end

function zoneTropicalRainForest:OnEnter()
-- #GroupDescription=Script Description --
-- #Comment=Script Comment --
if   ztaskVisittheTropicalRainForest.Complete == false then
ztaskVisittheTropicalRainForest.Complete = true
zcharacterZookeeper:MoveTo(zoneTropicalRainForest)
zcharacterSilverbackGorilla:MoveTo(zoneTropicalRainForest)
ZooChat = "34"
Wherigo.MessageBox{Text=[["The Tropical Rain Forest is home to our band of gorillas, a jaguar, and the red-ruffed lemur. 
		
"Sounds like there's something going on in the gorilla pen. Let's go check it out. Keep an eye out for that penguin!"]],Media=zmediaZookeeper_MSG,}
end
end

function zoneTropicalRainForest:OnExit()
-- #GroupDescription=Script Description --
-- #Comment=Script Comment --
if   zonePenguinPool.Visible == true then
zoneTropicalRainForest.Visible = false
zoneTropicalRainForest.Active = false
end
end

function zcharacterSilverbackGorilla:OnTalk()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   Wherigo.NoCaseEquals(GorillaChat,"0") then
GorillaChat = "1"
ZooChat = "35"
zcharacterColobusMonkey:MoveTo(zoneTropicalRainForest)
Wherigo.Dialog{{Text=[["I usually don't associate with strange birds, but this penguin offered to style the hair on my back. 

"Well, next time I'll be getting references, because now my gorgeous silver back hair is pink!"]],Media=zmediaPinkBackGorilla_MSG},{Text=[["Normally, I have shampoo, but those crazy Colobus Monkeys stole it earlier. 

"I need you to retrieve my shampoo. Will you please try to talk some sense into them?"]],Media=zmediaPinkBackGorilla_MSG},}
elseif Wherigo.NoCaseEquals(GorillaChat,"1") then
Wherigo.MessageBox{Text=[["Did you get my shampoo back yet?"]],Media=zmediaPinkBackGorilla_MSG,}
elseif Wherigo.NoCaseEquals(GorillaChat,"2") then
Wherigo.MessageBox{Text=[["I feel so much better!"]],Media=zmediaSilverBackGorilla_MSG,}
end
end

function zcharacterSilverbackGorilla:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   zcharacterSilverbackGorilla:Contains(zitemShampoo) then
Wherigo.MessageBox{Text=[[Adult male gorillas eat about 70 pounds of food per day. That's about 280 Quarter-Pounder cheeseburgers from McDonalds.]],Media=zmediaSilverBackGorilla_MSG,}
else
Wherigo.MessageBox{Text=[[Adult male gorillas eat about 70 pounds of food per day. That's about 280 Quarter-Pounder cheeseburgers from McDonalds.]],Media=zmediaPinkBackGorilla_MSG,}
end
end

function zcharacterColobusMonkey:OnTalk()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   Wherigo.NoCaseEquals(ColobusChat,"0") then
ColobusChat = "1"
Wherigo.MessageBox{Text=[["You know, I kind of like the Silverback Gorilla's new hairdo. Pink is one of my favorite colors. 

"Anyway, the penguin you're looking for came in here and trashed my habitat! If you can find that rascal, I'll give you the shampoo."]],Media=zmediaColobus_MSG,Callback=cartZooventurePenguinEscape.MsgBoxCBFuncs.MsgBoxCB6}
elseif Wherigo.NoCaseEquals(ColobusChat,"1") then
Wherigo.MessageBox{Text=[["Ready this time?"]],Media=zmediaColobus_MSG,Callback=cartZooventurePenguinEscape.MsgBoxCBFuncs.MsgBoxCB6}
else
Wherigo.MessageBox{Text=[["Would you like me to do your hair?"]],Media=zmediaColobus_MSG,}
end
end

function zcharacterColobusMonkey:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[Colobus monkeys were once thought to be abnormal because they have no thumb. Instead, these creatures have only a small stub where a thumb would usually be. This is actually an adaptation which allows colobus monkeys to travel easily along the tops of branches.]],Media=zmediaColobus_MSG,}
end

function zitemShampoo:OnUseWith(target)
-- #GroupDescription=Script --
-- #Comment=Script Comment --
GorillaChat = "2"
ZooChat = "37"
zitemShampoo:MoveTo(zcharacterSilverbackGorilla)
zitemShampoo.Visible = false
zitemJaredthePenguin:MoveTo(zoneTropicalRainForest)
zcharacterSilverbackGorilla.Media = zmediaSilverBackGorilla
zitemShampoo.Commands["UseWith"].Enabled = false
Wherigo.MessageBox{Text=[["Oh, thank you so much! My silver mane is back to its normal self and beautiful as ever! 

"I'll grab that mischievous little penguin for you!"]],Media=zmediaSilverBackGorilla_MSG,}
end

function zitemShampoo:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[For sensitive scalps.]],Media=zmediaShampoo_MSG,}
end

function zitemJaredthePenguin:OnTake()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
zitemJaredthePenguin:MoveTo(Player)
zitemJaredthePenguin.Commands["Take"].Enabled = false
ztaskHelpRoundUpthePenguins.Name = "Return the Penguins to the Pool"
ztaskHelpRoundUpthePenguins.Description = [[You found all the Penguins!]]
PenguinCount = "0"
ZooChat = "38"
ztaskHelpRoundUpthePenguins.Description = [[You found all the penguins!]]
ztaskVisitthePenguinPool.Complete = false
zonePenguinPool.Visible = true
zonePenguinPool.Active = true
Wherigo.Dialog{{Text=[[New Inventory Item:
	- Jared the Penguin]],Media=zmediaJaredthePenguin_MSG},{Text=[["Great! Now that we've collected all the missing penguins, it's time to head back to the Penguin Pool."]],Media=zmediaZookeeper_MSG},{Text=[[New Task: Visit the Penguin Pool
		
Check the 'Locations' tab to navigate.]],Media=zmediaZonePenguinPool},}
PenguinVariable = PenguinVariable + 1
end

function zitemJaredthePenguin:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[This penguin has a mohawk.]],Media=zmediaJaredthePenguin_MSG,}
end

function zinputRainForest:OnGetInput(input)
RainForestAnswer = input
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   Wherigo.NoCaseEquals(RainForestAnswer,"sunbittern") then
ZooChat = "36"
ColobusChat = "2"
zitemShampoo:MoveTo(Player)
zitemShampoo.Commands["UseWith"].Enabled = true
Wherigo.Dialog{{Text=[["Nice job! Jared the Penguin saw you and ran off towards Gorilla's habitat. At least he won't bother me anymore.

"Here is the shampoo. Good luck with Gorilla's hair!"]],Media=zmediaColobus_MSG},{Text=[[New Inventory Item:
	- Shampoo]],Media=zmediaShampoo_MSG},}
else
Wherigo.MessageBox{Text=[["Hmmm, I think there might be a bird with a skinnier neck. Come back and 'Talk' to me when you think you've got it."]],Media=zmediaColobus_MSG,}
end
end

function zoneAfricanVillage:OnEnter()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if    not zoneAfricanVillage:Contains(zcharacterZebra) then
zcharacterZookeeper:MoveTo(zoneAfricanVillage)
ZooChat = "23a"
Wherigo.Dialog{{Text=[["The penguin may be hiding behind one of the animals. I have my suspicions but I'll need you to confirm them."]],Media=zmediaZookeeper_MSG},{Text=[["In the Primary School, you can learn about an animal whose markings are like a human fingerprint. Which animal is it?

"Come 'Talk' to me when you think you've figured it out."]],Media=zmediaZookeeper_MSG},}
end
end

function zoneAfricanVillage:OnExit()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
if   zcharacterHippopotamus:Contains(zitemDrainPlug) then
zoneAfricanVillage.Visible = false
zoneAfricanVillage.Active = false
end
end

function zitemCake:OnExamine()
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.MessageBox{Text=[[It looks delicious.]],Media=zmediaCake_MSG,}
end
------End Builder Generated functions, Do not Edit, this will be overwritten------
-------------------------------------------------------------------------------
------Builder Generated callbacks, Do not Edit, this will be overwritten------
-------------------------------------------------------------------------------
--#LASTCALLBACKKEY=6#--
cartZooventurePenguinEscape.MsgBoxCBFuncs.MsgBoxCB2 = function(action)
if action ~= nil then
-- #GroupDescription=Script Description --
-- #Comment=Script Comment --
Wherigo.GetInput(zinputKookaburra)
end
end

cartZooventurePenguinEscape.MsgBoxCBFuncs.MsgBoxCB6 = function(action)
if action ~= nil then
-- #GroupDescription=Script Description --
-- #Comment=Script Comment --
Wherigo.GetInput(zinputRainForest)
end
end

cartZooventurePenguinEscape.MsgBoxCBFuncs.MsgBoxCB5 = function(action)
if action ~= nil then
-- #GroupDescription=Script Description --
-- #Comment=Script Comment --
Wherigo.GetInput(zinputTemperateForest)
end
end

cartZooventurePenguinEscape.MsgBoxCBFuncs.MsgBoxCB4 = function(action)
if action ~= nil then
-- #GroupDescription=Script --
-- #Comment=Script Comment --
Wherigo.GetInput(zinputAfricanSavanna)
end
end

cartZooventurePenguinEscape.MsgBoxCBFuncs.MsgBoxCB1 = function(action)
if action ~= nil then
-- #GroupDescription=Script Description --
-- #Comment=Script Comment --
Wherigo.GetInput(zinputNorthernTrail)
end
end

cartZooventurePenguinEscape.MsgBoxCBFuncs.MsgBoxCB3 = function(action)
if action ~= nil then
-- #GroupDescription=Script Description --
-- #Comment=Script Comment --
Wherigo.GetInput(zinputTropicalAsia)
end
end

------End Builder Generated callbacks, Do not Edit, this will be overwritten------
-- #Author Functions Go Here# --
-- #End Author Functions# --
-- Nothing after this line --
return cartZooventurePenguinEscape
