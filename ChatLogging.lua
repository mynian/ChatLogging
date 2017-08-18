--Create the anchor frame
local clframe = CreateFrame("Frame", "ChatLogging", UIParent);
clframe:SetWidth(160);
clframe:SetHeight(60);
clframe:SetPoint("CENTER", UIParent, "CENTER");
clframe:SetMovable(true);
clframe:EnableMouse(true);
clframe:RegisterForDrag("LeftButton");
clframe:SetScript("OnDragStart", Addon.StartMoving);
clframe:SetScript("OnDragStop", Addon.StopMovingOrSizing);
clframe:SetClampedToScreen(true);
clframe:SetBackdrop({
    bgFile="Interface\\Tooltips\\UI-Tooltip-Background",
    edgeFile="Interface\\Tooltips\\UI-Tooltip-Border",
    tile=false,
    tileSize=0,
    edgeSize=10,})
clframe:SetBackdropColor(0,0,0,.8)
clframe:SetBackdropBorderColor(1,1,1,1)

--Create Start Log button
local clbutton1 = CreateFrame("Button", "clbutton1", clframe, "UIPanelButtonTemplate")
clbutton1:SetWidth(150)
clbutton1:SetHeight(25)
clbutton1:SetPoint("TOP", clframe, "TOP", 0, -5)
clbutton1:SetText("Start Log")
clbutton1:RegisterForClicks("LeftButtonUp")

--Create Stop Log Button

local clbutton2 = CreateFrame("Button", "clbutton2", clframe, "UIPanelButtonTemplate")
clbutton2:SetWidth(150)
clbutton2:SetHeight(25)
clbutton2:SetPoint("BOTTOM", clframe, "BOTTOM", 0, 5)
clbutton2:SetText("Stop Log")
clbutton2:RegisterForClicks("LeftButtonUp")
