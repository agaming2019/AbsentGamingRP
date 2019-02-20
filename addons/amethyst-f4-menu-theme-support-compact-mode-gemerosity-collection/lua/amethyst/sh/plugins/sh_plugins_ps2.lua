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

local PLUGIN = {}

PLUGIN.Enabled = true
PLUGIN.Name = "Pointshop"
PLUGIN.Author = "Kamshak"
PLUGIN.Desc = "Spend your points."
PLUGIN.Icon = "amethyst/plugins/amethyst_plugin_pointshop.png"
PLUGIN.Parameters =
{
    id = "amethyst_ps2int",
}

PLUGIN.ActionDoClick = function() RunConsoleCommand("pointshop2_toggle") end

Amethyst:RegisterPlugin( PLUGIN )
