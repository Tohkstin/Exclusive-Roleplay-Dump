QBShared.AddWeapons({
    --Kyros Weapon Pack Police
	[`weapon_pdbaton`] = {
        ["name"] = "weapon_pdbaton",
        ["label"] = "PD BATON",
        ["type"] = "melee",
        ["ammotype"] = nil,
        ["durability"] = 0.15,
        ["recoil"] = 0.2,
        ["damagereason"] = "Pistoled / Blasted / Plugged / Bust a cap in",
        ["attachments"] = {},
    },
	[`weapon_btaser`] = {
        ["name"] = "weapon_btaser",
        ["label"] = "PD BLACK TASER",
        ["type"] = "pistol",
        ["ammotype"] = "AMMO_STUNGUN",
        ["durability"] = 0.15,
        ["recoil"] = 0.2,
        ["damagereason"] = "Died",
        ["attachments"] = {},
    },
	[`weapon_ytaser`] = {
        ["name"] = "weapon_ytaser",
        ["label"] = "PD YELLOW TASER",
        ["type"] = "pistol",
        ["ammotype"] = "AMMO_STUNGUN",
        ["durability"] = 0.15,
        ["recoil"] = 0.2,
        ["damagereason"] = "Died",
        ["attachments"] = {},
    },
	[`weapon_pdg19`] = {
        ["name"] = "weapon_pdg19",
        ["label"] = "PD GLOCK 19",
        ["type"] = "pistol",
        ["ammotype"] = "AMMO_PISTOL",
        ["durability"] = 0.15,
        ["recoil"] = 0.2,
        ["damagereason"] = "Pistoled / Blasted / Plugged / Bust a cap in",
        ["attachments"] = {
            ["defaultclip"] = { component = "COMPONENT_PDG19G4_CLIP_01", item = "pistol_defaultclip", type = "clip", },
            ["extendedclip"] = { component = "COMPONENT_PDG19G4_CLIP_02", item = "pistol_extendedclip", type = "clip", },
            ["flashlight"] = { component = "COMPONENT_AT_PI_PDG19G4_FLSH", item = "pistol_flashlight", },
            ["suppressor"] = { component = "COMPONENT_AT_PI_PDG19G4_SUPP", item = "pistol_suppressor", },
            ["scope"] = { component = "COMPONENT_AT_PDG19G4_SCOPE_SMALL", item = "combatpdw_scope", },
        },
    },
	[`weapon_pd870`] = {
        ["name"] = "weapon_pd870",
        ["label"] = "PD REMINGTON 870",
        ["type"] = "shotgun",
        ["ammotype"] = "AMMO_SHOTGUN",
        ["durability"] = 0.15,
        ["recoil"] = 0.2,
        ["damagereason"] = "Devastated / Pulverized / Shotgunned",
        ["attachments"] = {},
    },
	[`weapon_pdm700`] = {
        ["name"] = "weapon_pdm700",
        ["label"] = "PD REMINGTON M700",
        ["type"] = "sniper",
        ["ammotype"] = "AMMO_SNIPER",
        ["durability"] = 0.15,
        ["recoil"] = 0.2,
        ["damagereason"] = "Sniped / Picked off / Scoped",
        ["attachments"] = {
            ["defaultclip"] = { component = "COMPONENT_SNIPERRIFLE_CLIP_01", item = "sniperrifle_defaultclip", type = "clip", },
            ["scope"] = { component = "COMPONENT_AT_SCOPE_MAX", item = "sniper_scope", type = "scope", },
        },
    },
	[`weapon_hk417`] = {
        ["name"] = "weapon_hk417",
        ["label"] = "PD HK417",
        ["type"] = "rifle",
        ["ammotype"] = "AMMO_RIFLE",
        ["durability"] = 0.15,
        ["recoil"] = 0.2,
        ["damagereason"] = "Ended / Rifled / Shot down / Floored",
        ["attachments"] = {
            ["defaultclip"] = { component = "COMPONENT_PDHK417_CLIP_01", item = "rifle_defaultclip", type = "clip", },
            ["extendedclip"] = { component = "COMPONENT_PDHK417_CLIP_02", item = "rifle_extendedclip", type = "clip", },	
        },
    },
	[`weapon_pdcm607`] = {
        ["name"] = "weapon_pdcm607",
        ["label"] = "PD COLT M607",
        ["type"] = "rifle",
        ["ammotype"] = "AMMO_RIFLE",
        ["durability"] = 0.15,
        ["recoil"] = 0.2,
        ["damagereason"] = "Ended / Rifled / Shot down / Floored",
        ["attachments"] = {},
    },
	[`weapon_pdc7`] = {
        ["name"] = "weapon_pdc7",
        ["label"] = "PD COLT C7",
        ["type"] = "rifle",
        ["ammotype"] = "AMMO_RIFLE",
        ["durability"] = 0.15,
        ["recoil"] = 0.2,
        ["damagereason"] = "Ended / Rifled / Shot down / Floored",
        ["attachments"] = {},
    },
	[`weapon_pdg22`] = {
        ["name"] = "weapon_pdg22",
        ["label"] = "PD GLOCK 22",
        ["type"] = "pistol",
        ["ammotype"] = "AMMO_PISTOL",
        ["durability"] = 0.15,
        ["recoil"] = 0.2,
        ["damagereason"] = "Pistoled / Blasted / Plugged / Bust a cap in",
        ["attachments"] = {},
    },
	[`weapon_pdbm3`] = {
        ["name"] = "weapon_pdbm3",
        ["label"] = "PD BENELLI M3",
        ["type"] = "shotgun",
        ["ammotype"] = "AMMO_SHOTGUN",
        ["durability"] = 0.15,
        ["recoil"] = 0.2,
        ["damagereason"] = "Devastated / Pulverized / Shotgunned",
        ["attachments"] = {},
    },
	[`weapon_pdp88`] = {
        ["name"] = "weapon_pdp88",
        ["label"] = "PD WALTHER P88",
        ["type"] = "pistol",
        ["ammotype"] = "AMMO_PISTOL",
        ["durability"] = 0.15,
        ["recoil"] = 0.2,
        ["damagereason"] = "Pistoled / Blasted / Plugged / Bust a cap in",
        ["attachments"] = {},
    },
	[`weapon_pdhk45`] = {
        ["name"] = "weapon_pdhk45",
        ["label"] = "PD HK45",
        ["type"] = "pistol",
        ["ammotype"] = "AMMO_PISTOL",
        ["durability"] = 0.15,
        ["recoil"] = 0.2,
        ["damagereason"] = "Pistoled / Blasted / Plugged / Bust a cap in",
        ["attachments"] = {},
    },
	[`weapon_pdhk33`] = {
        ["name"] = "weapon_pdhk33",
        ["label"] = "PD HK433",
        ["type"] = "rifle",
        ["ammotype"] = "AMMO_RIFLE",
        ["durability"] = 0.15,
        ["recoil"] = 0.2,
        ["damagereason"] = "Ended / Rifled / Shot down / Floored",
        ["attachments"] = {},
    },
	[`weapon_pdhkusp`] = {
        ["name"] = "weapon_pdhkusp",
        ["label"] = "PD HK USP",
        ["type"] = "pistol",
        ["ammotype"] = "AMMO_PISTOL",
        ["durability"] = 0.15,
        ["recoil"] = 0.2,
        ["damagereason"] = "Pistoled / Blasted / Plugged / Bust a cap in",
        ["attachments"] = {},
    },
})