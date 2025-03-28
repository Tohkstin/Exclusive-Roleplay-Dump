QBShared.AddWeapons({
    --Kyros Weapon Pack V3
	[`weapon_ddm4v7`] = {
        name = "weapon_ddm4v7",
        label = "DDM4V7 AR15",
        weapontype = "Assault Rifle",
        ammotype = "AMMO_RIFLE",
        class = 3,
        damagereason = "Floored",
        attachments = {
            ["defaultclip"] = { component = "COMPONENT_DDM4V7_CLIP_01", item = "rifle_defaultclip", type = "clip", },
            ["extendedclip"] = { component = "COMPONENT_DDM4V7_CLIP_02", item = "rifle_extendedclip", type = "clip", },
            ["flashlight"] = { component = "COMPONENT_AT_PI_G2C_FLSH", item = "rifle_flashlight" },
        }
    },
	[`weapon_scar`] = {
        name = "weapon_scar",
        label = "SCAR",
        weapontype = "Assault Rifle",
        ammotype = "AMMO_RIFLE",
        class = 3,
        damagereason = "Floored",
        attachments = {
            ["defaultclip"] = { component = "COMPONENT_SCARV3_CLIP_01", item = "rifle_defaultclip", type = "clip", },
            ["extendedclip"] = { component = "COMPONENT_SCARV3_CLIP_02", item = "rifle_extendedclip", type = "clip", },
        }
    },
	[`weapon_552`] = {
        name = "weapon_552",
        label = "SG-552",
        weapontype = "Assault Rifle",
        ammotype = "AMMO_RIFLE",
        class = 3,
        damagereason = "Floored",
        attachments = {}
    },
	[`weapon_l1a1`] = {
        name = "weapon_l1a1",
        label = "FN L1A1",
        weapontype = "Assault Rifle",
        ammotype = "AMMO_RIFLE",
        class = 3,
        damagereason = "Floored",
        attachments = {}
    },
	[`weapon_fal`] = {
        name = "weapon_fal",
        label = "FN FAL",
        weapontype = "Assault Rifle",
        ammotype = "AMMO_RIFLE",
        class = 3,
        damagereason = "Floored",
        attachments = {}
    },
	[`weapon_mcx`] = {
        name = "weapon_mcx",
        label = "SIG MCX",
        weapontype = "Assault Rifle",
        ammotype = "AMMO_RIFLE",
        class = 3,
        damagereason = "Floored",
        attachments = {}
    },
	[`weapon_p416`] = {
        name = "weapon_p416",
        label = "P416",
        weapontype = "Assault Rifle",
        ammotype = "AMMO_RIFLE",
        class = 3,
        damagereason = "Floored",
        attachments = {
            ["suppressor"] = { component = "COMPONENT_AT_AR_P416_SUPP", item = "rifle_suppressor" },
        }
    },
	[`weapon_auga1`] = {
        name = "weapon_auga1",
        label = "AUG A1",
        weapontype = "Assault Rifle",
        ammotype = "AMMO_RIFLE",
        class = 3,
        damagereason = "Floored",
        attachments = {
            ["defaultclip"] = { component = "COMPONENT_AUGA1_CLIP_01", item = "rifle_defaultclip", type = "clip", },
            ["extendedclip"] = { component = "COMPONENT_AUGA1_CLIP_02", item = "rifle_extendedclip", type = "clip", },
        }
    },
	[`weapon_ia2`] = {
        name = "weapon_ia2",
        label = "IA2",
        weapontype = "Assault Rifle",
        ammotype = "AMMO_RIFLE",
        class = 3,
        damagereason = "Floored",
        attachments = {}
    },
	[`weapon_as50`] = {
        name = "weapon_as50",
        label = "AS50",
        weapontype = "Assault Rifle",
        ammotype = "AMMO_RIFLE",
        class = 3,
        damagereason = "Floored",
        attachments = {
            ["scope"] = { component = "COMPONENT_AT_AS50_SCOPE_LARGE", item = "rifle_scope" },
        }
    },
	[`weapon_g2c`] = {
        name = "weapon_g2c",
        label = "TAURUS G2C",
        weapontype = "Pistol",
        class = 1,
        ammotype = "AMMO_PISTOL",
        damagereason = "Blasted",
        attachments = {
            ["defaultclip"] = { component = "COMPONENT_G2C_CLIP_01", item = "pistol_defaultclip", type = "clip", },
            ["extendedclip"] = { component = "COMPONENT_G2C_CLIP_02", item = "pistol_extendedclip", type = "clip", },
        }
    },
	[`weapon_pmr`] = {
        name = "weapon_pmr",
        label = "KEL-TEC-PMR",
        weapontype = "Pistol",
        class = 1,
        ammotype = "AMMO_PISTOL",
        damagereason = "Blasted",
        attachments = {
            ["flashlight"] = { component = "COMPONENT_AT_PI_PMR_FLSH", item = "pistol_flashlight" },
        }
    },
	[`weapon_g19g4`] = {
        name = "weapon_g19g4",
        label = "G19G4",
        weapontype = "Pistol",
        class = 1,
        ammotype = "AMMO_PISTOL",
        damagereason = "Blasted",
        attachments = {}
    },
	[`weapon_gs`] = {
        name = "weapon_gs",
        label = "GLOCK STAINLESS",
        weapontype = "Pistol",
        class = 1,
        ammotype = "AMMO_PISTOL",
        damagereason = "Blasted",
        attachments = {}
    },
	[`weapon_sp320`] = {
        name = "weapon_sp320",
        label = "SP320",
        weapontype = "Pistol",
        class = 1,
        ammotype = "AMMO_PISTOL",
        damagereason = "Blasted",
        attachments = {}
    },
	[`weapon_bp`] = {
        name = "weapon_bp",
        label = "BERETTA PICO",
        weapontype = "Pistol",
        class = 1,
        ammotype = "AMMO_PISTOL",
        damagereason = "Blasted",
        attachments = {}
    },
	[`weapon_tglock`] = {
        name = "weapon_tglock",
        label = "TAN GLOCK",
        weapontype = "Pistol",
        class = 1,
        ammotype = "AMMO_PISTOL",
        damagereason = "Blasted",
        attachments = {
            ["defaultclip"] = { component = "COMPONENT_TGLOCK_CLIP_01", item = "pistol_defaultclip", type = "clip", },
            ["extendedclip"] = { component = "COMPONENT_TGLOCK_CLIP_02", item = "pistol_extendedclip", type = "clip", },
        }
    },
	[`weapon_g19x`] = {
        name = "weapon_g19x",
        label = "GLOCK 19X",
        weapontype = "Pistol",
        class = 1,
        ammotype = "AMMO_PISTOL",
        damagereason = "Blasted",
        attachments = {
            ["flashlight"] = { component = "COMPONENT_AT_PI_G19X_FLSH", item = "pistol_flashlight" },
        }
    },
	[`weapon_p2011`] = {
        name = "weapon_p2011",
        label = "P2011",
        weapontype = "Pistol",
        class = 1,
        ammotype = "AMMO_PISTOL",
        damagereason = "Blasted",
        attachments = {}
    },
	[`weapon_hipoint`] = {
        name = "weapon_hipoint",
        label = "HI POINT",
        weapontype = "Pistol",
        class = 1,
        ammotype = "AMMO_PISTOL",
        damagereason = "Blasted",
        attachments = {}
    },
	[`weapon_de`] = {
        name = "weapon_de",
        label = "DESERT EAGLE",
        weapontype = "Pistol",
        class = 1,
        ammotype = "AMMO_PISTOL",
        damagereason = "Blasted",
        attachments = {}
    },
	[`weapon_g26`] = {
        name = "weapon_g26",
        label = "GLOCK 26",
        weapontype = "Pistol",
        class = 1,
        ammotype = "AMMO_PISTOL",
        damagereason = "Blasted",
        attachments = {
            ["flashlight"] = { component = "COMPONENT_AT_PI_G26_FLSH", item = "pistol_flashlight" },
        }
    },
	[`weapon_broom`] = {
        name = "weapon_broom",
        label = "WOOD BROOM",
        weapontype = "Melee",
        ammotype = nil,
        class = "C",
        damagereason = "Whacked",
        attachments = {}
    },
	[`weapon_tomahawk`] = {
        name = "weapon_tomahawk",
        label = "TOMAHAWK",
        weapontype = "Melee",
        class = "B",
        ammotype = nil,
        damagereason = "Chopped",
        attachments = {}
    },
	[`weapon_tridagger`] = {
        name = "weapon_tridagger",
        label = "TRI DAGGER",
        weapontype = "Melee",
        class = "B",
        ammotype = nil,
        damagereason = "Sliced",
        attachments = {}
    },
	[`weapon_shammer`] = {
        name = "weapon_shammer",
        label = "SLEDGE HAMMER",
        weapontype = "Melee",
        class = "C",
        ammotype = nil,
        damagereason = "Whacked",
        attachments = {}
    },
	[`weapon_dildo`] = {
        name = "weapon_dildo",
        label = "DILDO",
        weapontype = "Melee",
        class = "C",
        ammotype = nil,
        damagereason = "Whacked",
        attachments = {}
    },
	[`weapon_uk`] = {
        name = "weapon_uk",
        label = "UTILITY KNIFE",
        weapontype = "Melee",
        class = "B",
        ammotype = nil,
        damagereason = "Stabbed",
        attachments = {}
    },
	[`weapon_sd`] = {
        name = "weapon_sd",
        label = "SCREW DRIVER",
        weapontype = "Melee",
        class = "A",
        ammotype = nil,
        damagereason = "Screwed",
        attachments = {}
    },
	-- [`weapon_awp`] = {
    --     name = "weapon_awp",
    --     label = "AWP",
    --     weapontype = "Sniper Rifle",
    --     ammotype = "AMMO_SNIPER",
    --     damagereason = "Sniped / Picked off / Scoped",
    --     attachments = {
    --         ["scope"] = { componet = "COMPONENT_AT_AWP_SCOPE_LARGE", item = "sniper_scope" },
    --     }
    -- },
	[`weapon_m200`] = {
        name = "weapon_m200",
        label = "CheyTac M200",
        weapontype = "Sniper Rifle",
        class = 4,
        ammotype = "AMMO_SNIPER",
        damagereason = "Sniped",
        attachments = {
            ["scope"] = { component = "COMPONENT_AT_M200_SCOPE_LARGE", item = "sniper_scope" },
        }
    },
	[`weapon_tuzi`] = {
        name = "weapon_tuzi",
        label = "TACTICAL UZI",
        weapontype = "Submachine Gun",
        ammotype = "AMMO_SMG",
        class = 2,
        damagereason = "Riddled",
        attachments = {
            ["defaultclip"] = { component = "COMPONENT_TUZI_CLIP_01", item = "smg_defaultclip", type = "clip", },
            ["extendedclip"] = { component = "COMPONENT_TUZI_CLIP_02", item = "smg_extendedclip", type = "clip", },
        }
    },
	[`weapon_p90`] = {
        name = "weapon_p90",
        label = "P90",
        weapontype = "Submachine Gun",
        class = 2,
        ammotype = "AMMO_SMG",
        damagereason = "Riddled",
        attachments = {
            ["suppressor"] = { component = "COMPONENT_AT_SR_P90_SUPP", item = "smg_suppressor" },
        }
    },
	[`weapon_vesper`] = {
        name = "weapon_vesper",
        label = "VESPER",
        weapontype = "Submachine Gun",
        class = 2,
        ammotype = "AMMO_SMG",
        damagereason = "Riddled",
        attachments = {}
    },
	[`weapon_h12`] = {
        name = "weapon_h12",
        label = "HAYMAKER 12",
        weapontype = "Shotgun",
        class = 3,
        ammotype = "AMMO_SHOTGUN",
        damagereason = "Pulverized",
        attachments = {}
    },
})
