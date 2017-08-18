--Create the anchor frame
local clframe = CreateFrame("Frame", "ChatLogging", UIParent);
clframe:SetWidth(160);
clframe:SetHeight(60);
clframe:SetPoint("CENTER", UIParent, "CENTER");
clframe:SetMovable(true);
clframe:EnableMouse(true);
clframe:RegisterForDrag("LeftButton");
clframe:SetScript("OnDragStart", clframe.StartMoving);
clframe:SetScript("OnDragStop", clframe.StopMovingOrSizing);
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

--Default Log to off
isLogging = LoggingChat(false)

--Start Logging Function
local function StartLog(self)	
	if (LoggingChat()) then
		print("Chat is already being logged")
	else
		print("Chat is not being logged - starting it!")  
		LoggingChat(1)
		print("Chat is now being logged to Logs\\WOWChatLog.txt")
	end	
end

--Add the script to Start Button
clbutton1:SetScript("OnClick", StartLog)

--Stop Logging Function
local function StopLog(self)	
	if not (LoggingChat()) then
		print("Chat is already not being logged")
	else
		print("Chat is being logged - stopping it!")  
		LoggingChat(1)
		print("Chat is no longer being logged to Logs\\WOWChatLog.txt")
	end
end

--Addon the script to the Stop Button
clbutton2:SetScript("OnClick", StopLog)

