Imperialization = {}

Imperialization.name = "Imperialization"
Imperialization.version = "2.2"

function Imperialization.OnAddonLoaded(event, addonName)
	if addonName ~= Imperialization.name then return end
	EVENT_MANAGER:UnregisterForEvent(Imperialization.name, EVENT_ADD_ON_LOADED, Imperialization.OnAddonLoaded)

	Imperialization.InitializeSettings()

	EVENT_MANAGER:RegisterForEvent(Imperialization.name, EVENT_INVENTORY_SINGLE_SLOT_UPDATE, Imperialization.OnInventorySlotUpdate)
	CHAT_SYSTEM:AddMessage(string.format("Imperialization loaded."))
end

function Imperialization.OnInventorySlotUpdate(eventCode, bagID, slotID)
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

EVENT_MANAGER:RegisterForEvent(Imperialization.name, EVENT_ADD_ON_LOADED, Imperialization.OnAddonLoaded)