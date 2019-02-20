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

local PANEL = {}

function PANEL:Init()
    self:SetSize(65, 65)
    self:SetText("")
    self.PModel = self.PModel or vgui.Create("ModelImage", self)
    self.PModel:SetSize(69, 69)
    self.PModel:SetPos(7, 3)
end

function PANEL:RehashModel(job, pmodel, src)
    self.hostPanel = src
    self.PModel:SetModel(pmodel, 1, "0")
    self.job = job
    self:SetTooltip(pmodel)
end

function PANEL:Paint(w, h) end

derma.DefineControl("amethyst.amodel", "", PANEL, "DPanel")
