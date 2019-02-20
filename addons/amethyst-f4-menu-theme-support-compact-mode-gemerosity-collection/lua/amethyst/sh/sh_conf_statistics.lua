--[[ AMETHYST --------------------------------------------------------------------------------------

@package     Amethyst
@author      Richard & Nymphie
@build       v1.4.0
@release     03.27.2017
@owner       76561198075351542

BY MODIFYING THIS FILE -- YOU UNDERSTAND THAT THE ABOVE MENTIONED AUTHORS CANNOT BE HELD RESPONSIBLE
FOR ANY ISSUES THAT ARISE. AS A CUSTOMER TO THE ORIGINAL PURCHASED COPY OF THIS SCRIPT, YOU ARE
ENTITLED TO STANDARD SUPPORT WHICH CAN BE PROVIDED USING [SCRIPTFODDER.COM]. ONLY THE ORIGINAL
PURCHASER OF THIS SCRIPT CAN RECEIVE SUPPORT.

--------------------------------------------------------------------------------------------------]]

Amethyst.Settings = Amethyst.Settings or {}

--[[ -----------------------------------------------------------------------------------------------

SETTINGS -> STATISTICS

These settings control what statistics are stored within this script. You can create your own,
but it's only recommended if you know what you're doing. We provide no support for performing
work like this.

--------------------------------------------------------------------------------------------------]]

Amethyst.Settings.StatsEnabled = true
Amethyst.Settings.StatsKeepLifetime = true
Amethyst.Settings.StatsSaveTimer = 120

Amethyst.Settings.StatsList = {}
Amethyst.Settings.StatsList["action_jumps"]         = "Jumps"
Amethyst.Settings.StatsList["action_duck"]          = "Crouching"
Amethyst.Settings.StatsList["action_use"]           = "Items Used"
Amethyst.Settings.StatsList["action_steps"]         = "Steps Taken"
Amethyst.Settings.StatsList["action_connections"]   = "Server Connections"
Amethyst.Settings.StatsList["action_messages"]      = "Messages Sent"
Amethyst.Settings.StatsList["action_reloads"]       = "Gun Reloads"
Amethyst.Settings.StatsList["action_bulletsfired"]  = "Bullets Fired"
Amethyst.Settings.StatsList["action_damageinf"]     = "Damage Inflicted"
Amethyst.Settings.StatsList["action_damagetaken"]   = "Damage Taken"
Amethyst.Settings.StatsList["action_deaths"]        = "Deaths"
Amethyst.Settings.StatsList["action_kills"]         = "Players Killed"
Amethyst.Settings.StatsList["action_jobswitches"]   = "Job Switches"
