local Menu

function buyMenu()	 --Buy menu function
	if (Menu == nil) then
		Menu = vgui.Create("DFrame")
		Menu:SetSize(750, 500)
		Menu:SetPos(ScrW() / 2 - 250, ScrH() / 2 -250)--Sets the position directly in the middle of your screen
		Menu:SetTitle("Buy Menu")	--Menu name
		Menu:SetDraggable(true) --Can the user drag this menu?
		Menu:ShowCloseButton(false) --Can the user close the menu?
		Menu:SetDeleteOnClose(false)
		Menu.Paint = function() --Paints the menu
			surface.SetDrawColor(60, 60 ,60, 255)
			surface.DrawRect(0, 0, Menu:GetWide(), Menu:GetTall())
			
			surface.SetDrawColor(40, 40, 40, 255)
			surface.DrawRect(0, 24, Menu:GetWide(), 1)
		end
		
		addButtons(Menu)
		gui.EnableScreenClicker(true) --Enables crusor and clicking
	else
		if (Menu:IsVisible()) then --If the menu is not visible then make it not visible and disable the crusor
			Menu:SetVisible(false)
			gui.EnableScreenClicker(false)
		else
			Menu:SetVisible(true) --If the menu is visible then make it visible and enable the crusor
			gui.EnableScreenClicker(true)
		end
	end
end

concommand.Add("open_buymenu", buyMenu) --Adds a console command to open the buymenu

function addButtons(Menu)
	local playerButton = vgui.Create("DButton")--where stats are stored
	playerButton:SetParent(Menu) --Parents the button to the Menu
	playerButton:SetText("")
	playerButton:SetSize(100, 50) --How big is the button?
	playerButton:SetPos(0, 25) --Where is the button?
	playerButton.Paint = function()
		surface.SetDrawColor(50, 50, 50, 255)--Color of entire button
		surface.DrawRect(0, 0, playerButton:GetWide(),playerButton:GetTall())
		--Draw Bottom and right borders
		surface.SetDrawColor(40, 40, 40, 255)
		surface.DrawRect(0, 49, playerButton:GetWide(), 1)
		surface.DrawRect(99,  0, 1, playerButton:GetTall())
		
		--Draw text
		draw.DrawText("PISTOLS", "Trebuchet24", playerButton:GetWide() / 2, 17, Color(255, 255, 255, 255), 1)
	end
	playerButton.DoClick = function(playerButton) --When the player clicks the button, what happens?
	
	end
	
	
	local smgButton = vgui.Create("DButton")--where stats are stored
	smgButton:SetParent(Menu)
	smgButton:SetText("")
	smgButton:SetSize(100, 50)
	smgButton:SetPos(0, 75)
	smgButton.Paint = function()
		surface.SetDrawColor(50, 50, 50, 255)--Color of entire button
		surface.DrawRect(0, 0, playerButton:GetWide(),playerButton:GetTall())
		--Draw Bottom and right borders
		surface.SetDrawColor(40, 40, 40, 255)
		surface.DrawRect(0, 49, smgButton:GetWide(), 1)
		surface.DrawRect(99,  0, 1, smgButton:GetTall())
		
		--Draw text
		draw.DrawText("SMGS", "Trebuchet24", playerButton:GetWide() / 2, 17, Color(255, 255, 255, 255), 1)
	end
	smgButton.DoClick = function(smgButton)
	
	end
	
	
	local arButton = vgui.Create("DButton")--where stats are stored
	arButton:SetParent(Menu)
	arButton:SetText("")
	arButton:SetSize(100, 50)
	arButton:SetPos(0, 125)
	arButton.Paint = function()
		surface.SetDrawColor(50, 50, 50, 255)--Color of entire button
		surface.DrawRect(0, 0, arButton:GetWide(),arButton:GetTall())
		--Draw Bottom and right borders
		surface.SetDrawColor(40, 40, 40, 255)
		surface.DrawRect(0, 49, arButton:GetWide(), 1)
		surface.DrawRect(99,  0, 1, arButton:GetTall())
		
		--Draw text
		draw.DrawText("RIFLES", "Trebuchet24", playerButton:GetWide() / 2, 17, Color(255, 255, 255, 255), 1)
	end
	arButton.DoClick = function(arButton)
	
	end
	
	
	local heavyButton = vgui.Create("DButton")--where stats are stored
	heavyButton:SetParent(Menu)
	heavyButton:SetText("")
	heavyButton:SetSize(100, 50)
	heavyButton:SetPos(0, 175)
	heavyButton.Paint = function()
		surface.SetDrawColor(50, 50, 50, 255)--Color of entire button
		surface.DrawRect(0, 0, heavyButton:GetWide(),heavyButton:GetTall())
		--Draw Bottom and right borders
		surface.SetDrawColor(40, 40, 40, 255)
		surface.DrawRect(0, 49, arButton:GetWide(), 1)
		surface.DrawRect(99,  0, 1, arButton:GetTall())
		
		--Draw text
		draw.DrawText("HEAVY", "Trebuchet24", playerButton:GetWide() / 2, 17, Color(255, 255, 255, 255), 1)
	end
	heavyButton.DoClick = function(heavyButton)
	
	end
	
	
	local utilityButton = vgui.Create("DButton")--where stats are stored
	utilityButton:SetParent(Menu)
	utilityButton:SetText("")
	utilityButton:SetSize(100, 50)
	utilityButton:SetPos(0, 225)
	utilityButton.Paint = function()
		surface.SetDrawColor(50, 50, 50, 255)--Color of entire button
		surface.DrawRect(0, 0, utilityButton:GetWide(),utilityButton:GetTall())
		--Draw Bottom and right borders
		surface.SetDrawColor(40, 40, 40, 255)
		surface.DrawRect(0, 49, arButton:GetWide(), 1)
		surface.DrawRect(99,  0, 1, arButton:GetTall())
		
		--Draw text
		draw.DrawText("UTILITY", "Trebuchet24", playerButton:GetWide() / 2, 17, Color(255, 255, 255, 255), 1)
	end
	utilityButton.DoClick = function (utilityButton)
	
	end
end


--Player panel

PANEL = {} -- Create an empty panel

function PANEL:Init() -- Initialize the panel

end

--End player panel