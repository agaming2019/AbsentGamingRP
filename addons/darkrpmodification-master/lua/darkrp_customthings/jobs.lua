--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------
This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.
Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
      Once you've done that, copy and paste the job to this file and edit it.
The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua
For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields
Add your custom jobs under the following line:
---------------------------------------------------------------------------]]	
-- CITZ -- CITZ -- CITZ -- CITZ -- CITZ -- CITZ -- CITZ -- CITZ -- CITZ -- CITZ -- CITZ --

TEAM_CIT = DarkRP.createJob("Citizen", {
    color = Color(20, 150, 20, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl"
    },
    description = [[The Citizen is the most basic level of society you can hold besides being a hobo. You have no specific role in city life.]],
    weapons = {},
    command = "citizen",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
	sortOrder = 1
})

TEAM_MEDIC = DarkRP.createJob("Medic", {
    color = Color(0, 222, 192, 255),
    model = {"models/player/kleiner.mdl"},
    description = [[Healing people is your only purpose in life!]],
    weapons = {"med_kit", "itemstore_pickup"},
    command = "medic",
    max = 2,
    salary = 60,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
	sortOrder = 2
})

TEAM_BANKER = DarkRP.createJob("Banker", {
    color = Color(0, 255, 133, 255),
    model = {"models/player/magnusson.mdl"},
    description = [[Nothing like the temtation of holding other peoples printers and not being able to take the money!]],
    weapons = {"itemstore_pickup"},
    command = "banker",
    max = 1,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
	sortOrder = 3
})

TEAM_CASINO = DarkRP.createJob("Casino Manager", {
    color = Color(0, 255, 146, 255),
    model = {"models/player/gman_high.mdl"},
    description = [[You own the Casino do what ever you want!]],
    weapons = {"itemstore_pickup"},
    command = "casino",
    max = 1,
    salary = 65,
    admin = 0,
    vote = true,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
	sortOrder = 8
})

TEAM_HOBO = DarkRP.createJob("Hobo", {
    color = Color(122, 73, 0, 255),
    model = {"models/player/corpse1.mdl"},
    description = [[As a hobo you can build on the side of the streets a terror the town with your annoyance ]],
    weapons = {"itemstore_pickup", "weapon_bugbait"},
    command = "hobo",
    max = 4,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
	sortOrder = 9
})

TEAM_HOBOK = DarkRP.createJob("Hobo King", {
    color = Color(122, 73, 0, 255),
    model = {"models/player/zombie_soldier.mdl"},
    description = [[As a hobo you can build on the side of the streets a terror the town with your annoyance ]],
    weapons = {"itemstore_pickup", "weapon_bugbait"},
    command = "hoboking",
    max = 1,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
	NeedToChangeFrom = TEAM_HOBO,
	sortOrder = 10
})

TEAM_GUN = DarkRP.createJob("Gun Dealer", {
    color = Color(255, 215, 0, 255),
    model = {"models/player/monk.mdl"},
    description = [[Selling guns for killing purposes, Great!]],
    weapons = {"itemstore_pickup"},
    command = "gundealer",
    max = 4,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Citizens",
	sortOrder = 13
})

