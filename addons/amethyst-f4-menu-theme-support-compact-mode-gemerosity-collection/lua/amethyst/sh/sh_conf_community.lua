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

					COMMUNITY BUTTONS

@desc: 				These properties allow you to configure how the community buttons display on
                    the community tab of Amethyst.
@assoc 				Shared

--------------------------------------------------------------------------------------------------]]

--[[ -----------------------------------------------------------------------------------------------
		STEAM GROUP COMMUNITY
--------------------------------------------------------------------------------------------------]]

Amethyst.Settings.GroupTitle        = "Steam Group"
Amethyst.Settings.GroupDesc         = "Join our steam group"
Amethyst.Settings.GroupLink         = "http://steamcommunity.com/groups/ArcheGamingStudios"
Amethyst.Settings.GroupButton       = "amethyst/amethyst_button_group.png"

--[[ -----------------------------------------------------------------------------------------------
		COMMUNITY FORUMS
--------------------------------------------------------------------------------------------------]]

Amethyst.Settings.ForumsTitle       = "Community Forums"
Amethyst.Settings.ForumsDesc        = "Talk to our community"
Amethyst.Settings.ForumsLink        = "http://archegamingstudios.net/community"
Amethyst.Settings.ForumsButton      = "amethyst/amethyst_button_forums.png"

--[[ -----------------------------------------------------------------------------------------------
		DONATIONS
--------------------------------------------------------------------------------------------------]]

Amethyst.Settings.DonateTitle       = "Donate"
Amethyst.Settings.DonateDesc        = "Help keep us running"
Amethyst.Settings.DonateLink        = "https://www.paypal.me/archegamingstudios"
Amethyst.Settings.DonateButton      = "amethyst/amethyst_button_donate.png"

--[[ -----------------------------------------------------------------------------------------------
		COMMUNITY WEBSITE
--------------------------------------------------------------------------------------------------]]

Amethyst.Settings.WebsiteTitle      = "Community Website"
Amethyst.Settings.WebsiteDesc       = "Official website"
Amethyst.Settings.WebsiteLink       = "http://archegamingstudios.net/community"
Amethyst.Settings.WebsiteButton     = "amethyst/amethyst_button_website.png"

--[[ -----------------------------------------------------------------------------------------------
		STEAM WORKSHOP COLLECTION
--------------------------------------------------------------------------------------------------]]

Amethyst.Settings.WorkshopTitle     = "Steam Workshop"
Amethyst.Settings.WorkshopDesc      = "Our Steam Collection"
Amethyst.Settings.WorkshopLink      = "http://steamcommunity.com/workshop/filedetails/?id=804174309"
Amethyst.Settings.WorkshopButton    = "amethyst/amethyst_button_workshop.png"

--[[ -----------------------------------------------------------------------------------------------
		STREAMERS
--------------------------------------------------------------------------------------------------]]

Amethyst.Settings.StreamersTitle    = "Streamers"
Amethyst.Settings.StreamersDesc     = "Our partnered streamers"
Amethyst.Settings.StreamersButton   = "amethyst/amethyst_button_streamers.png"

--[[ -----------------------------------------------------------------------------------------------
		NETWORK RULES
--------------------------------------------------------------------------------------------------]]

Amethyst.Settings.RulesTitle        = "Rules"
Amethyst.Settings.RulesDesc         = "What you should know"
Amethyst.Settings.RulesLink         = "http://link-to-your-rules.com"
Amethyst.Settings.RulesButton       = "amethyst/amethyst_button_rules.png"
Amethyst.Settings.RulesText         =
[[

----DO NOT DO THE FOLLOWING----
[x] No ghosting while in spectator mode or when dead
[x] No racist or sexually abusive comments toward others
[x] No impersonating staff members
[x] No being disrespectful to other players or staff
[x] No threatening to DDoS or take down our network [perm-ban and IP logging]
[x] No asking for other players personal information (IE: home address, phone number)
[x] No blocking doors or denying players access to a part of the map.
[x] No abusing the !unstuck command.
[x] No prop-killing.
[x] No hiding in areas as a prop that hunters cannot access or see.
[x] No mic or chat spamming.

----INFRACTION CONSEQUENCES----
The following actions may be taken in this order [unless violating a more serious offense]:

[-] Player shall be warned about the rule they have broken.
[-] Will be kicked from the server if they continue to break a rule.
[-] A ban will be issued for a term of 3-5 days (depending on what occured)
[-] A permanent ban will be issued and shall not be removed
[-] Bypassing a server ban will result in a GLOBAL BAN from ALL servers within our network including denied access to our website

]]

--[[ -----------------------------------------------------------------------------------------------
		CONSOLE
--------------------------------------------------------------------------------------------------]]

Amethyst.Settings.ConsoleTitle     = "Console"
Amethyst.Settings.ConsoleDesc      = "Pretend you are a coder"
Amethyst.Settings.ConsoleButton    = "amethyst/amethyst_button_console.png"

--[[ -----------------------------------------------------------------------------------------------
		DISCONNECT
--------------------------------------------------------------------------------------------------]]

Amethyst.Settings.DisconnectTitle  = "Disconnect"
Amethyst.Settings.DisconnectDesc   = "Leave this server"
Amethyst.Settings.DisconnectButton = "amethyst/amethyst_button_disconnect.png"

