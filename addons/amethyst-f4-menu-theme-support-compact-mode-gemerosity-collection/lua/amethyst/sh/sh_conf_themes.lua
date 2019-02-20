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

SETTINGS -> THEMES

    This is a list of themes that are available within this script. Ensure that you add your own
    entry to this list otherwise your theme will NOT show.

    Themes in this list should have LOWERCASE NAMES. You can add the actual name of the theme
    within the manifest table of each theme's file in (sh/themes/yourtheme.lua)

--------------------------------------------------------------------------------------------------]]

Amethyst.Settings.Themes =
{
    ["default"] =
    {
        Enabled = true,
    },
    ["crimson"] =
    {
        Enabled = true,
        DonatorOnly = false,
        StaffOnly = false,
        HideNotAllowed = false,
    },
}
