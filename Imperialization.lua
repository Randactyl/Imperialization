Imperialization = {}

Imperialization.name = "Imperialization"
Imperialization.version = "2.2"
Imperialization.savedVariablesVersion = 2.3

Imperialization.Default = {
	["Altmer"] = false,
	["Dunmer"] = false,
	["Bosmer"] = false,
	["Nord"] = false,
	["Breton"] = false,
	["Redguard"] = false,
	["Khajiit"] = false,
	["Orc"] = false,
	["Argonian"] = false,
	["Ancient Elf"] = false,
	["Barbaric"] = false,
	["Primal"] = false,
	["Daedric"] = false,
	["Akaviri"] = false,
	["None"] = false,
	["Craglorn"] = false,
	["Yokudan"] = false,
	["Thieves Guild"] = false,
	["Dark Brotherhood"] = false,

	["displayResults"] = true,
	["convertOnEquip"] = false
}

--[[ Unused or unavailable styles:
    ["ITEMSTYLE_AREA_DWEMER"] = 14
    ["ITEMSTYLE_AREA_IMPERIAL"] = 16
    ["ITEMSTYLE_DEPRECATED1"] = 13
    ["ITEMSTYLE_DEPRECATED10"] = 30
    ["ITEMSTYLE_DEPRECATED2"] = 21
    ["ITEMSTYLE_DEPRECATED3"] = 22
    ["ITEMSTYLE_DEPRECATED4"] = 23
    ["ITEMSTYLE_DEPRECATED5"] = 24
    ["ITEMSTYLE_DEPRECATED6"] = 25
    ["ITEMSTYLE_DEPRECATED7"] = 26
    ["ITEMSTYLE_DEPRECATED8"] = 28
    ["ITEMSTYLE_DEPRECATED9"] = 29
    ["ITEMSTYLE_ENEMY_BANDIT"] = 18
    ["ITEMSTYLE_ENEMY_DRAUGR"] = 31
    ["ITEMSTYLE_ENEMY_MAORMER"] = 32
    ["ITEMSTYLE_RACIAL_IMPERIAL"] = 34
    ["ITEMSTYLE_UNIQUE"] = 10
]]

function Imperialization.onAddonLoaded(event, addonName)
	if addonName ~= Imperialization.name then return end
	CHAT_SYSTEM:AddMessage(string.format("Imperialization loaded."))
	Imperialization:Initialize()
end

function Imperialization:Initialize()
	Imperialization.savedVariables = ZO_SavedVars:New("ImperializationVariables", Imperialization.savedVariablesVersion, nil, Imperialization.Default)
	
	EVENT_MANAGER:RegisterForEvent("Imperialization.name", EVENT_INVENTORY_SINGLE_SLOT_UPDATE, Imperialization.onInventorySlotUpdate)
	EVENT_MANAGER:UnregisterForEvent("Imperialization.name", EVENT_ADD_ON_LOADED, Imperialization.onAddonLoaded)
	
	ImperializationSettings:Initialize()

	local displayName = GetDisplayName()
	if displayName == nil or displayName == "" then
   		if GetNumGuilds() > 0 then
    		displayName = GetGuildMemberInfo(GetGuildId(1), GetPlayerGuildMemberIndex(GetGuildId(1)))
   		else
        	displayName = "@" .. GetCVar("AccountName")
   		end
	end
end

function Imperialization.onInventorySlotUpdate(eventCode, bagID, slotID, isNewItem, itemSoundCategory, updateReason)
	local convert = nil
	if Imperialization.savedVariables.convertOnEquip then
		convert = BAG_WORN
	else
		convert = BAG_BACKPACK
	end
	if bagID == convert then
		if CanConvertItemStyleToImperial(bagID, slotID) then
			local itemStyle = select(7, GetItemInfo(bagID, slotID))
			local itemStyleString = GetString("SI_ITEMSTYLE", itemStyle)
			if Imperialization.savedVariables[itemStyleString] then
				if Imperialization.savedVariables.displayResults then
					d(zo_strformat("<<t:1>> converted from the <<2>> style!", GetItemLink(bagID, slotID, LINK_STYLE_BRACKETS), itemStyleString))
				end
				ConvertItemStyleToImperial(bagID, slotID)
			end
		end
	end
end

function GetDisplayName()
   return displayName
end

EVENT_MANAGER:RegisterForEvent("Imperialization.name", EVENT_ADD_ON_LOADED, Imperialization.onAddonLoaded)