--[[ -----------------------------------------------------------------------------------------------

					STREAMERS TABLE

@desc: 				This table specifies all of the people you'd like to list in the "Streamers"
                    community button page.
@assoc 				Shared

--------------------------------------------------------------------------------------------------]]

Amethyst.Settings.Streamers =
{
    {
        Enabled = true,
        Name = "Nymphie",
        Desc = "Based out of Canada who plays games such as Overwatch, Rust, and 7 Days to Die. Also does public singing streams with the community.",
        Link = "https://www.twitch.tv/nymphieee",
        Image = "amethyst/streamers/streamer_nymphie.png",
        BgImage = "amethyst/amethyst_stream_logo_twitch.png",
    },
    {
        Enabled = true,
        Name = "Richard",
        Desc = "Unreal Engine Developer, ScriptFodder Content Creator, and streamer of games such as Overwatch, 7 Days to Die, and Garry's Mod.",
        Link = "http://www.twitch.tv/iamrichardt",
        Image = "amethyst/streamers/streamer_iamrichardt.png",
        BgImage = "amethyst/amethyst_stream_logo_twitch.png",
    }
}

--[[ -----------------------------------------------------------------------------------------------

					COMMUNITY BUTTONS TABLE

@desc: 				The table below is what you will modify if you wish to enable/disable certain
                    community buttons. You can also modify the function itself (for advanced users
                    only)
@assoc 				Shared

@notes              Sometimes certain websites will not allow you to type in them using the
                    built-in browser. If you'd like to switch over to the External Steam Overlay
                    browser, you will need to change the 3rd function parameter (resourceExternal)
                    to TRUE instead of false

                    Function Parameters:
                    CommunityAction( resourceTitle, resourceData, resourceExternal, resourceTextOnly )

                    Example:
                    CommunityAction( Amethyst.Settings.DonateTitle, Amethyst.Settings.DonateLink, true, false )

--------------------------------------------------------------------------------------------------]]

Amethyst.Settings.Community = {
    {
        Enabled = true,
        Name = Amethyst.Settings.RulesTitle,
        Desc = Amethyst.Settings.RulesDesc,
        Icon = Amethyst.Settings.RulesButton,
        func = function() Amethyst:CommunityAction( Amethyst.Settings.RulesTitle, Amethyst.Settings.RulesText, false, true ) end
    },
    {
        Enabled = false,
        Name = Amethyst.Settings.RulesTitle,
        Desc = Amethyst.Settings.RulesDesc,
        Icon = Amethyst.Settings.RulesButton,
        func = function() Amethyst:CommunityAction( Amethyst.Settings.RulesTitle, Amethyst.Settings.RulesLink, false, false ) end
    },
    {
        Enabled = true,
        Name = Amethyst.Settings.DonateTitle,
        Desc = Amethyst.Settings.DonateDesc,
        Icon = Amethyst.Settings.DonateButton,
        func = function() Amethyst:CommunityAction( Amethyst.Settings.DonateTitle, Amethyst.Settings.DonateLink, true, false ) end
    },
    {
        Enabled = true,
        Name = Amethyst.Settings.WebsiteTitle,
        Desc = Amethyst.Settings.WebsiteDesc,
        Icon = Amethyst.Settings.WebsiteButton,
        func = function() Amethyst:CommunityAction( Amethyst.Settings.WebsiteTitle, Amethyst.Settings.WebsiteLink, false, false ) end
    },
    {
        Enabled = true,
        Name = Amethyst.Settings.ForumsTitle,
        Desc = Amethyst.Settings.ForumsDesc,
        Icon = Amethyst.Settings.ForumsButton,
        func = function() Amethyst:CommunityAction( Amethyst.Settings.ForumsTitle, Amethyst.Settings.ForumsLink, false, false ) end
    },
    {
        Enabled = true,
        Name = Amethyst.Settings.GroupTitle,
        Desc = Amethyst.Settings.GroupDesc,
        Icon = Amethyst.Settings.GroupButton,
        func = function() Amethyst:CommunityAction( Amethyst.Settings.GroupTitle, Amethyst.Settings.GroupLink, false, false ) end
    },
    {
        Enabled = true,
        Name = Amethyst.Settings.WorkshopTitle,
        Desc = Amethyst.Settings.WorkshopDesc,
        Icon = Amethyst.Settings.WorkshopButton,
        func = function() Amethyst:CommunityAction( Amethyst.Settings.WorkshopTitle, Amethyst.Settings.WorkshopLink, false, false ) end
    },
    {
        Enabled = true,
        Name = Amethyst.Settings.StreamersTitle,
        Desc = Amethyst.Settings.StreamersDesc,
        Icon = Amethyst.Settings.StreamersButton,
        func = function() Amethyst:StreamersAction( Amethyst.Settings.Streamers ) end
    },
    {
        Enabled = true,
        Name = Amethyst.Settings.ConsoleTitle,
        Desc = Amethyst.Settings.ConsoleDesc,
        Icon = Amethyst.Settings.ConsoleButton,
        func = function()
            RunConsoleCommand("showconsole")
            timer.Simple( 0, function() RunConsoleCommand("gameui_activate") end )
        end
    },
    {
        Enabled = true,
        Name = Amethyst.Settings.DisconnectTitle,
        Desc = Amethyst.Settings.DisconnectDesc,
        Icon = Amethyst.Settings.DisconnectButton,
        func = function()
            RunConsoleCommand("disconnect")
        end
    }
}
