QBShared.AddWeapons({
    [`weapon_chickenm4`] = {
        name = "weapon_chickenm4",
        label = "Chicken M4",
        ammotype = "AMMO_RIFLE",
        type = "rifle",
        durability = 0.14,
        recoil = 0.2,
        damagereason = "Floored",
        attachments = {
            ["defaultclip"] = { component = "COMPONENT_CHICKENM4_CLIP_01", item = "rifle_defaultclip", type = "clip" },
            ["extendedclip"] = { component = "COMPONENT_CHICKENM4_CLIP_02", item = "assaultrifle_extendedclip", type = "clip" },
            ["drum"] = { component = "COMPONENT_CHICKENM4_CLIP_03", item = "rifle_drum", },
            ["suppressor"] = { component = "COMPONENT_AT_CHICKENM4_SUPP_02", item = "rifle_suppressor", },
        },
    },

    [`weapon_eastersniper`] = {
        name = "weapon_eastersniper",
        label = "Easter Sniper",
        ammotype = "AMMO_SNIPER",
        type = "rifle",
        durability = 0.14,
        recoil = 0.2,
        damagereason = "Sniped",
        attachments = {
            ["defaultclip"] = { component = "COMPONENT_EASTERSNIPER_CLIP_01", item = "sniper_defaultclip", type = "clip" },
            ["extendedclip"] = { component = "COMPONENT_EASTERSNIPER_CLIP_02", item = "sniper_extendedclip", type = "clip" },
            ["scope"] = { component = "COMPONENT_AT_EASTERSNIPER_MAX", item = "sniper_scope" },
            ["suppressor"] = { component = "COMPONENT_AT_EASTERSNIPER_SUPP", item = "sniper_suppressor" },
        },
    },
    [`weapon_carrotknife`] = {
        name = "weapon_carrotknife",
        label = "Carrot Knife",
        type = "melee",
        durability = 0.05,
        damagereason = "Stabbed",
    },
})
