AddCSLuaFile("cl_init.lua")-- Includes these LUA Files to the client
AddCSLuaFile("shared.lua")
AddCSLuaFile("testhud.lua")
AddCSLuaFile("buymenu.lua")

include("shared.lua")

local open = false

function GM:PlayerInitialSpawn(ply)     --If buy some weird math the players money is less than 0, then this function sets it to 0
	if (ply:GetNWInt("playerMoney") < 0) then
		ply:SetNWInt("playerMoney", 0)
	end
end

function GM:PlayerSpawn(ply)
	ply:SetGravity(600)
	ply:SetMaxHealth(100)
	ply:SetRunSpeed(250)
	ply:SetWalkSpeed(150)		--Mostly self explanitory
	ply:Give("arccw_go_melee_knife") --Starting gear
	ply:SetupHands() --Draws C_Hands, Essentially all playermodels in gmod have custom hands, this function just enables them
end

--What I am trying to do here is get the players active weapon, which in this case is knife, and if the player killed an NPC with a knife it should add 1500, with any other weapon it should be 300

function GM:OnNPCKilled(npc, attacker, inflictor) -- Args, npc that is killed, attacker player thats attacking, inflictor is the person that ends up killing the NPC
	attacker:GetActiveWeapon():GetClass()
		if attacker:GetActiveWeapon():GetClass("arccw_go_melee_knife") then
			attacker:SetNWInt("playerMoney", attacker:GetNWInt("playerMoney") + 1500)--Add extra money for knife kill
		else
			attacker:SetNWInt("playerMoney", attacker:GetNWInt("playerMoney") + 300)--Add money
		end
end

			


function GM:PlayerDeath(victim, inflictor, attacker)  --Args, same as the NPC
	attacker:SetNWInt("playerMoney", attacker:GetNWInt("playerMoney") + 700) --attacker will have their "playerMoney" + 700 on kill
end



function GM:ShowSpare2(ply)
	ply:ConCommand("open_buymenu")
end