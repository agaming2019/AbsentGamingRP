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

Amethyst = Amethyst or {}
Amethyst.Settings = Amethyst.Settings or {}

net.Receive("AmethystMessageSet", function( len )
    local msg = net.ReadTable()
    chat.AddText( unpack( msg ) )
end)

--[[ -----------------------------------------------------------------------------------------------

                    FUNCTION -> SEND NOTIFICATION

@desc:              Sends a notification to the entire server for all players to see.
@conditions:        None
@params             str( title ), str( message ), UInt( delay )
@assoc              Client

--------------------------------------------------------------------------------------------------]]

function Amethyst:SendNotification(title, message, delay)
    local CurrentPlayer = LocalPlayer()
    local fetchDelay = delay or 10

    net.Start("Amethyst_PushNotification")
    net.WriteUInt(1, 4)
    net.WriteBool(false)
    net.WriteString(title)
    net.WriteString(message)
    net.WriteUInt(fetchDelay, 5)
    net.SendToServer()

    net.Receive( "Amethyst_PushNotification", function( intMsgLen )
        local player    = net.ReadEntity()
        local ntype     = net.ReadUInt(4)
        local plyonly   = net.ReadBool()
        local title     = net.ReadString()
        local message   = net.ReadString()
        local delay     = net.ReadUInt(5)

        Amethyst:PushNotification( player, ntype, plyonly, title, message, delay )
    end )
end

--[[ -----------------------------------------------------------------------------------------------

                    FUNCTION -> UPDATE STATS

@desc:              Updates the statistics panel within the player Dashboard
@conditions:        None
@assoc              Client

--------------------------------------------------------------------------------------------------]]

function Amethyst:UpdateStats()
    local CurrentPlayer = LocalPlayer()
    RunConsoleCommand( "pstats_requestdata", CurrentPlayer:EntIndex() )
    net.Receive( "Amethyst_PStats", function( intMsgLen )
        local PData_Player  = net.ReadEntity()
        local tblStats  = net.ReadTable()
        if not IsValid( PData_Player ) or not PData_Player:IsPlayer() then return end
        PData_Player.PStats = tblStats

        if PData_Player.PStats and IsValid(PanelRightFill) then
            PanelRightFill:Clear()
            vgui.Create("Amethyst_Tab_Dashboard", PanelRightFill)
        end
    end )
end

--[[ -----------------------------------------------------------------------------------------------

                    FUNCTION -> UPDATE LOGS

@desc:              Updates the list of logs that are available in-game for server admins to view.
@conditions:        None
@assoc              Client
@note               Unfinished Feature

--------------------------------------------------------------------------------------------------]]

function Amethyst:UpdateLogs()
    local CurrentPlayer = LocalPlayer()

    net.Start("Amethyst_FetchLogs")
    net.WriteEntity(CurrentPlayer)
    net.SendToServer()

    net.Receive( "Amethyst_FetchLogs", function( intMsgLen )
        local PlyLogsRequest  = net.ReadEntity()
        local tblLogs  = net.ReadTable()

        if not IsValid( PlyLogsRequest ) or not PlyLogsRequest:IsPlayer() then return end
         Amethyst.Logs = tblLogs

        if IsValid(PanelRightFill) then
            PanelRightFill:Clear()
            vgui.Create("Amethyst_Tab_Logs", PanelRightFill)
        end
    end )
end
