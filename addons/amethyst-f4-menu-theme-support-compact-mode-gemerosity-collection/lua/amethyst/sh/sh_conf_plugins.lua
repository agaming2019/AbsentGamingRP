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

Amethyst.PluginsList = Amethyst.PluginsList or {}

--[[ -----------------------------------------------------------------------------------------------

					SETTINGS -> PLUGINS

@desc 				Defines the list of available plugins for Amethyst. This table should only
                    be used if you have not purchased the actual plugin yet. After purchase,
                    the plugin table itself will take over and enable functionality.

--------------------------------------------------------------------------------------------------]]


Amethyst.PluginsList["amethyst_xtask"] =
{
    Name = "Achievements",
    Desc = "Get noticed for your actions",
    Icon = "amethyst/plugins/amethyst_plugin_achievements.png",
    Parameters =
    {
        id = "amethyst_xtask"
    },
    PurchaseURL = "https://scriptfodder.com/scripts/view/3169"
}

Amethyst.PluginsList["amethyst_ps2int"] =
{
    Name = "Pointshop",
    Desc = "Spend points on items",
    Icon = "amethyst/plugins/amethyst_plugin_pointshop.png",
    Parameters =
    {
        id = "amethyst_ps2int"
    },
    PurchaseURL = "https://scriptfodder.com/scripts/view/596/pointshop-2"
}
