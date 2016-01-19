ImperializationSettings = ZO_Object:Subclass()

local addonVersion = "2.4.0.0"
local savedVariablesVersion = 2.3
local settings = nil

function ImperializationSettings:New()
	local obj = ZO_Object.New(self)
	obj:Initialize()
	return obj
end

function ImperializationSettings:Initialize()
	local defaults = {
		styles = {
			["None"] = false,
			["Breton"] = false,
			["Redguard"] = false,
			["Orc"] = false,
			["Dark Elf"] = false,
			["Nord"] = false,
			["Argonian"] = false,
			["High Elf"] = false,
			["Wood Elf"] = false,
			["Khajiit"] = false,
			["Unique"] = false,
			["Thieves Guild"] = false,
			["Dark Brotherhood"] = false,
			["Dwemer"] = false,
			["Ancient Elf"] = false,
			["Imperial (Area)"] = false,
			["Barbaric"] = false,
			["Bandit"] = false,
			["Primal"] = false,
			["Daedric"] = false,
			["Undaunted"] = false,
			["Craglorn"] = false,
			["Glass"] = false,
			["Xivkyn"] = false,
			["Soul Shriven"] = false,
			["Draugr"] = false,
			["Maormer"] = false,
			["Akaviri"] = false,
			["Imperial (Racial)"] = false,
			["Yokudan"] = false,
			["Universal"] = false,
		},

		["displayResults"] = true,
		["convertOnEquip"] = false,
	}

	settings = ZO_SavedVars:New("ImperializationVariables",
		savedVariablesVersion, nil, defaults)

	self:CreateSettingsMenu()
end

function ImperializationSettings:CreateSettingsMenu()
	local LAM = LibStub("LibAddonMenu-2.0")
	local addonPanel = {
		type = "panel",
		name = "Imperialization",
		author = "@Randactyl",
		version = addonVersion,
		slashCommand = "/imp",
		registerForRefresh = true,
		registerForDefaults = true
	}
	local styleData = {
		--[[[2] = {
			type = "checkbox",
			name = "Breton",
			tooltip = "Check to convert the Breton style",
			getFunc = function() return settings.styles["Breton"] end,
			setFunc = function(newValue) settings.styles["Breton"] = (newValue) end,
			width = "half",
		},]]
	}
	local optionsData = {
		[1] = {
			type = "submenu",
			name = "Styles",
			tooltip = "Choose styles to convert",
			controls = styleData
		},
		[2] = {
			type = "checkbox",
			name = "Display Results",
			tooltip = "Displays an item link in the chat window for converted items",
			getFunc = function() return settings.displayResults end,
			setFunc = function(newValue) settings.displayResults = (newValue) end,
			default = settings.displayResults
		},
		[3] = {
			type = "checkbox",
			name = "Convert on Equip",
			tooltip = "Convert an item on equip rather that on receipt",
			getFunc = function() return settings.convertOnEquip end,
			setFunc = function(newValue) settings.convertOnEquip = (newValue) end,
			default = settings.convertOnEquip
		}
	}

	LAM:RegisterAddonPanel("ImperializationSettings", addonPanel)
	LAM:RegisterOptionControls("ImperializationSettings", optionsData)
end

function ImperializationSettings:ShouldConvertOnEquip()
	return settings.convertOnEquip
end

function ImperializationSettings:ShouldConvertStyle(itemStyleString)
	return settings[itemStyleString]
end

function ImperializationSettings:ShouldDisplayResults()
	return settings.displayResults
end
