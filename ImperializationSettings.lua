Imperialization.savedVariablesVersion = 2.3
Imperialization.defaultSettings = {
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
			name = "Altmer",
			tooltip = "Check to convert the Altmer style",
			getFunc = function() return Imperialization.savedVariables["Altmer"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Altmer"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Altmer"]
		},
		[3] = {
			type = "checkbox",
			name = "Dunmer",
			tooltip = "Check to convert the Dunmer style",
			getFunc = function() return Imperialization.savedVariables["Dunmer"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Dunmer"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Dunmer"]
		},
		[4] = {
			type = "checkbox",
			name = "Bosmer",
			tooltip = "Check to convert the Bosmer style",
			getFunc = function() return Imperialization.savedVariables["Bosmer"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Bosmer"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Bosmer"]
		},
		[5] = {
			type = "checkbox",
			name = "Nord",
			tooltip = "Check to convert the Nord style",
			getFunc = function() return Imperialization.savedVariables["Nord"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Nord"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Nord"]
		},
		[6] = {
			type = "checkbox",
			name = "Breton",
			tooltip = "Check to convert the Breton style",
			getFunc = function() return Imperialization.savedVariables["Breton"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Breton"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Breton"]
		},
		[7] = {
			type = "checkbox",
			name = "Redguard",
			tooltip = "Check to convert the Redguard style",
			getFunc = function() return Imperialization.savedVariables["Redguard"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Redguard"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Redguard"]
		},
		[8] = {
			type = "checkbox",
			name = "Khajiit",
			tooltip = "Check to convert the Khajiit style",
			getFunc = function() return Imperialization.savedVariables["Khajiit"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Khajiit"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings.Khajiit
		},
		[9] = {
			type = "checkbox",
			name = "Orc",
			tooltip = "Check to convert the Orc style",
			getFunc = function() return Imperialization.savedVariables["Orc"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Orc"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Orc"]
		},
		[10] = {
			type = "checkbox",
			name = "Argonian",
			tooltip = "Check to convert the Argonian style",
			getFunc = function() return Imperialization.savedVariables["Argonian"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Argonian"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Argonian"]
		},
		[11] = {
			type = "checkbox",
			name = "Ancient Elf",
			tooltip = "Check to convert the Ancient Elf style",
			getFunc = function() return Imperialization.savedVariables["Ancient Elf"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Ancient Elf"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Ancient Elf"]
		},
		[12] = {
			type = "checkbox",
			name = "Barbaric",
			tooltip = "Check to convert the Barbaric style",
			getFunc = function() return Imperialization.savedVariables["Barbaric"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Barbaric"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Barbaric"]
		},
		[13] = {
			type = "checkbox",
			name = "Primal",
			tooltip = "Check to convert the Primal style",
			getFunc = function() return Imperialization.savedVariables["Primal"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Primal"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Primal"]
		},
		[14] = {
			type = "checkbox",
			name = "Daedric",
			tooltip = "Check to convert the Daedric style",
			getFunc = function() return Imperialization.savedVariables["Daedric"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Daedric"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Daedric"]
		},
		[15] = {
			type = "checkbox",
			name = "Akaviri",
			tooltip = "Check to convert the Akaviri style",
			getFunc = function() return Imperialization.savedVariables["Akaviri"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Akaviri"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Akaviri"]
		},
		[16] = {
			type = "checkbox",
			name = "Dwemer",
			tooltip = "Check to convert the Dwemer style",
			getFunc = function() return Imperialization.savedVariables["Dwemer"] end,
			setFunc = function(newValue) Imperialization.savedVariables["Dwemer"] = (newValue) end,
			width = "half",
			default = Imperialization.defaultSettings["Dwemer"]
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