Imperialization.savedVariablesVersion = 2.3
Imperialization.defaultSettings = {
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

function Imperialization.InitializeSettings()
	local LAM2 = LibStub("LibAddonMenu-2.0")
	local addonPanel = {
		type = "panel",
		name = Imperialization.name,
		author = "@Randactyl",
		version = Imperialization.version,
		slashCommand = "/imp",
		registerForRefresh = true,
		registerForDefaults = true
	}
	local styleData = {
		[1] = {
			type = "checkbox",
			name = "None",
			tooltip = "Check to convert items with no style",
			getFunc = function() return Imperialization.savedVariables["None"] end,
			setFunc = function(newValue) Imperialization.savedVariables["None"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["None"]
		},
		[2] = {
			type = "checkbox",
			name = "Breton",
			tooltip = "Check to convert the Breton style",
			getFunc = function() return Imperialization.savedVariables["Breton"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Breton"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Breton"]
		},
		[3] = {
			type = "checkbox",
			name = "Redguard",
			tooltip = "Check to convert the Redguard style",
			getFunc = function() return Imperialization.savedVariables["Redguard"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Redguard"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Redguard"]
		},
		[4] = {
			type = "checkbox",
			name = "Orc",
			tooltip = "Check to convert the Orc style",
			getFunc = function() return Imperialization.savedVariables["Orc"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Orc"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Orc"]
		},
		[5] = {
			type = "checkbox",
			name = "Dark Elf",
			tooltip = "Check to convert the Dark Elf style",
			getFunc = function() return Imperialization.savedVariables["Dark Elf"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Dark Elf"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Dark Elf"]
		},
		[6] = {
			type = "checkbox",
			name = "Nord",
			tooltip = "Check to convert the Nord style",
			getFunc = function() return Imperialization.savedVariables["Nord"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Nord"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Nord"]
		},
		[7] = {
			type = "checkbox",
			name = "Argonian",
			tooltip = "Check to convert the Argonian style",
			getFunc = function() return Imperialization.savedVariables["Argonian"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Argonian"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Argonian"]
		},
		[8] = {
			type = "checkbox",
			name = "High Elf",
			tooltip = "Check to convert the High Elf style",
			getFunc = function() return Imperialization.savedVariables["High Elf"] end,
			setFunc = function(newValue) Imperialization.savedVariables["High Elf"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["High Elf"]
		},
		[9] = {
			type = "checkbox",
			name = "Wood Elf",
			tooltip = "Check to convert the Wood Elf style",
			getFunc = function() return Imperialization.savedVariables["Wood Elf"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Wood Elf"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Wood Elf"]
		},
		[10] = {
			type = "checkbox",
			name = "Khajiit",
			tooltip = "Check to convert the Khajiit style",
			getFunc = function() return Imperialization.savedVariables["Khajiit"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Khajiit"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Khajiit"]
		},
		[11] = {
			type = "checkbox",
			name = "Unique",
			tooltip = "Check to convert the Unique style",
			getFunc = function() return Imperialization.savedVariables["Unique"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Unique"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Unique"]
		},
		[12] = {
			type = "checkbox",
			name = "Thieves Guild",
			tooltip = "Check to convert the Thieves Guild style",
			getFunc = function() return Imperialization.savedVariables["Thieves Guild"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Thieves Guild"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Thieves Guild"]
		},
		[13] = {
			type = "checkbox",
			name = "Dark Brotherhood",
			tooltip = "Check to convert the Dark Brotherhood style",
			getFunc = function() return Imperialization.savedVariables["Dark Brotherhood"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Dark Brotherhood"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Dark Brotherhood"]
		},
		[14] = {
			type = "checkbox",
			name = "Dwemer",
			tooltip = "Check to convert the Daedric style",
			getFunc = function() return Imperialization.savedVariables["Dwemer"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Dwemer"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Dwemer"]
		},
		[15] = {
			type = "checkbox",
			name = "Ancient Elf",
			tooltip = "Check to convert the Ancient Elf style",
			getFunc = function() return Imperialization.savedVariables["Ancient Elf"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Ancient Elf"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Ancient Elf"]
		},
		[16] = {
			type = "checkbox",
			name = "Imperial (Area)",
			tooltip = "Check to convert the Imperial (Area) style",
			getFunc = function() return Imperialization.savedVariables["Imperial (Area)"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Imperial (Area)"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Imperial (Area)"]
		},
		[17] = {
			type = "checkbox",
			name = "Barbaric",
			tooltip = "Check to convert the Barbaric style",
			getFunc = function() return Imperialization.savedVariables["Barbaric"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Barbaric"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Barbaric"]
		},
		[18] = {
			type = "checkbox",
			name = "Bandit",
			tooltip = "Check to convert the Bandit style",
			getFunc = function() return Imperialization.savedVariables["Bandit"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Bandit"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Bandit"]
		},
		[19] = {
			type = "checkbox",
			name = "Primal",
			tooltip = "Check to convert the Primal style",
			getFunc = function() return Imperialization.savedVariables["Primal"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Primal"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Primal"]
		},
		[20] = {
			type = "checkbox",
			name = "Daedric",
			tooltip = "Check to convert the Daedric style",
			getFunc = function() return Imperialization.savedVariables["Daedric"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Daedric"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Daedric"]
		},
		[21] = {
			type = "checkbox",
			name = "Undaunted",
			tooltip = "Check to convert the Undaunted style",
			getFunc = function() return Imperialization.savedVariables["Undaunted"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Undaunted"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Undaunted"]
		},
		[22] = {
			type = "checkbox",
			name = "Craglorn",
			tooltip = "Check to convert the Craglorn style",
			getFunc = function() return Imperialization.savedVariables["Craglorn"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Craglorn"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Craglorn"]
		},
		[23] = {
			type = "checkbox",
			name = "Glass",
			tooltip = "Check to convert the Glass style",
			getFunc = function() return Imperialization.savedVariables["Glass"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Glass"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Glass"]
		},
		[24] = {
			type = "checkbox",
			name = "Xivkyn",
			tooltip = "Check to convert the Xivkyn style",
			getFunc = function() return Imperialization.savedVariables["Xivkyn"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Xivkyn"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Xivkyn"]
		},
		[25] = {
			type = "checkbox",
			name = "Soul Shriven",
			tooltip = "Check to convert the Soul Shriven style",
			getFunc = function() return Imperialization.savedVariables["Soul Shriven"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Soul Shriven"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Soul Shriven"]
		},
		[26] = {
			type = "checkbox",
			name = "Draugr",
			tooltip = "Check to convert the Draugr style",
			getFunc = function() return Imperialization.savedVariables["Draugr"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Draugr"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Draugr"]
		},
		[27] = {
			type = "checkbox",
			name = "Maormer",
			tooltip = "Check to convert the Maormer style",
			getFunc = function() return Imperialization.savedVariables["Maormer"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Maormer"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Maormer"]
		},
		[28] = {
			type = "checkbox",
			name = "Akaviri",
			tooltip = "Check to convert the Akaviri style",
			getFunc = function() return Imperialization.savedVariables["Akaviri"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Akaviri"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Akaviri"]
		},
		[29] = {
			type = "checkbox",
			name = "Imperial (Racial)",
			tooltip = "Check to convert the Imperial (Racial) style",
			getFunc = function() return Imperialization.savedVariables["Imperial (Racial)"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Imperial (Racial)"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Imperial (Racial)"]
		},
		[30] = {
			type = "checkbox",
			name = "Yokudan",
			tooltip = "Check to convert the Yokudan style",
			getFunc = function() return Imperialization.savedVariables["Yokudan"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Yokudan"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Yokudan"]
		},
		[31] = {
			type = "checkbox",
			name = "Universal",
			tooltip = "Check to convert the Universal style",
			getFunc = function() return Imperialization.savedVariables["Universal"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Universal"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Universal"]
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
			getFunc = function() return Imperialization.savedVariables.displayResults end,
			setFunc = function(newValue) Imperialization.savedVariables.displayResults = (newValue) end,
			default = Imperialization.defaultSettings.displayResults
		},
		[3] = {
			type = "checkbox",
			name = "Convert on Equip",
			tooltip = "Convert an item on equip rather that on receipt",
			getFunc = function() return Imperialization.savedVariables.convertOnEquip end,
			setFunc = function(newValue) Imperialization.savedVariables.convertOnEquip = (newValue) end,
			default = Imperialization.defaultSettings.convertOnEquip
		}
	}

	Imperialization.savedVariables = ZO_SavedVars:New("ImperializationVariables",
			Imperialization.savedVariablesVersion, nil, Imperialization.defaultSettings)

	LAM2:RegisterAddonPanel("ImperializationSettings", addonPanel)
	LAM2:RegisterOptionControls("ImperializationSettings", optionsData)
end
