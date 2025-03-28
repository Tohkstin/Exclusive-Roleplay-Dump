QBShared.AddWeapons({
    --Kyros Weapon Pack Female
	[`weapon_fmicrodraco`] = {
		name = "weapon_fmicrodraco",
		label = "PINK MICRODRACO",
		weapontype = "Assault Rifle",
		ammotype = "AMMO_RIFLE",
		type = "rifle",
		class = 3,
		durability = 0.14,
        recoil = 0.2,
		damagereason = "Rifled",
		attachments = {}
	},
	[`weapon_pscar`] = {
		name = "weapon_pscar",
		label = "PINK SCAR-H",
		weapontype = "Assault Rifle",
		ammotype = "AMMO_RIFLE",
		type = "rifle",
		class = 3,
		durability = 0.14,
        recoil = 0.2,
		damagereason = "Rifled",
		attachments = {
			["defaultclip"] = { component = "COMPONENT_PINKSCAR_CLIP_01", item = "rifle_defaultclip", type = "clip", },
            ["extendedclip"] = { component = "COMPONENT_PINKSCAR_CLIP_02", item = "rifle_extendedclip", type = "clip", },
		}
	},
	[`weapon_pm4a1`] = {
		name = "weapon_pm4a1",
		label = "PINK COLT M4A1",
		weapontype = "Assault Rifle",
		ammotype = "AMMO_RIFLE",
		type = "rifle",
		class = 3,
		durability = 0.14,
        recoil = 0.2,
		damagereason = "Rifled",
		attachments = {
			["defaultclip"] = { component = "COMPONENT_PINKMP9_CLIP_01", item = "rifle_defaultclip", type = "clip", },
            ["extendedclip"] = { component = "COMPONENT_AT_AR_PINKMK18_AFGRIP", item = "rifle_extendedclip", type = "clip", }, --not a clip. yolo
			["suppressor"] = { component = "COMPONENT_AT_AR_PINKMK18_SUPP", item = "rifle_suppressor" },
			["scope"] = { component = "COMPONENT_AT_PINKMK18_SCOPE_MEDIUM", item = "rifle_scope" },
		}
	},
	[`weapon_pmk181`] = {
		name = "weapon_pmk181",
		label = "PINK MK18 M1",
		weapontype = "Assault Rifle",
		ammotype = "AMMO_RIFLE",
		type = "rifle",
		class = 3,
		durability = 0.14,
        recoil = 0.2,
		damagereason = "Rifled",
		attachments = {}
	},
	[`weapon_pmk14`] = {
		name = "weapon_pmk14",
		label = "PINK MK14",
		weapontype = "Assault Rifle",
		ammotype = "AMMO_RIFLE",
		type = "rifle",
		class = 3,
		durability = 0.14,
        recoil = 0.2,
		damagereason = "Rifled",
		attachments = {}
	},
	[`weapon_pm4`] = {
		name = "weapon_pm4",
		label = "PINK M4 SANDSM",
		weapontype = "Assault Rifle",
		ammotype = "AMMO_RIFLE",
		type = "rifle",
		class = 3,
		durability = 0.14,
        recoil = 0.2,
		damagereason = "Rifled",
		attachments = {}
	},
	[`weapon_p1911kt`] = {
		name = "weapon_p1911kt",
		label = "PINK 1911 KT",
		ammotype = "AMMO_PISTOL",
		type = "pistol",
		class = 1,
		durability = 0.14,
        recoil = 0.2,
		damagereason = "Blasted",
		attachments = {}
	},
	[`weapon_pg19`] = {
		name = "weapon_pg19",
		label = "PINK GLOCK 19",
		ammotype = "AMMO_PISTOL",
		type = "pistol",
		class = 1,
		durability = 0.14,
        recoil = 0.2,
		damagereason = "Blasted",
		attachments = {
			["defaultclip"] = { component = "COMPONENT_PINKGLOCK19_CLIP_01", item = "pistol_defaultclip", type = "clip", },
            ["extendedclip"] = { component = "COMPONENT_PINKGLOCK19_CLIP_02", item = "pistol_extendedclip", type = "clip", },
			["flashlight"] = { component = "COMPONENT_AT_PI_PINKGLOCK19FLSH", item = "pistol_flashlight", },
            ["suppressor"] = { component = "COMPONENT_AT_AR_PINKMK18_SUPP", item = "pistol_suppressor" },
		}
	},
	[`weapon_psp320`] = {
		name = "weapon_psp320",
		label = "PINK P320 RXP",
		ammotype = "AMMO_PISTOL",
		type = "pistol",
		class = 1,
		durability = 0.14,
        recoil = 0.2,
		damagereason = "Blasted",
		attachments = {}
	},
	[`weapon_pxds9`] = {
		name = "weapon_pxds9",
		label = "PINK XDS9",
		ammotype = "AMMO_PISTOL",
		type = "pistol",
		class = 1,
		durability = 0.14,
        recoil = 0.2,
		damagereason = "Blasted",
		attachments = {
			["defaultclip"] = { component = "COMPONENT_PXDS9_CLIP_01", item = "pistol_defaultclip", type = "clip", },
            ["extendedclip"] = { component = "COMPONENT_PXDS9_CLIP_02", item = "pistol_extendedclip", type = "clip", },
		}
	},
	[`weapon_pglock17c`] = {
		name = "weapon_pglock17c",
		label = "PINK GLOCK 17C",
		ammotype = "AMMO_PISTOL",
		type = "pistol",
		class = 1,
		durability = 0.14,
        recoil = 0.2,
		damagereason = "Blasted",
		attachments = {}
	},
	[`weapon_phk45`] = {
		name = "weapon_phk45",
		label = "PINK HK45",
		ammotype = "AMMO_PISTOL",
		type = "pistol",
		class = 1,
		durability = 0.14,
        recoil = 0.2,
		damagereason = "Blasted",
		attachments = {}
	},
	[`weapon_p941`] = {
		name = "weapon_p941",
		label = "PINK 941 PSL",
		ammotype = "AMMO_PISTOL",
		type = "pistol",
		class = 1,
		durability = 0.14,
        recoil = 0.2,
		damagereason = "Blasted",
		attachments = {}
	},
	[`weapon_spas12`] = {
		name = "weapon_spas12",
		label = "PINK SPAS-12",
		weapontype = "Shotgun",
		ammotype = "AMMO_SHOTGUN",
		type = "shotgun",
		class = 3,
		durability = 0.14,
        recoil = 0.2,
		damagereason = "Pulverized",
		attachments = {}
	},
	[`weapon_pmp9`] = {
		name = "weapon_pmp9",
		label = "PINK B&T MP9",
		weapontype = "Submachine Gun",
		ammotype = "AMMO_SMG",
		type = "smg",
		class = 2,
		durability = 0.14,
        recoil = 0.2,
		damagereason = "Riddled",
		attachments = {
			["defaultclip"] = { component = "COMPONENT_PINKMP9_CLIP_01", item = "smg_defaultclip", type = "clip", },
            ["extendedclip"] = { component = "COMPONENT_PINKMP9_CLIP_02", item = "smg_extendedclip", type = "clip", },
			["suppressor"] = { component = "COMPONENT_AT_AR_PINKPM9SUPP_02", item = "smg_suppressor" },
			["scope"] = { component = "COMPONENT_AT_SCOPE_MACRO", item = "smg_scope" },
		}
	},
})
