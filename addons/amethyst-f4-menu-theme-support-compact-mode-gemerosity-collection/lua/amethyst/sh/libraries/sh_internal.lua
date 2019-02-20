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

UTILITIES

These settings are here as easier ways to access certain internal functionality. It is not
recommended that you mess with any of this stuff. This is just here to make my life easier. If you
modify any of this -- don't ask for my support.

--------------------------------------------------------------------------------------------------]]

--[[ -----------------------------------------------------------------------------------------------

SETTINGS -> IGNORE BLOCKS

These items are ignored when themes are loaded. You should NOT have to modify this table unless you
know Lua and undersand what you are doing. Otherwise, please do not touch these.

--------------------------------------------------------------------------------------------------]]

Amethyst.Settings.IgnoreBlockTypes =
{
    "category",
    "spacer",
    "padding",
    "desc"
}

--[[ -----------------------------------------------------------------------------------------------

SETTINGS -> INSTANT ACTIONS

These items control the icons to the top right (when not in compact mode).

--------------------------------------------------------------------------------------------------]]

Amethyst.Settings.InstantActions =
{
    {
        Enabled = true,
        Name = "Close",
        Icon = "amethyst/amethyst_gui_ia_exit.png",
        IconSize = 18,
        IconPadding = 10,
        Func = function()
            DarkRP.closeF4Menu()
        end
    },
    {
        Enabled = false,
        Name = "Refresh UI",
        Icon = "amethyst/amethyst_gui_ia_refreshui.png",
        IconSize = 18,
        IconPadding = 10,
        Func = function()
            DarkRP.closeF4Menu()
            DarkRP.openF4Menu()
        end
    },
    {
        Enabled = true,
        Name = "Settings",
        Icon = "amethyst/amethyst_gui_ia_settings.png",
        IconSize = 18,
        IconPadding = 10,
        Panel = "Amethyst_Tab_Settings",
    },
    {
        Enabled = true,
        Name = "Dashboard",
        Icon = "amethyst/amethyst_gui_ia_dashboard.png",
        IconSize = 18,
        IconPadding = 10,
        Panel = "Amethyst_Tab_Dashboard",
    },
}
