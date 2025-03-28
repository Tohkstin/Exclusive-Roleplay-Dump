QBConfig = {}

QBConfig.Debug = false      -- Enable or disable debug mode

QBConfig.MaxPlayers = GetConvarInt('sv_maxclients', 48) -- Gets max players from config file, default 48
QBConfig.DefaultSpawn = vector4(-1035.71, -2731.87, 12.86, 0.0)
QBConfig.UpdateInterval = 5 -- how often to update player data in minutes
QBConfig.StatusInterval = 5000 -- how often to check hunger/thirst status in milliseconds
QBConfig.EnableOOCChat = false -- Enable out-of-character chat
QBConfig.DelGunTimeout = 60000

QBConfig.SubscriptionTiers = {
    [1] = {
        name = "Emerald",
        color = "#3bc91e",
        icon = "https://r2.fivemanage.com/pub/ck1ppvs5ohfe.png",
        image = "https://r2.fivemanage.com/pub/ano343kulnv7.png",
    },
    [2] = {
        name = "Ruby",
        color = "#c91e1e",
        icon = "https://r2.fivemanage.com/pub/qxgzofa7877f.png",
        image = "https://r2.fivemanage.com/pub/c87tqlir6c28.png",
    },
    [3] = {
        name = "Sapphire",
        color = "#113cda",
        icon = "https://r2.fivemanage.com/pub/7lgwqr37sul6.png",
        image = "https://r2.fivemanage.com/pub/v4sti9gtcju9.png",
    },
    [4] = {
        name = "Diamond",
        color = "#2cd1ff",
        icon = "https://r2.fivemanage.com/pub/z5jaymqwk9rd.png",
        image = "https://r2.fivemanage.com/pub/8nlcey2scd49.png",
    },
}

QBConfig.Tokens = {
    ["premium"] = {
        ["icon"] = "https://utfs.io/f/5993c466-b46d-40d1-bb6e-0632d32bfc88-59lj8p.png",
        ["label"] = "Premium",
        ["color"] = "#813568"
    },
    ["standard"] = {
        ["icon"] = "https://utfs.io/f/776e5880-7fe5-4b26-8bc2-d3e784cea77b-lpi6kd.png",
        ["label"] = "Standard",
        ["color"] = "#2e7d46"
    },
}

QBConfig.Money = {}
QBConfig.Money.MoneyTypes = {
    -- ['type'] = startamount - Add or remove money types for your server (for ex. ['blackmoney'] = 0), remember once added it will not be removed from the database!
    ['cash'] = 1000,
    ['bank'] = 10000,
    ['crypto'] = 0
}
QBConfig.Money.DontAllowMinus = {
    -- Money that is not allowed going in minus
    'cash',
    'crypto'
}
QBConfig.Money.PayCheckTimeOut = 15 -- The time in minutes that it will give the paycheck
QBConfig.Money.PayCheckSociety = true -- If true paycheck will come from the society account that the player is employed at, requires qb-bossmenu

QBConfig.Player = {}
QBConfig.Player.MaxWeight = 250000 -- Max weight a player can carry (currently 120kg, written in grams)
QBConfig.Player.MaxInvSlots = 40 -- Max inventory slots for a player
QBConfig.Player.HungerRate = 4.2 -- Rate at which hunger goes down.
QBConfig.Player.ThirstRate = 3.8 -- Rate at which thirst goes down.
QBConfig.Player.Bloodtypes = {
    "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-",
}

QBConfig.Player.EnableStatusWarning = false -- Enable or disable the player status warnings (hunger, thirst)
QBConfig.Player.MinimumEffectStress = 70 -- minimum amount of stress (from 0-100) where the player starts to get affected by it
QBConfig.Player.MinimumStressSpeed = 40.25 -- (m/s - meters per second) Speed at which the player starts to get stressed while driving
QBConfig.Player.MinimumStressSpeedBuckled = 62.5 -- (m/s - meters per second) Speed at which the player starts to get stressed while driving

QBConfig.Player.ShootingStressChallenge = 75 -- A number from 0 to 100.  If a ramdomly selected number from 0 to 100 goes above this number the player will get stressed while shooting, set to above 100 to disable shooting stress

QBConfig.Server = {} -- General server config
QBConfig.Server.Closed = false -- Set server closed (no one can join except people with ace permission 'qbadmin.join')
QBConfig.Server.ClosedReason = "Server Closed" -- Reason message to display when people can't join the server
QBConfig.Server.Uptime = 0 -- Time the server has been up.
QBConfig.Server.Whitelist = false -- Enable or disable whitelist on the server
QBConfig.Server.WhitelistPermission = 'admin' -- Permission that's able to enter the server when the whitelist is on
QBConfig.Server.PVP = true -- Enable or disable pvp on the server (Ability to shoot other players)
QBConfig.Server.Discord = "" -- Discord invite link
QBConfig.Server.CheckDuplicateLicense = true -- Check for duplicate rockstar license on join
QBConfig.Server.Permissions = {'god', 'admin', 'mod'} -- Add as many groups as you want here after creating them in your server.cfg

QBConfig.Notify = {}

QBConfig.Notify.NotificationStyling = {
    group = false, -- Allow notifications to stack with a badge instead of repeating
    position = "right", -- top-left | top-right | bottom-left | bottom-right | top | bottom | left | right | center
    progress = true -- Display Progress Bar
}

-- These are how you define different notification variants
-- The "color" key is background of the notification
-- The "icon" key is the css-icon code, this project uses `Material Icons` & `Font Awesome`
QBConfig.Notify.VariantDefinitions = {
    success = {
        classes = 'success',
        icon = 'done'
    },
    primary = {
        classes = 'primary',
        icon = 'info'
    },
    error = {
        classes = 'error',
        icon = 'dangerous'
    },
    police = {
        classes = 'police',
        icon = 'local_police'
    },
    ambulance = {
        classes = 'ambulance',
        icon = 'fas fa-ambulance'
    }
}
