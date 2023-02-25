-- Reference: Framework's ready to use traits https://github.com/FWolfe/ProfessionFramework/blob/master/media/lua/shared/3ProfessionTraits.lua

forageSkills = {
	-- Builder Profession (Handy2:Framework)
	Handy2 = {
		name                    = "Handy2",
		type                    = "trait",
		visionBonus             = 0,
		weatherEffect           = 0,
		darknessEffect          = 0,
		specialisations         = {
            ["Firewood"]        = 50,
            ["Stones"]          = 50,
		},
	},

	-- Scavenger Profession (Outdoorsman2:Framework)
    Outdoorsman2 = {
		name                    = "Outdoorsman2",
		type                    = "trait",
		visionBonus             = 1,
		weatherEffect           = 100,
		darknessEffect          = 100,
	},

	-- Scavenger Profession (t_scavenger:custom)
	t_scavenger = {
		name                    = "t_scavenger",
		type                    = "trait",
		visionBonus             = 0,
		weatherEffect           = 33,
		darknessEffect          = 33,
		specialisations         = {
			["JunkFood"]        = 60,
			["Medical"]         = 50,
			["Ammunition"]      = 40,
			["JunkWeapons"]     = 40,
			["Trash"]           = 10,
			["Junk"]            = 10,
		},
	},

	-- Gatherer Profession (t_gatherer:custom)
	t_gatherer = {
		name                    = "t_gatherer",
		type                    = "trait",
		visionBonus             = 1,
		weatherEffect           = 33,
		darknessEffect          = 33,
		specialisations         = {
			["JunkFood"]        = 60,
			["Medical"]         = 50,
            ["Crops"]           = 50,
            ["Vegetables"]      = 50,
            ["Fruits"]          = 50,
			["Firewood"]        = 50,
		},
	},

	-- Soldier Profession (t_soldier:custom)
	t_soldier = {
		name                    = "t_soldier",
		type                    = "trait",
		visionBonus             = 0,
		weatherEffect           = 0,
		darknessEffect          = 0,
		specialisations         = {
            ["Ammunition"]      = 50,
            ["JunkWeapons"]     = 50,
		},
	},

	-- Farmer Profession (t_farmer:custom)
    t_farmer = {
		name                    = "t_farmer",
		type                    = "trait",
		visionBonus             = 0,
		weatherEffect           = 0,
		darknessEffect          = 0,
        specialisations         = {
            ["Crops"]           = 50,
            ["Vegetables"]      = 50,
            ["Fruits"]          = 50,
		},
	},

	-- Medic Profession (t_medic:custom)
	t_medic = {
		name                    = "t_medic",
		type                    = "trait",
		visionBonus             = 0,
		weatherEffect           = 0,
		darknessEffect          = 0,
		specialisations         = {
			["MedicinalPlants"] = 50,
		},
	},
};