TEAM_HAD = DarkRP.createJob("Heavy Arms Dealer", {
    color = Color(255, 138, 0, 255),
    model = {"models/player/eli.mdl"},
    description = [[Selling bigger guns for even bigger killing purposes, Fantastic!
	Weapon
	- UMP45]],
    weapons = {"itemstore_pickup", "m9k_ump45"},
    command = "had",
    max = 4,
    salary = 85,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Citizens",
    customCheck = function(ply) return CLIENT or
        table.HasValue({"senioradmin", "yeetsupreme", "ystmod", "ysmoderator", "ysadmin", "veteran", "superveteran", "vip", "yeetlord", "vtmod", "vmoderator", "vadmin", "ytmod", "ymoderator", "yadmin", "manager", "developer"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "VIP Only!",
	sortOrder = 14
})

TEAM_SECURITY = DarkRP.createJob("Security Guard", {
    color = Color(34, 85, 85, 255),
    model = {"models/player/odessa.mdl"},
    description = [[As a Security Guard you make sure that the shop you are guarding is safe and all is going the way the way the Gun Dealer.
	Weapon
	- HK46]],
    weapons = {"itemstore_pickup", "stunstick", "m9k_hk45"},
    command = "security",
    max = 4,
    salary = 65,
    admin = 0,
    vote = true,
    hasLicense = true,
    candemote = true,
    category = "Citizens",
	sortOrder = 15
})

-- CRIMINALS -- CRIMINALS -- CRIMINALS -- CRIMINALS -- CRIMINALS -- CRIMINALS -- CRIMINALS -- CRIMINALS -- CRIMINALS -- CRIMINALS -- CRIMINALS -- CRIMINALS --

TEAM_THIEF = DarkRP.createJob("Thief", {
	color = Color(156, 156, 156, 255),
	model = {"models/player/arctic.mdl"},
	description = [[Sneaky Boye.]],
	weapons = {"itemstore_pickup", "lockpick", "keypad_cracker"},
	command = "thief",
	max = 4,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Criminals",
	sortOrder = 1
})
	
TEAM_KIDNAPPER = DarkRP.createJob("Kidnapper", {
    color = Color(255, 138, 0, 255),
    model = {"models/player/phoenix.mdl"},
    description = [[Kidnap people and charge ridicules prices to eventually kill them because no one really cares about them, am I right?]],
    weapons = {"weapon_cuff_rope", "itemstore_pickup"},
    command = "Kidnapper",
    max = 4,
    salary = 40,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Criminals",
	sortOrder = 2
})
	
TEAM_HITMAN = DarkRP.createJob("Hitman", {
    color = Color(255, 0, 0, 255),
    model = {"models/player/leet.mdl"},
    description = [[Be hired to kill, What more could you ask for?]],
    weapons = {"m9k_ragingbull", "itemstore_pickup", "keypad_cracker", "lockpick"},
    command = "hitman",
    max = 4,
    salary = 65,
    admin = 0,
    vote = true,
    hasLicense = true,
    candemote = false,
    category = "Criminals",
	sortOrder = 3,
})

TEAM_PROTHIEF = DarkRP.createJob("Pro Thief", {
    color = Color(171, 171, 171, 255),
    model = {"models/player/lordvipes/rerc_vector/vector_cvp.mdl"},
    description = [[Advance Thief that is able to raid with pure skills!
	Weapon
	- AS VAL]],
    weapons = {"itemstore_pickup", "m9k_val", "prokeypadcracker", "pro_lockpick"},
    command = "prothief",
    max = 4,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Criminals",
    customCheck = function(ply) return CLIENT or
        table.HasValue({"senioradmin", "yeetsupreme", "ystmod", "ysmoderator", "ysadmin", "donator", "vip", "yeetlord","dtmod","dmoderator", "dadmin", "vtmod", "vmoderator", "vadmin", "ytmod", "ymoderator", "yadmin", "manager", "developer"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Donator Only!",
	sortOrder = 22,
})

TEAM_PROHITMAN = DarkRP.createJob("Assassin", {
	color = Color(255, 0, 0, 255),
	model = {"models/player/agent_47.mdl"},
	description = [[ Take down enimies with extremely powerful weapons 
	Weapon
	- M24]],
	weapons = {"itemstore_pickup", "m9k_m24", "climb_swep2","pro_lockpick" ,"prokeypadcracker"},
	command = "prohitman",
	max = 4,
	salary = 100,
	admin = 0,
	vote = true,
	hasLicense = true,
	candemote = false,
	category = "Criminals",
    customCheck = function(ply) return CLIENT or
        table.HasValue({"senioradmin", "yeetsupreme", "ystmod", "ysmoderator", "ysadmin", "donator", "vip", "yeetlord","dtmod","dmoderator", "dadmin", "vtmod", "vmoderator", "vadmin", "ytmod", "ymoderator", "yadmin", "manager"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Donator Only!",
	sortOrder = 23,
	
})

TEAM_PROTHIEF = DarkRP.createJob("Pro Kidnapper", {
    color = Color(255, 138, 0, 255),
    model = {"models/player/group01/cookies114.mdl"},
    description = [[Advance Hitman that is able to capture players with your new and upgraded tools!
	Weapon
	- Colt 1911]],
    weapons = {"itemstore_pickup", "weapon_cuff_rope", "m9k_colt1911"},
    command = "prokidnapper",
    max = 4,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Criminals",
    customCheck = function(ply) return CLIENT or
        table.HasValue({"senioradmin", "yeetsupreme", "ystmod", "ysmoderator", "ysadmin", "donator", "vip", "yeetlord","dtmod","dmoderator", "dadmin", "vtmod", "vmoderator", "vadmin", "ytmod", "ymoderator", "yadmin", "manager"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Donator Only!",
	sortOrder = 24,
})

TEAM_BMEDIC = DarkRP.createJob("Combat Medic", {
    color = Color(255, 138, 0, 255),
    model = {"models/overwatch/player/mercy/combatmedic/mercy_cmz_p.mdl"},
    description = [[As a Combat Medic you are able to raid and keep your teams health up!
	Weapon
	- Colt 1911]],
    weapons = {"itemstore_pickup", "medic_gun_25hp", "m9k_colt1911", "pro_lockpick", "med_kit"},
    command = "bmedic",
    max = 4,
    salary = 85,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Criminals",
    customCheck = function(ply) return CLIENT or
        table.HasValue({"senioradmin", "yeetsupreme", "ystmod", "ysmoderator", "ysadmin", "veteran", "superveteran", "donator", "vip", "yeetlord","dtmod","dmoderator", "dadmin", "vtmod", "vmoderator", "vadmin", "ytmod", "ymoderator", "yadmin", "manager"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Donator Only!",
	sortOrder = 25,
})

TEAM_MERC = DarkRP.createJob("Mercenary", {
    color = Color(255, 90, 90, 255),
    model = {"models/blacklist/spy1.mdl"},
    description = [[As a Mercenary you are able to perform roles such as being a personal Security Guard for anyone or participate in raids
	Weapons
	- AS VAL
	- M98B]],
    weapons = {"itemstore_pickup", "m9k_val", "m9k_m98b", "pro_lockpick"},
    command = "merc",
    max = 2,
    salary = 85,
    admin = 0,
    vote = true,
    hasLicense = true,
    candemote = true,
    category = "Criminals",
	sortOrder = 30,
	customCheck = function(ply) return CLIENT or
	table.HasValue({"senioradmin", "yeetsupreme", "ystmod", "ysmoderator", "ysadmin", "vip", "yeetlord", "vtmod", "vmoderator", "vadmin", "ytmod", "ymoderator", "yadmin", "manager"}, ply:GetNWString("usergroup"))
	end,
	CustomCheckFailMsg = "VIP job only!",
})

TEAM_NINJA = DarkRP.createJob("Ninja", {
    color = Color(84, 84, 84, 255),
    model = {"models/player/tfa_acs_eviefrye.mdl"},
    description = [[As a ninja you slay your enemies without being seen
	Weapons
	- Ninja Kunai Swep
	- Silenced USP]],
    weapons = {"itemstore_pickup", "weapon_ninjaskunai", "weapon_silenced_usp", "keypad_cracker", "lockpick"},
    command = "ninja",
    max = 2,
    salary = 65,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Criminals",
	customCheck = function(ply) return CLIENT or
		table.HasValue({"senioradmin", "yeetsupreme", "ystmod", "ysmoderator", "ysadmin", "yeetlord","ytmod", "ymoderator", "yadmin", "manager"}, ply:GetNWString("usergroup"))
	end,
	CustomCheckFailMsg = "Yeet Lord job only!",
	sortOrder = 41
})

TEAM_STHIEF = DarkRP.createJob("Sneaky Thief", {
    color = Color(99, 99, 99, 255),
    model = {
        "models/player/01AR_combine_soldier01.mdl",
        "models/player/01AR_combine_soldier02.mdl"
    },
    description = [[Team up with the Stealth Ranger to take down targets silently from close range and far to get in nice and easy.]],
    weapons = {"climb_swep2", "m9k_honeybadger", "prokeypadcracker", "pro_lockpick", "itemstore_pickup"},
    command = "sthief",
    max = 4,
    salary = 75,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Criminals",
	customCheck = function(ply) return CLIENT or
		table.HasValue({"senioradmin", "yeetsupreme", "ystmod", "ysmoderator", "ysadmin", "manager"}, ply:GetNWString("usergroup"))
	end,
	CustomCheckFailMsg = "Yeet Supreme job only!",
	sortOrder = 42
})

TEAM_SRANGER = DarkRP.createJob("Stealth Ranger", {
    color = Color(99, 99, 99, 255),
    model = {
		"models/player/AR_combine_soldier03B.mdl",
		"models/player/combine_soldier04.mdl"
    },
    description = [[Team up with the Sneaky Thief to take down targets silently from a distance to keep him safe from the outside!]],
    weapons = {"climb_swep2", "itemstore_pickup", "prokeypadcracker", "pro_lockpick", "weapon_silenced_usp", "m9k_svu", },
    command = "sranger",
    max = 2,
    salary = 85,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Criminals",
    NeedToChangeFrom = TEAM_STHIEF,
	customCheck = function(ply) return CLIENT or
		table.HasValue({"senioradmin", "yeetsupreme", "ystmod", "ysmoderator", "ysadmin", "manager"}, ply:GetNWString("usergroup"))
	end,
	CustomCheckFailMsg = "Yeet Supreme job only!",
	sortOrder = 43
})

TEAM_METHCOOKK = DarkRP.createJob("Meth Cook", {
	color = Color(0, 128, 255, 255),
	model = {"models/bloocobalt/splinter cell/chemsuit_cod.mdl"},
	description = [[You are a Master manufacture of Methamphetamin]],
	weapons = {"itemstore_pickup"},
	command = "methcook",
	max = 4,
	salary = 0,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Drug Dealers"
})

-- Government -- Government -- Government -- Government -- Government -- Government -- Government -- Government -- Government -- Government -- Government -- Government --

TEAM_MAYOR = DarkRP.createJob("Mayor", {
    color = Color(0, 132, 255, 255),
    model = {"models/player/breen.mdl"},
    description = [[As the major you oversee all the police operations!]],
    weapons = {"itemstore_pickup"},
    command = "mayor",
    max = 1,
    salary = 500,
    admin = 0,
    vote = true,
    hasLicense = true,
    candemote = true,
    category = "Government",
    mayor = true,
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "The major died and is therefor is demoted")
	end,
	sortOrder = 1
	
})

TEAM_SS = DarkRP.createJob("Secret Service", {
    color = Color(0, 63, 189, 255),
    model = {"models/player/barney.mdl"},
    description = [[If the Major dies and you don't, Then your not doing your job right!
	Weapon
	- HK45]],
    weapons = {"m9k_hk45", "stungun", "stunstick", "unarrest_stick", "arrest_stick", "weaponchecker", "weapon_cuff_police", "itemstore_pickup"},
    command = "ss",
    max = 2,
    salary = 350,
    admin = 0,
    vote = true,
    hasLicense = true,
    candemote = false,
    category = "Government",
	sortOrder = 2
})

TEAM_POLICE = DarkRP.createJob("Police Officer", {
    color = Color(0, 6, 255, 255),
    model = {
        "models/taggart/police01/male_01.mdl",
        "models/taggart/police01/male_02.mdl",
        "models/taggart/police01/male_03.mdl",
        "models/taggart/police01/male_04.mdl",
        "models/taggart/police01/male_05.mdl",
        "models/taggart/police01/male_06.mdl",
        "models/taggart/police01/male_07.mdl",
        "models/taggart/police01/male_09.mdl"
    },
    description = [[Enforcing the laws and slapping people with stun sticks 
	Weapons
	- HK45
	]],
    weapons = {"m9k_hk45", "stungun", "stunstick", "unarrest_stick", "arrest_stick", "door_ram", "weaponchecker", "sent_sniffer", "weapon_cuff_police", "itemstore_pickup"},
    command = "police",
    max = 6,
    salary = 250,
    admin = 0,
    vote = true,
    hasLicense = true,
    candemote = true,
    category = "Government",
	sortOrder = 3
})

TEAM_CHIEF = DarkRP.createJob("Police Chief", {
    color = Color(0, 6, 255, 255),
    model = {"models/taggart/police01/male_08.mdl"},
    description = [[Enforcing the laws and slapping people with stun sticks 
	Weapon 
	- HK45]],
    weapons = {"m9k_hk45", "stungun", "stunstick", "unarrest_stick", "arrest_stick", "door_ram", "weaponchecker", "sent_sniffer", "weapon_cuff_police", "itemstore_pickup"},
    command = "chief",
	max = 1,
    salary = 300,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = true,
    category = "Government",
    NeedToChangeFrom = TEAM_POLICE,
	sortOrder = 4
})

TEAM_DETECTIVE = DarkRP.createJob("Detective", {
    color = Color(8, 226, 255, 255),
    model = {"models/player/mossman_arctic.mdl"},
    description = [[Impersonate as a criminals to get the information you need to BUST THEM!]],
    weapons = {"stungun", "itemstore_pickup", "weapon_sh_detector", "stunstick", "unarrest_stick", "arrest_stick", "weaponchecker", "door_ram", "weapon_cuff_police", "m9k_ump45"},
    command = "detective",
    max = 2,
    salary = 450,
    admin = 0,
    vote = true,
    hasLicense = true,
    candemote = true,
    category = "Government",
	sortOrder = 6,
	customCheck = function(ply) return CLIENT or
		table.HasValue({"senioradmin", "yeetsupreme", "ystmod", "ysmoderator", "ysadmin", "manager"}, ply:GetNWString("usergroup"))
	end,
	CustomCheckFailMsg = "Yeet Supreme job only!",
})

-- GANGS -- GANGS -- GANGS -- GANGS -- GANGS -- GANGS -- GANGS -- GANGS -- GANGS -- GANGS -- GANGS -- GANGS -- GANGS -- GANGS -- GANGS -- GANGS -- GANGS --

TEAM_REBEL = DarkRP.createJob("Rebel", {
    color = Color(184, 184, 184, 255),
    model = {
        "models/player/Group03/female_01.mdl",
        "models/player/Group03/female_02.mdl",
        "models/player/Group03/male_01.mdl",
        "models/player/Group03/male_02.mdl"
    },
    description = [[Follow the Rebel leader and his decisions to FIGHT against the police!]],
    weapons = {"itemstore_pickup", "keypad_cracker", "lockpick"},
    command = "rebel",
    max = 6,
    salary = 40,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Gangs",
	sortOrder = 1
})

TEAM_REBELL = DarkRP.createJob("Rebel Leader", {
    color = Color(138, 138, 138, 255),
    model = {"models/player/guerilla.mdl"},
    description = [[Follow the Rebel leader and his decisions to FIGHT against the police!]],
    weapons = {"itemstore_pickup", "keypad_cracker", "lockpick"},
    command = "rebelleader",
    max = 1,
    salary = 65,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Gangs",
    NeedToChangeFrom = TEAM_REBEL,
	sortOrder = 2
})

TEAM_NZ = DarkRP.createJob("NZ Mafia", {
    color = Color(0, 60, 255, 255),
    model = {
        "models/player/tuxmale_02player.mdl",
        "models/player/tuxmale_03player.mdl",
        "models/player/tuxmale_04player.mdl",
        "models/player/tuxmale_05player.mdl"
    },
    description = [[Fighting against your arch nemesis Australia Mafia]],
    weapons = {"itemstore_pickup", "keypad_cracker", "lockpick"},
    command = "nz",
    max = 6,
    salary = 40,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Gangs"
})

TEAM_NZL = DarkRP.createJob("NZ Mafia Leader", {
    color = Color(0, 60, 255, 255),
    model = {"models/player/tuxmale_01player.mdl"},
    description = [[Fighting against your arch nemesis Australia Mafia]],
    weapons = {"itemstore_pickup", "keypad_cracker", "lockpick"},
    command = "nzl",
    max = 1,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Gangs",
    NeedToChangeFrom = TEAM_NZ
})

TEAM_AUS = DarkRP.createJob("Aus Mafia", {
    color = Color(214, 205, 0, 255),
    model = {
        "models/humans/mafia/male_02.mdl",
        "models/humans/mafia/male_04.mdl",
        "models/humans/mafia/male_06.mdl",
        "models/humans/mafia/male_07.mdl"
    },
    description = [[Fighting against your arch nemesis New Zealand Mafia]],
    weapons = {"itemstore_pickup", "keypad_cracker", "lockpick"},
    command = "aus",
    max = 6,
    salary = 40,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Gangs"
})

TEAM_AUSL = DarkRP.createJob("Aus Mafia Leader", {
    color = Color(214, 205, 0, 255),
    model = {"models/humans/mafia/male_08.mdl"},
    description = [[Fighting against your arch nemesis New Zealand Mafia]],
    weapons = {"itemstore_pickup", "keypad_cracker", "lockpick"},
    command = "ausl",
    max = 1,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Gangs",
    NeedToChangeFrom = TEAM_AUS
})

-- SWAT -- SWAT -- SWAT -- SWAT -- SWAT -- SWAT -- SWAT -- SWAT -- SWAT -- SWAT -- SWAT -- SWAT -- SWAT -- SWAT -- SWAT -- SWAT -- SWAT -- SWAT -- SWAT -- SWAT -- SWAT --

TEAM_SWATO = DarkRP.createJob("SWAT Officer", {
    color = Color(0, 166, 36, 255),
    model = {"models/payday2/units/zeal_swat_player.mdl"},
    description = [[You the PD's last hope so do a good job or there screwed
	Weapon
	- Honeybadger]],
    weapons = {"stungun", "stunstick", "unarrest_stick", "arrest_stick", "weaponchecker", "m9k_honeybadger","door_ram", "weapon_cuff_police", "itemstore_pickup"},
    command = "swatofficer",
    max = 4,
    salary = 500,
    admin = 0,
    vote = true,
    hasLicense = true,
    candemote = true,
    category = "SWAT",
	customCheck = function(ply) return CLIENT or
		table.HasValue({"senioradmin", "yeetsupreme", "ystmod", "ysmoderator", "ysadmin", "superveteran", "donator", "vip", "yeetlord","dtmod","dmoderator", "dadmin", "vtmod", "vmoderator", "vadmin", "ytmod", "ymoderator", "yadmin", "manager"}, ply:GetNWString("usergroup"))
	end,
	CustomCheckFailMsg = "VIP job only!",
	sortOrder = 1
})

TEAM_SWATC = DarkRP.createJob("SWAT Chief", {
    color = Color(0, 140, 30, 255),
    model = {"models/payday2/units/zeal_heavy_swat_player.mdl"},
    description = [[You the PD's last hope so do a good job or there screwed
	Weapon
	- Honeybadger]],
    weapons = {"stungun", "stunstick", "unarrest_stick", "arrest_stick", "weaponchecker", "m9k_honeybadger", "m9k_deagle","door_ram", "weapon_cuff_police", "itemstore_pickup"},
    command = "swatchief",
    max = 1,
    salary = 550,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = true,
    category = "SWAT",
    NeedToChangeFrom = TEAM_SWATO,TEAM_SWATH,TEAM_SWATM,TEAM_SWATS,
	customCheck = function(ply) return CLIENT or
		table.HasValue({"senioradmin", "yeetsupreme", "ystmod", "ysmoderator", "ysadmin", "vip", "yeetlord", "vtmod", "vmoderator", "vadmin", "ytmod", "ymoderator", "yadmin", "manager"}, ply:GetNWString("usergroup"))
	end,
	CustomCheckFailMsg = "Donator job only!",
	sortOrder = 3
})

TEAM_SWATM = DarkRP.createJob("SWAT Medic", {
    color = Color(0, 232, 63, 255),
    model = {"models/payday2/units/medic_player.mdl"},
    description = [[You the PD's last hope so do a good job or there screwed, also make sure to heal!
	Weapons
	- MP9
	- Medkit]],
    weapons = {"stungun", "stunstick", "unarrest_stick", "arrest_stick", "weaponchecker", "m9k_mp9", "weapon_medkit","door_ram", "weapon_cuff_police", "itemstore_pickup"},
    command = "swatmedic",
    max = 1,
    salary = 450,
    admin = 0,
    vote = true,
    hasLicense = true,
    candemote = true,
    category = "SWAT",
	customCheck = function(ply) return CLIENT or
		table.HasValue({"senioradmin", "yeetsupreme", "ystmod", "ysmoderator", "ysadmin", "donator", "vip", "yeetlord","dtmod","dmoderator", "dadmin", "vtmod", "vmoderator", "vadmin", "ytmod", "ymoderator", "yadmin", "manager"}, ply:GetNWString("usergroup"))
	end,
	CustomCheckFailMsg = "Donator job only!",
	sortOrder = 2
})

TEAM_SWATS = DarkRP.createJob("SWAT Sniper", {
    color = Color(0, 145, 48, 255),
    model = {"models/mark2580/payday2/pd2_swat_shield_zeal_player.mdl"},
    description = [[Enforce the laws and Snipe people with bad aim
	Weapon
	- AW50]],
    weapons = {"stungun", "stunstick", "unarrest_stick", "arrest_stick", "weaponchecker", "m9k_aw50", "m9k_sig_p229r","door_ram", "weapon_cuff_police", "itemstore_pickup"},
    command = "SWAT",
    max = 1,
    salary = 500,
    admin = 0,
    vote = true,
    hasLicense = true,
    candemote = true,
    category = "SWAT",
	customCheck = function(ply) return CLIENT or
		table.HasValue({"senioradmin", "yeetsupreme", "ystmod", "ysmoderator", "ysadmin", "yeetlord","ytmod", "ymoderator", "yadmin", "manager"}, ply:GetNWString("usergroup"))
	end,
	CustomCheckFailMsg = "Yeet Lord job only!",
	sortOrder = 4
})

TEAM_SWATH = DarkRP.createJob("SWAT Brute", {
    color = Color(0, 133, 42, 255),
    model = {"models/mark2580/payday2/pd2_swat_heavy_zeal_player.mdl"},
    description = [[Enforce the laws and run around with a heavy and overheated suit
	Weapons
	- M3
	- PKM]],
    weapons = {"stungun", "stunstick", "unarrest_stick", "arrest_stick", "weaponchecker","m9k_m3", "m9k_pkm","door_ram", "weapon_cuff_police", "itemstore_pickup"},
    command = "swatbrute",
    max = 1,
    salary = 600,
    admin = 0,
    vote = true,
    hasLicense = true,
    candemote = true,
    category = "SWAT",
	customCheck = function(ply) return CLIENT or
		table.HasValue({"senioradmin", "yeetsupreme", "ystmod", "ysmoderator", "ysadmin", "yeetlord","ytmod", "ymoderator", "yadmin", "manager"}, ply:GetNWString("usergroup"))
	end,
	CustomCheckFailMsg = "Yeet Lord job only!",
	sortOrder = 5
})

TEAM_NIGHT = DarkRP.createJob("Project Delta (CP)", { -- police
    color = Color(212, 0, 0, 255),
    model = {"models/iffy/outlast/swat/swat_pm.mdl"},
    description = [[NIGHTWOLF IS BAE]],
    weapons = {"itemstore_pickup", "arrest_stick", "stunstick", "unarrest_stick", "weaponchecker", "door_ram", "stungun", "m9k_dragunov", "m9k_honeybadger", "weapon_camo", "predator_bow","weapon_cuff_police"},
    command = "night",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "SWAT",
	PlayerSpawn = function(ply) 
	ply:SetBodygroup(1,2)
	ply:SetSkin(0)
	end,
    customCheck = function(ply) return
        table.HasValue({"STEAM_0:0:167593380"}, ply:SteamID())
    end,
    CustomCheckFailMsg = "NIGHT ONLY",
})

TEAM_IRONMAN = DarkRP.createJob("Iron Man", {
    color = Color(255, 0, 0, 255),
    model = {"models/dusty/avengers/civilwar/characters/ironman/ironman_playermodel.mdl"},
    description = [[Rust Bucket]],
    weapons = {"m9k_m16a4_acog"},
    command = "ironman",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "SWAT",
    customCheck = function(ply) return
        table.HasValue({"STEAM_0:0:64780475"}, ply:SteamID())
    end,
    CustomCheckFailMsg = "no",
})

TEAM_PIZZA = DarkRP.createJob("Pizza Man", {
    color = Color(255, 255, 0, 255),
    model = {"models/deityl/deityl.mdl"},
    description = [[PIZZA TIME]],
    weapons = {"stungun", "stunstick", "unarrest_stick", "arrest_stick", "weaponchecker", "weapon_cuff_police", "weapon_cuff_police", "door_ram", "m9k_dbarrel", "m9k_barret_m82", "weapon_camo", "spidermans_swepalt2"},
    command = "pizza",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "SWAT",
    customCheck = function(ply) return
        table.HasValue({"STEAM_0:1:199185908"}, ply:SteamID())
    end,
    CustomCheckFailMsg = "NO",
})

-- Heros --

TEAM_SPIDERMAN = DarkRP.createJob("Spiderman", {
    color = Color(255, 0, 0, 255),
    model = {"models/MUA2/Spiderman.mdl"},
    description = [[Sling your way around to city and protect the citizens from the Evil Villain VEMON!]],
    weapons = {"spidermans_swepalt2", "m9k_fists"},
    command = "spider",
    max = 1,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Heros",
	customCheck = function(ply) return CLIENT or
		table.HasValue({"senioradmin", "yeetsupreme", "ystmod", "ysmoderator", "ysadmin", "vip", "yeetlord", "vtmod", "vmoderator", "vadmin", "ytmod", "ymoderator", "yadmin", "manager"}, ply:GetNWString("usergroup"))
	end,
	CustomCheckFailMsg = "VIP job only!",
})

TEAM_JEDI = DarkRP.createJob("Obi-Wan", {
    color = Color(0, 255, 0, 255),
    model = {"models/player/obiwan/obiwan_est.mdl"},
    description = [[Take down the murderer who killed your Master]],
    weapons = {"weapon_lightsaber"},
    command = "obiwan",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Heros",
	customCheck = function(ply) return CLIENT or
		table.HasValue({"senioradmin", "yeetsupreme", "ystmod", "ysmoderator", "ysadmin", "manager"}, ply:GetNWString("usergroup"))
	end,
	CustomCheckFailMsg = "Yeet Supreme job only!",
})

-- Villains --

TEAM_VENOM = DarkRP.createJob("Venom", {
    color = Color(0, 0, 0, 255),
    model = {"models/player/valley/venom.mdl"},
    description = [[Sling your way around to city and terrorize citizens, make sure to take down your arch nemesis Spiderman!]],
    weapons = {"m9k_fists", "spidermans_swepalt2"},
    command = "venom",
    max = 1,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Villains",
		customCheck = function(ply) return CLIENT or
		table.HasValue({"senioradmin", "yeetsupreme", "ystmod", "ysmoderator", "ysadmin", "manager"}, ply:GetNWString("usergroup"))
	end,
	CustomCheckFailMsg = "Yeet Lord job only!",
})

TEAM_SITH = DarkRP.createJob("Darth Maul", {
    color = Color(255, 0, 0, 255),
    model = {"models/jazzmcfly/jka/darth_maul/jka_maul.mdl"},
    description = [[Finish the job and take down Obi-Wan!]],
    weapons = {"weapon_lightsaber"},
    command = "darthmaul",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Villains",
	customCheck = function(ply) return CLIENT or
		table.HasValue({"senioradmin", "yeetsupreme", "ystmod", "ysmoderator", "ysadmin", "manager"}, ply:GetNWString("usergroup"))
	end,
	CustomCheckFailMsg = "Yeet Supreme job only!",
})

-- staff -- staff -- staff -- staff -- staff -- staff -- staff -- staff -- staff -- staff -- staff -- staff -- staff -- staff -- staff -- staff -- staff -- staff -- staff -- staff --

TEAM_SOD = DarkRP.createJob("Rooftop Guardian", {
    color = Color(218, 0, 222, 255),
    model = 
	{
	"models/frosty/sparbine_players/sparbine_cop_pm.mdl",
	"models/frosty/sparbine_players/sparbine_elite_pm.mdl", 
	"models/frosty/sparbine_players/sparbine_prisonguard_pm.mdl", 
	"models/frosty/sparbine_players/sparbine_soldier_pm.mdl" 
	},
    description = [[MAINTANE THE FAKIN SERVER]],
    weapons = {"staff_lockpick", "weapon_keypadchecker", "itemstore_pickup"},
    command = "SOD",
    max = 0,
    salary = 20,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Staff",
    customCheck = function(ply) return CLIENT or
        table.HasValue({"ystmod", "ysmoderator", "ysadmin", "senioradmin", "headadmin", "developer", "manager", "admin", "moderator", "tmod", "dadmin", "dmoderator", "dtmod", "vadmin", "vmoderator", "vtmod", "yadmin", "ymoderator", "ytmod"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "Staff only, NO!"
})

TEAM_SURVIVOR = DarkRP.createJob("Survivor", {
    color = Color(35, 255, 0, 255),
    model = {"models/player/p2_chell.mdl"},
    description = [[RUN]],
    weapons = {"stungun"},
    command = "survivor",
    max = 20,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Staff",
    customCheck = function(ply) return
        table.HasValue({"manager"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "event only",
})

TEAM_MOSTER = DarkRP.createJob("Monster", {
    color = Color(255, 0, 0, 255),
    model = {"models/player/zombie_fast.mdl"},
    description = [[KILL HUMANS]],
    weapons = {"csgo_cssource"},
    command = "monster",
    max = 1,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Staff",
    customCheck = function(ply) return
        table.HasValue({"manager"}, ply:GetNWString("usergroup"))
    end,
    CustomCheckFailMsg = "event only",
})

-- custom classes -- custom classes -- custom classes -- custom classes -- custom classes -- custom classes -- custom classes -- custom classes -- custom classes -- custom classes --

TEAM_HMINER = DarkRP.createJob("Anime Creeper", { -- citz
    color = Color(4, 255, 0, 255),
    model = {"models/player/creepergirl/sour_creepergirl_player.mdl"},
    description = [[YOU FUCK WITH MY DIAMONDS I BLOW YOU UP BITCH]],
    weapons = {"Pickaxe", "itemstore_pickup"},
    command = "hminer",
    max = 1,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Custom Jobs",
    customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:1:62515216"}, ply:SteamID())
    end,
    CustomCheckFailMsg = "NO!",
})

TEAM_PICKLE = DarkRP.createJob("Thicc Anime Girl", { -- thief
    color = Color(0, 117, 255, 255),
    model = {"models/custom/ochaco_uraraka.mdl"},
    description = [[Thiccccest of the Thieccccest]],
    weapons = {"m9k_m60", "m9k_spas12", "weapon_ninjaskunai", "awp_asiimov", "m9k_dbarrel", "m9k_svu", "prokeypadcracker", "pro_lockpick", "itemstore_pickup"},
    command = "pickle",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Custom Jobs",
    customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:157321570"}, ply:SteamID())
    end,
    CustomCheckFailMsg = "ONE THICC NO!",
})

TEAM_AJK = DarkRP.createJob("Yeetus Deletus", { -- thief
    color = Color(255, 255, 255, 255),
    model = {"models/bubstock9/player/stickfigure_playermodel.mdl"},
    description = [[]],
    weapons = {"m9k_spas12", "m9k_an94", "m9k_svu", "prokeypadcracker", "pro_lockpick", "itemstore_pickup", "spidermans_swepalt2"},
    command = "ajk",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Custom Jobs",
    customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:1:146685194"}, ply:SteamID())
    end,
    CustomCheckFailMsg = "NO!",
})

TEAM_HOB = DarkRP.createJob("RICK", { -- thief
    color = Color(250, 255, 0, 255),
    model = {"models/player/rick/rick.mdl"},
    description = [[DONNY AND NIGHTWOLF ARE BAE]],
    weapons = {"m9k_dbarrel", "m9k_svu", "prokeypadcracker", "pro_lockpick", "itemstore_pickup", "spidermans_swepalt2", "weapon_camo"},
    command = "rick",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Custom Jobs",
    customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:1:115347138"}, ply:SteamID())
    end,
    CustomCheckFailMsg = "BIG BOI GEORGEY ONLY!",
})

TEAM_MSTHICC = DarkRP.createJob("Ms McThiccy", { -- thief
    color = Color(255, 65, 65, 255),
    model = {"models/captainbigbutt/vocaloid/kuro_miku_append.mdl"},
    description = [[Tasty]],
    weapons = {"m9k_dbarrel", "gdcw_cod4m21", "weapon_camo", "spidermans_swepalt2", "itemstore_pickup", "pro_lockpick", "prokeypadcracker"},
    command = "msmcthiccy",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Custom Jobs",
    customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:1:90571076"}, ply:SteamID())
    end,
    CustomCheckFailMsg = "This job is for faggets only!",
})

TEAM_DRAGONLOLI = DarkRP.createJob("Dragon Loli", { -- thief
    color = Color(34, 85, 85, 255),
    model = {"models/player/dewobedil/maid_dragon/kanna/default_e.mdl"},
    description = [[Dont fuck the Dragon Loli]],
    weapons = {"m9k_an94", "m9k_m98b", "spidermans_swepalt2", "prokeypadcracker", "weapon_camo", "pro_lockpick", "itemstore_pickup"},
    command = "dragonloli",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Custom Jobs",
    customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:89518939"}, ply:SteamID())
    end,
    CustomCheckFailMsg = "This Is Kate's Job :(",
})

TEAM_JACKET = DarkRP.createJob("Jacket", { -- thief
    color = Color(205, 133, 63, 255),
    model = {"models/Splinks/Hotline_Miami/Jacket/Player_jacket.mdl"},
    description = [[GyRO's sweet class]],
    weapons = {"m9k_dragunov", "m9k_ak47", "m9k_dbarrel","pro_lockpick","prokeypadcracker","itemstore_pickup"},
    command = "jacket",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Custom Jobs",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:64780475"}, ply:SteamID())
    end,
    CustomCheckFailMsg = "no",
})

TEAM_JEFF = DarkRP.createJob("Jeff The Killer", { -- thief
    color = Color(0, 179, 255, 255),
    model = {"models/Splinks/Jeff_The_Killer/Jeff.mdl"},
    description = [[Leksa's Sweet Job]],
    weapons = {"m9k_svu", "pro_lockpick", "prokeypadcracker", "itemstore_pickup", "weapon_ninjaskunai"},
    command = "jeff",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Custom Jobs",
    customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:184956802"}, ply:SteamID())
    end,
    CustomCheckFailMsg = "NO",
})

TEAM_RAYVENS = DarkRP.createJob("Rayvens", { -- thief gang
    color = Color(0, 255, 148, 255),
    model = {
        "models/player/Patrick37/Patrick.mdl",
        "models/player/Spongebob37/Spongebob.mdl",
		"models/winningrook/sr4/handsome_squidward/handsome_squidward.mdl"
    },
    description = [[DONNY IS PHAT, AND SIMBA HAS TYPE 69 DIABETES]],
    weapons = {"m9k_barret_m82", "m9k_m60", "prokeypadcracker", "itemstore_pickup", "pro_lockpick"},
    command = "rayvens",
    max = 6,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Custom Jobs",
    customCheck = function(ply) return
        table.HasValue({"STEAM_0:1:57887502", "STEAM_0:0:79606616", "STEAM_0:0:67331014"}, ply:SteamID())
    end,
    CustomCheckFailMsg = "rayvens only",
})

TEAM_PHEN = DarkRP.createJob("Phendonar", { -- thief
    color = Color(156, 156, 156, 255),
    model = {"models/captainbigbutt/vocaloid/miku_append.mdl"},
    description = [[CUSTOM CLASS FTW]],
    weapons = {"m9k_svu", "itemstore_pickup", "prokeypadcracker", "pro_lockpick"},
    command = "phen",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Custom Jobs",
    customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:174280975"}, ply:SteamID())
    end,
    CustomCheckFailMsg = "NO!",
})

TEAM_CHRIS = DarkRP.createJob("Ya Boy", { -- thief
    color = Color(0, 71, 255, 255),
    model = {"models/player/spike/WEGADRIVE.mdl"},
    description = [[This is Chris Formage's Custom Class calledYa Boy, Chris is am amzing staff member and my loving son
This class can:
Can Raid
Can Mug
Can Print
Can Kidnap 
Can be loved
Can give love]],
    weapons = {"itemstore_pickup", "prokeypadcracker", "pro_lockpick", "m9k_barret_m82", "spidermans_swepalt2", "weapon_camo", "m9k_an94"},
    command = "chris",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Custom Jobs",
    customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:1:128268561"}, ply:SteamID())
    end,
    CustomCheckFailMsg = "NEIN!",
})

TEAM_GG = DarkRP.createJob("GG Ecksdee", { -- hitman
    color = Color(255, 255, 255, 255),
    model = {"models/Killzone 3/Capture/Capture Trooper_playermodel.mdl"},
    description = [[ECKSDEE]],
    weapons = {"m9k_barret_m82", "itemstore_pickup", "pro_lockpick", "prokeypadcracker"},
    command = "bart",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Custom Jobs",
    customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:41979815"}, ply:SteamID())
    end,
    CustomCheckFailMsg = "BART ONLY!",
})

TEAM_ERIC = DarkRP.createJob("Lasagne Boys", { -- thief
    color = Color(255, 153, 0, 255),
    model = {"models/garfield/odie.mdl", "models/garfield/odie.mdl"},
    description = [[give us youir women, and lasagne]],
    weapons = {"spidermans_swepalt2", "gmod_camera", "prokeypadcracker", "itemstore_pickup", "pro_lockpick"},
    command = "eric",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Custom Jobs",
	
    customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:32250027"}, ply:SteamID())
    end,
    CustomCheckFailMsg = "miss me with that gay shit",
})



--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CIT
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
[TEAM_CHIEF] = true,
[TEAM_MAYOR] = true,
[TEAM_POLICE] = true,
[TEAM_SS] = true,
[TEAM_SWATC] = true,
[TEAM_SWATH] = true,
[TEAM_SWATM] = true,
[TEAM_SWATO] = true,
[TEAM_SWATS] = true,
[TEAM_NIGHT] = true,
[TEAM_IRONMAN] = true,
[TEAM_DETECTIVE] = true,
[TEAM_PIZZA] = true,
}


--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_HITMAN, TEAM_PROHITMAN, TEAM_GG)



