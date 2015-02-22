Imperialization = {}

Imperialization.name = "Imperialization"
Imperialization.version = "2.2"
Imperialization.savedVariablesVersion = 2.3

Imperialization.Default = {
	["None"] = false,
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
	["Dwemer"] = false,

	["displayResults"] = true,
	["convertOnEquip"] = false,
}

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

EVENT_MANAGER:RegisterForEvent("Imperialization.name", EVENT_ADD_ON_LOADED, Imperialization.onAddonLoaded)