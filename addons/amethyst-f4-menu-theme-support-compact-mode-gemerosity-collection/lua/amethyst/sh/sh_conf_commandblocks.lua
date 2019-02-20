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

SETTINGS -> COMMANDS

    These are the buttons that will display when the 'Commands' tab is pressed.

        Enabled         =>  If the command will display at all for the player.

        Name            =>  Name of the button

        Icon            =>  Icon to display to the left of each button.

        Type            =>  Defines the type of control the item is. Either button or separator.

        ExeCommand      =>  Command to be executed when button is pressed.

        ArgCount        =>  Number of arguments this button has.

        Arg1            =>  Argument 1

        Arg2            =>  Argument 2

        [---- SPECIAL PARAMETERS ----]

        IsMayorOnly               =>  If true -- item will only display if a player is a mayor specified job.

        IsCivilProtectionOnly     =>  If true -- item will only display if a player is a civil protector specified job.

        [------ SPECIAL NOTES ------]

        NOTE    =>  If type = "separator" -- you can NOT have to specify a NAME for the item. If you
                    do provide a name for a separator type, then it will automatically add it as a
                    category name above the space for the separator.

--------------------------------------------------------------------------------------------------]]

Amethyst.Settings.Commands = {
    {
        Enabled = true,
        Name = "General",
        Type = "separator",
    },
    {
        Enabled = true,
        Name = "Drop Money",
        Icon = "amethyst/amethyst_gui_point.png",
        IsCivilProtectionOnly = false,
        IsMayorOnly = false,
        Type = "button",
        ExeCommand = "/dropmoney",
        ArgCount = 1,
        Arg1 = "Amount",
        Arg2 = "",
    },
    {
        Enabled = true,
        Name = "Give Money",
        Icon = "amethyst/amethyst_gui_point.png",
        IsCivilProtectionOnly = false,
        IsMayorOnly = false,
        Type = "button",
        ExeCommand = "/give",
        ArgCount = 1,
        Arg1 = "Amount",
        Arg2 = ""
    },
    {
        Enabled = true,
        Type = "separator",
    },
    {
        Enabled = true,
        Name = "Drop Weapon",
        Icon = "amethyst/amethyst_gui_point.png",
        IsCivilProtectionOnly = false,
        IsMayorOnly = false,
        Type = "button",
        ExeCommand = "/drop",
        ArgCount = 0,
        Arg1 = "",
        Arg2 = ""
    },
    {
        Enabled = true,
        Name = "Make Shipment",
        Icon = "amethyst/amethyst_gui_point.png",
        IsCivilProtectionOnly = false,
        IsMayorOnly = false,
        Type = "button",
        ExeCommand = "/makeshipment",
        ArgCount = 0,
        Arg1 = "",
        Arg2 = ""
    },
    {
        Enabled = true,
        Name = "Sell All Doors",
        Icon = "amethyst/amethyst_gui_point.png",
        IsCivilProtectionOnly = false,
        IsMayorOnly = false,
        ExeCommand = "/unownalldoors",
        Type = "button",
        ArgCount = 0,
        Arg1 = "",
        Arg2 = ""
    },
    {
        Enabled = true,
        Name = "Request Gun License",
        Icon = "amethyst/amethyst_gui_point.png",
        IsCivilProtectionOnly = false,
        IsMayorOnly = false,
        ExeCommand = "/requestlicense",
        Type = "button",
        ArgCount = 0,
        Arg1 = "",
        Arg2 = ""
    },
    {
        Enabled = true,
        Name = "Mayor",
        Type = "separator",
        IsMayorOnly = true
    },
    {
        Enabled = true,
        Name = "Start Lockdown",
        Icon = "amethyst/amethyst_gui_point.png",
        IsCivilProtectionOnly = false,
        IsMayorOnly = true,
        ExeCommand = "/lockdown",
        Type = "button",
        ArgCount = 0,
        Arg1 = "",
        Arg2 = "",
    },
    {
        Enabled = true,
        Name = "Stop Lockdown",
        Icon = "amethyst/amethyst_gui_point.png",
        IconColor = Color(255, 255, 255, 25),
        IsCivilProtectionOnly = false,
        IsMayorOnly = true,
        ExeCommand = "/unlockdown",
        Type = "button",
        ArgCount = 0,
        Arg1 = "",
        Arg2 = "",
    },
    {
        Enabled = true,
        Name = "Add Law",
        Icon = "amethyst/amethyst_gui_point.png",
        IsCivilProtectionOnly = false,
        IsMayorOnly = true,
        ExeCommand = "/addlaw",
        Type = "button",
        ArgCount = 1,
        Arg1 = "New Law",
        Arg2 = "",
    },
    {
        Enabled = true,
        Name = "Remove Law",
        Icon = "amethyst/amethyst_gui_point.png",
        IsCivilProtectionOnly = false,
        IsMayorOnly = true,
        ExeCommand = "/removelaw",
        Type = "button",
        ArgCount = 1,
        Arg1 = "Law Number",
        Arg2 = "",
    },
    {
        Enabled = true,
        Name = "Place Lawboard",
        Icon = "amethyst/amethyst_gui_point.png",
        IsCivilProtectionOnly = false,
        IsMayorOnly = true,
        ExeCommand = "/placelaws",
        Type = "button",
        ArgCount = 0,
        Arg1 = "",
        Arg2 = "",
    },
    {
        Enabled = true,
        Name = "Broadcast Message",
        Icon = "amethyst/amethyst_gui_point.png",
        IsCivilProtectionOnly = false,
        IsMayorOnly = true,
        ExeCommand = "/broadcast",
        Type = "button",
        ArgCount = 1,
        Arg1 = "Message to Broadcast",
        Arg2 = "",
    },
    {
        Enabled = true,
        Name = "Civil Protection",
        Type = "separator",
        IsCivilProtectionOnly = true
    },
    {
        Enabled = true,
        Name = "Search Warrant",
        Icon = "amethyst/amethyst_gui_point.png",
        IsCivilProtectionOnly = true,
        IsMayorOnly = false,
        ExeCommand = "/warrant",
        Type = "button",
        ArgCount = 2,
        Arg1 = "Player",
        Arg2 = "Reason",
    },
    {
        Enabled = true,
        Name = "Wanted Player",
        Icon = "amethyst/amethyst_gui_point.png",
        IsCivilProtectionOnly = true,
        IsMayorOnly = false,
        ExeCommand = "/wanted",
        Type = "button",
        ArgCount = 2,
        Arg1 = "Player",
        Arg2 = "Reason",
    },
    {
        Enabled = true,
        Name = "Remove Wanted Status",
        Icon = "amethyst/amethyst_gui_point.png",
        IsCivilProtectionOnly = true,
        IsMayorOnly = false,
        ExeCommand = "/unwanted",
        Type = "button",
        ArgCount = 1,
        Arg1 = "Player",
        Arg2 = "",
    }

}
