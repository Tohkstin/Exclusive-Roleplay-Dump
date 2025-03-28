QBShared.AddWeapons({
    [`weapon_knifeusa`] = {
        name = "weapon_knifeusa",
        label = "USA Knife",
        type = "melee",
        durability = 0.15,
        recoil = 0.2,
        damagereason = "Stabbed / Slashed / Cut / Poked",
        attachments = {},
    },
    [`weapon_pistolusa`] = {
        name = 'weapon_pistolusa',
        label = 'USA Pistol',
        type = 'pistol',
        ammotype = 'AMMO_PISTOL',
        durability = 0.15,
        recoil = 0.2,
        damagereason = 'Blasted',
        attachments = {
            ["defaultclip"] = { component = "COMPONENT_PISTOLUSA_CLIP_01", item = "pistol_defaultclip", type = "clip" },
            ["extendedclip"] = { component = "COMPONENT_PISTOLUSA_CLIP_02", item = "pistol_extendedclip", type = "clip "},
            ["suppressor"] = { component = "COMPONENT_AT_PISTOLUSA_SUPP", item = "pistol_suppressor", },
        },
    },
    [`weapon_mp5usa`] = {
        name = 'weapon_mp5usa',
        label = 'USA MP5',
        type = 'smg',
        ammotype = 'AMMO_SMG',
        durability = 0.15,
        recoil = 0.2,
        damagereason = 'Riddled',
        attachments = {
            ["defaultclip"] = { component = "COMPONENT_MP5USA_CLIP_01", item = "smg_defaultclip", type = "clip" },
            ["extendedclip"] = { component = "COMPONENT_MP5USA_CLIP_02", item = "smg_extendedclip", type = "clip "},
            ["suppressor"] = { component = "COMPONENT_AT_MP5USA_SUPP", item = "smg_suppressor", },
        },
    },
        [`weapon_m4usa`] = {
        name = "weapon_m4usa",
        label = "USA M4",
        ammotype = "AMMO_RIFLE",
        type = "rifle",
        durability = 0.15,
        recoil = 0.2,
        damagereason = "Floored",
        attachments = {
            ["defaultclip"] = { component = "COMPONENT_M4USA_CLIP_01", item = "rifle_defaultclip", type = "clip" },
            ["extendedclip"] = { component = "COMPONENT_M4USA_CLIP_02", item = "rifle_extendedclip", type = "clip "},
            ["suppressor"] = { component = "COMPONENT_AT_M4USA_SUPP_02", item = "rifle_suppressor", },
        },
    },
})