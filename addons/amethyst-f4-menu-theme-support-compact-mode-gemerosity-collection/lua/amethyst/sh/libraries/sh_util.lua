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

--[[ -----------------------------------------------------------------------------------------------

					ADD DEVEOPER LOG

@desc: 				Saves anything important within Amethyst to a local file on the server and
					prints the output in the console.
@conditions: 		None
@assoc 				Shared

--------------------------------------------------------------------------------------------------]]

function Amethyst:AddDevLog( strText, intType, boolConsole )

	if not intType then intType = 1 end

	local LogType =
	{
		[1] = { "Normal", Color(255, 255, 255) },
		[2] = { "Error", Color(255, 0, 0) },
		[3] = { "Success", Color(0, 255, 0) },
		[4] = { "Notice", Color(255, 255, 0) },
	}

	local fetchLogType 		= LogType[intType]
	local messageType 		= table.KeyFromValue( LogType, intType )
	local fetchSavePath 	= Amethyst.Script.PathLogs or "amethyst/logs"

	local doLogSplice 		= 1
	local dateFormat 		= os.date(Amethyst.Settings.Devmode.FolderFormat or "%m-%d-%Y")
	local logFormat 		= os.date(Amethyst.Settings.Devmode.LogFormat or "%I:%M:%S")
	local FetchLogMaxSize 	= 16 * 16

	if (file.IsDir(fetchSavePath .. "/" .. dateFormat, "DATA")) then
		local files = file.Find(fetchSavePath .. "/" .. dateFormat .. "/*.txt", "DATA")

		if (table.Count(files) > 0) then
			local FetchLogSize = file.Size(fetchSavePath .. "/" .. dateFormat .. "/log_" .. #files .. ".txt", "DATA")

			if (FetchLogSize >= FetchLogMaxSize) then
				doLogSplice = table.Count(files) + 1
			end
		end
	else
		file.CreateDir(fetchSavePath .. "/" .. dateFormat, "DATA")
	end

	local doFormatMessage = fetchLogType[1] .. " -> " .. tostring(strText) .. "\n"

	file.Append(fetchSavePath .. "/" .. dateFormat .. "/log_" .. doLogSplice .. ".txt", doFormatMessage)

	if boolConsole then
		Amethyst.PrintConsole(doFormatMessage or "", fetchLogType[2] or Color(255, 255, 255))
	end

end
