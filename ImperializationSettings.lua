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
		[1] = {
			type = "checkbox",
			name = "None",
			tooltip = "Check to convert items with no style",
			getFunc = function() return settings["None"] end,
			setFunc = function(newValue) settings["None"] = (newValue) end,
			width = "half",
		},
		[2] = {
			type = "checkbox",
			name = "Breton",
			tooltip = "Check to convert the Breton style",
			getFunc = function() return settings["Breton"] end,
			setFunc = function(newValue) settings["Breton"] = (newValue) end,
			width = "half",
		},
		[3] = {
			type = "checkbox",
			name = "Redguard",
			tooltip = "Check to convert the Redguard style",
			getFunc = function() return settings["Redguard"] end,
			setFunc = function(newValue) settings["Redguard"] = (newValue) end,
			width = "half",
		},
		[4] = {
			type = "checkbox",
			name = "Orc",
			tooltip = "Check to convert the Orc style",
			getFunc = function() return settings["Orc"] end,
			setFunc = function(newValue) settings["Orc"] = (newValue) end,
			width = "half",
		},
		[5] = {
			type = "checkbox",
			name = "Dark Elf",
			tooltip = "Check to convert the Dark Elf style",
			getFunc = function() return settings["Dark Elf"] end,
			setFunc = function(newValue) settings["Dark Elf"] = (newValue) end,
			width = "half",
		},
		[6] = {
			type = "checkbox",
			name = "Nord",
			tooltip = "Check to convert the Nord style",
			getFunc = function() return settings["Nord"] end,
			setFunc = function(newValue) settings["Nord"] = (newValue) end,
			width = "half",
		},
		[7] = {
			type = "checkbox",
			name = "Argonian",
			tooltip = "Check to convert the Argonian style",
			getFunc = function() return settings["Argonian"] end,
			setFunc = function(newValue) settings["Argonian"] = (newValue) end,
			width = "half",
		},
		[8] = {
			type = "checkbox",
			name = "High Elf",
			tooltip = "Check to convert the High Elf style",
			getFunc = function() return settings["High Elf"] end,
			setFunc = function(newValue) settings["High Elf"] = (newValue) end,
			width = "half",
		},
		[9] = {
			type = "checkbox",
			name = "Wood Elf",
			tooltip = "Check to convert the Wood Elf style",
			getFunc = function() return settings["Wood Elf"] end,
			setFunc = function(newValue) settings["Wood Elf"] = (newValue) end,
			width = "half",
		},
		[10] = {
			type = "checkbox",
			name = "Khajiit",
			tooltip = "Check to convert the Khajiit style",
			getFunc = function() return settings["Khajiit"] end,
			setFunc = function(newValue) settings["Khajiit"] = (newValue) end,
			width = "half",
		},
		[11] = {
			type = "checkbox",
			name = "Unique",
			tooltip = "Check to convert the Unique style",
			getFunc = function() return settings["Unique"] end,
			setFunc = function(newValue) settings["Unique"] = (newValue) end,
			width = "half",
		},
		[12] = {
			type = "checkbox",
			name = "Thieves Guild",
			tooltip = "Check to convert the Thieves Guild style",
			getFunc = function() return settings["Thieves Guild"] end,
			setFunc = function(newValue) settings["Thieves Guild"] = (newValue) end,
			width = "half",
		},
		[13] = {
			type = "checkbox",
			name = "Dark Brotherhood",
			tooltip = "Check to convert the Dark Brotherhood style",
			getFunc = function() return settings["Dark Brotherhood"] end,
			setFunc = function(newValue) settings["Dark Brotherhood"] = (newValue) end,
			width = "half",
		},
		[14] = {
			type = "checkbox",
			name = "Dwemer",
			tooltip = "Check to convert the Daedric style",
			getFunc = function() return settings["Dwemer"] end,
			setFunc = function(newValue) settings["Dwemer"] = (newValue) end,
			width = "half",
		},
		[15] = {
			type = "checkbox",
			name = "Ancient Elf",
			tooltip = "Check to convert the Ancient Elf style",
			getFunc = function() return settings["Ancient Elf"] end,
			setFunc = function(newValue) settings["Ancient Elf"] = (newValue) end,
			width = "half",
		},
		[16] = {
			type = "checkbox",
			name = "Imperial (Area)",
			tooltip = "Check to convert the Imperial (Area) style",
			getFunc = function() return settings["Imperial (Area)"] end,
			setFunc = function(newValue) settings["Imperial (Area)"] = (newValue) end,
			width = "half",
		},
		[17] = {
			type = "checkbox",
			name = "Barbaric",
			tooltip = "Check to convert the Barbaric style",
			getFunc = function() return settings["Barbaric"] end,
			setFunc = function(newValue) settings["Barbaric"] = (newValue) end,
			width = "half",
		},
		[18] = {
			type = "checkbox",
			name = "Bandit",
			tooltip = "Check to convert the Bandit style",
			getFunc = function() return settings["Bandit"] end,
			setFunc = function(newValue) settings["Bandit"] = (newValue) end,
			width = "half",
		},
		[19] = {
			type = "checkbox",
			name = "Primal",
			tooltip = "Check to convert the Primal style",
			getFunc = function() return settings["Primal"] end,
			setFunc = function(newValue) settings["Primal"] = (newValue) end,
			width = "half",
		},
		[20] = {
			type = "checkbox",
			name = "Daedric",
			tooltip = "Check to convert the Daedric style",
			getFunc = function() return settings["Daedric"] end,
			setFunc = function(newValue) settings["Daedric"] = (newValue) end,
			width = "half",
		},
		[21] = {
			type = "checkbox",
			name = "Undaunted",
			tooltip = "Check to convert the Undaunted style",
			getFunc = function() return settings["Undaunted"] end,
			setFunc = function(newValue) settings["Undaunted"] = (newValue) end,
			width = "half",
		},
		[22] = {
			type = "checkbox",
			name = "Craglorn",
			tooltip = "Check to convert the Craglorn style",
			getFunc = function() return settings["Craglorn"] end,
			setFunc = function(newValue) settings["Craglorn"] = (newValue) end,
			width = "half",
		},
		[23] = {
			type = "checkbox",
			name = "Glass",
			tooltip = "Check to convert the Glass style",
			getFunc = function() return settings["Glass"] end,
			setFunc = function(newValue) settings["Glass"] = (newValue) end,
			width = "half",
		},
		[24] = {
			type = "checkbox",
			name = "Xivkyn",
			tooltip = "Check to convert the Xivkyn style",
			getFunc = function() return settings["Xivkyn"] end,
			setFunc = function(newValue) settings["Xivkyn"] = (newValue) end,
			width = "half",
		},
		[25] = {
			type = "checkbox",
			name = "Soul Shriven",
			tooltip = "Check to convert the Soul Shriven style",
			getFunc = function() return settings["Soul Shriven"] end,
			setFunc = function(newValue) settings["Soul Shriven"] = (newValue) end,
			width = "half",
		},
		[26] = {
			type = "checkbox",
			name = "Draugr",
			tooltip = "Check to convert the Draugr style",
			getFunc = function() return settings["Draugr"] end,
			setFunc = function(newValue) settings["Draugr"] = (newValue) end,
			width = "half",
		},
		[27] = {
			type = "checkbox",
			name = "Maormer",
			tooltip = "Check to convert the Maormer style",
			getFunc = function() return settings["Maormer"] end,
			setFunc = function(newValue) settings["Maormer"] = (newValue) end,
			width = "half",
		},
		[28] = {
			type = "checkbox",
			name = "Akaviri",
			tooltip = "Check to convert the Akaviri style",
			getFunc = function() return settings["Akaviri"] end,
			setFunc = function(newValue) settings["Akaviri"] = (newValue) end,
			width = "half",
		},
		[29] = {
			type = "checkbox",
			name = "Imperial (Racial)",
			tooltip = "Check to convert the Imperial (Racial) style",
			getFunc = function() return settings["Imperial (Racial)"] end,
			setFunc = function(newValue) settings["Imperial (Racial)"] = (newValue) end,
			width = "half",
		},
		[30] = {
			type = "checkbox",
			name = "Yokudan",
			tooltip = "Check to convert the Yokudan style",
			getFunc = function() return settings["Yokudan"] end,
			setFunc = function(newValue) settings["Yokudan"] = (newValue) end,
			width = "half",
		},
		[31] = {
			type = "checkbox",
			name = "Universal",
			tooltip = "Check to convert the Universal style",
			getFunc = function() return settings["Universal"] end,
			setFunc = function(newValue) settings["Universal"] = (newValue) end,
			width = "half",
		},
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
