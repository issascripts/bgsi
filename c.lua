getgenv().Settings = {

    Starter = {
        StarterRoutineActive      = true,
        RESET_PROGRESS_ON_EXECUTE = false,
        RESET_USER_PROGRESS       = { "robloxusername" }, -- usernames to wipe from Progress.json
        SKIP_W1_IF_W2_UNLOCKED    = true,
        REJOIN_GAME_AFTER_WORLD_COMPLETION = true,

        BOXES_TO_NOT_OPEN = {
            -- "Classic Crate",
            -- "Christmas Present",
            -- "OG Mystery Box",
        },

        INITIAL_HATCH_DURATION = 240,
        DELAY_PET_DELETION     = 60,
        MASTERY_UPGRADE_DELAY  = 60,

        STARTER_EGG_NAME = "Lunar Egg",
        ADMIN_EGG_AS_STARTER = true,
        
        -- Optional egg progression while hatching (currency-aware via EggsData).
        -- Add more stages by defining `OPTIONAL_THIRD_EGG`, `OPTIONAL_FOURTH_EGG`, etc (same format).
        OPTIONAL_SECOND_EGG = {
            ENABLED      = true,  -- set to true to enable
            -- Requirement:
            -- - If `REQ_AMOUNT` is nil/"AUTO", uses the egg's `Cost.Amount` + `Cost.Currency` from `Shared.Data.Eggs`
            -- - `REQ_COINS` is a legacy alias for `REQ_AMOUNT`
            REQ_COINS = 100000000,      -- amount in the egg's cost currency (override)
            NEW_EGG_NAME = "Winter Egg",     -- name of the egg to switch to
        },

        -- Example:
        -- OPTIONAL_THIRD_EGG = {
        --     ENABLED      = true,
        --     REQ_COINS    = 500000000,
        --     NEW_EGG_NAME = "Rainbow Egg",
        -- },

        --------------------------------------------------------------------
        -- W2 STARTER (Tickets): starter + optional secondary egg progression
        --------------------------------------------------------------------
        -- Primary W2 starter egg (Ticket currency).
        W2_STARTER_EGG = "Mining Egg",

        -- Optional extra eggs for W2 progression (Tickets).
        -- Add more stages by defining `W2_THIRD_EGG`, `W2_FOURTH_EGG`, etc (same format as `W2_SECOND_EGG`).
        -- `TICKET_REQ` can be:
        -- - "AUTO": use the built-in ticket-multiplier targets based on the current egg stage
        -- - number: override the ticket-multiplier target before switching to NEW_EGG_NAME
        W2_SECOND_EGG = {
            ENABLED     = true,
            TICKET_REQ  = "AUTO",
            NEW_EGG_NAME = "Neon Egg",
        },

        -- Example:
        -- W2_THIRD_EGG = {
        --     ENABLED      = true,
        --     TICKET_REQ   = "AUTO",
        --     NEW_EGG_NAME = "Cyber Egg",
        -- },

        -- Final completion target (team Tickets multiplier total while hatching the last enabled W2_*_EGG stage).
        W2_SCNDRY_EGG_TICKET_REQ = 3375,

        --------------------------------------------------------------------
        -- EVENT STARTER: event world egg progression (currency-aware)
        --------------------------------------------------------------------
        -- Primary event starter egg (e.g. current holiday egg).
        STARTER_EVENT_EGG = "Candycane Egg",

        -- Optional extra eggs for event progression.
        -- Add more stages by defining `EVENT_THIRD_EGG`, `EVENT_FOURTH_EGG`, etc (same format as `EVENT_SECOND_EGG`).
        -- `REQ_AMOUNT` can be:
        -- - "AUTO": use the egg's cost from Shared.Data.Eggs
        -- - number: override the currency requirement before switching to NEW_EGG_NAME
        EVENT_SECOND_EGG = {
            ENABLED     = true,
            REQ_AMOUNT  = "10000",
            NEW_EGG_NAME = "Candycane Egg",
        },

        -- World progression path (unlock order). Order matters.
        -- Valid entries (case-insensitive):
        --   World 2: "Minigame Paradise", "W2", 2
        --   World 3: "Seven Seas",        "W3", 3
        --   Event:  "Event"
        WORLD_PATH = { "Minigame Paradise", "Seven Seas" },

        -- Legacy (pre WORLD_PATH):
        -- PATH_TO_MINIGAME_PARADISE = true,

        STARTER_CURRENCY_GOALS = {
            Gems  = 10555,
            Coins = 150055,
        },

        STORAGE_TO_BUY = {
            "Experiment #52",
        },

        FLAVOR_TO_BUY = {
            "Molten",
        },

        -- Gem index helper: complete Hell/Lunar egg index for a gem boost.
        COMPLETE_GEM_INDEX_EGGS        = true,
        ONLY_GEM_EGGS_ON_CURRENCY_REQ  = false, -- if false, gem index runs after starter hatch even if goals not met

        Potions = {
            USE_POTIONS_ON_START = {
                Coins               = 2,
                Lucky               = 2,
                Speed               = 2,
                Mythic              = 2,
                ["Infinity Elixir"] = 10,
                ["Egg Elixir"]      = 4,
            },
        },

        Shrine = {
            DONATE_X_POTION_TO_SHRINE_ON_STARTER_ROUTINE = true,
            STARTER_SHRINE_POTION = {
                Type   = "Potion",
                Name   = "Secret Elixir",
                Tier   = 1,
                Amount = 67,
            },
        },
    },
    Potions = {
        -- Crafting
        POTIONS_TO_CRAFT = { "Coins", "Lucky", "Mythic" },
        SKIP_INGREDIENT_TIERS = {1},
        AUTO_CRAFT = true,

        USE_POTIONS = {
            Mythic = 7,
            ["Ultra Infinity Elixir"] = 1,
            Lucky = 7,
            Speed = 7,
            Coins = 7,
            ["Egg Elixir"] = 1,
            ["Infinity Elixir"] = 1,
            ["Festive Infinity Elixir"] = 1,
        },
        AUTO_USE = true,
        -- When true, print potion auto-use debug info to console.
        DEBUG_POTIONS = false,
        -- When true, don't auto-use potions until starter routine is complete (post-starter).
        GATE_POTIONS_UNTIL_POST = false,

        POTION_TIME_MIN = {
            Days = 0,
            Hours = 0,
            Minutes = 0,
        },

        -- When true, uses all selected potions/tiers until inventory is empty.
        USE_ALL_SELECTED_POTIONS = true,
    },
    Shiny = {
        ENABLE_SHINY_CRAFTING = true,
        RARITY_TO_SHINY       = { "Common", "Unique", "Rare", "Epic", "Legendary" },
    },
    Enchanting = {
        Enabled                = true,
        -- Optional staged enchants (Starter/Post) similar to RIFT_CHESTS_TO_OPEN.
        Enchants = {
            Starter = {
                PRIMARY_ENCHANTS       = {"Looter 1", "Team up 1"},
                SECONDARY_ENCHANTS     = {"Looter 1", "Team up 1"},
            },
            Post = {
                PRIMARY_ENCHANTS       = {"Looter 2", "Team up 2"},
                SECONDARY_ENCHANTS     = {"Looter 2", "Team up 2"},
            },
        },
        PRIMARY_ENCHANTS       = {"Looter 1", "Team up 1"},
        SECONDARY_ENCHANTS     = {"Looter 1", "Team up 1"},
        FIRST_SLOT_ITEM_TO_USE = "Shadow Crystal",           -- Item for getting first enchant
        SECOND_SLOT_ITEM_TO_USE = "Gems",    -- Item for getting second enchant
        AUTO_SWITCH_TO_ORBS    = true,
        PRIORITIZE_PRIMARY     = true,
        CURRENCY_MINIMUMS = {
            GEM             = 5000000,  -- minimum Gems to start/continue enchanting
            REROLL_ORB      = 0,  -- minimum Reroll Orbs
            SHADOW_CRYSTAL  = 100,  -- minimum Shadow Crystals
        },
        EQUIP_SECRET_ON_HATCH_OR_IF_YOU_JUST_DONT_HAVE_A_FULL_TEAM_OF_SECRETS_OR_SOMETHING = false,
    },
    Shrine = {
        AUTO_DONATE_BUBBLE_SHRINE = true,  -- auto-renew

        -- Policies for auto bubble shrine donations
        BSHRINE_POTION_TIER_LIMIT        = 6,
        -- Maximum potion tier auto-shrine is allowed to use.
        -- Lower tiers are always preferred first within this cap.
        BSHRINE_POTIONS_TO_NEVER_DONATE  = {
            "Infinity Elixir",
            "Secret Elixir",
            "Egg Elixir",
            "Hallowen Elxir",
        },
        -- High-level priority of what *kinds* of things to donate.
        -- Valid values (case-insensitive): "Potion", "Egg", "Box", "Orb",
        -- "Gift", "Key", "Generic". Only one kind is chosen per donation.
        BSHRINE_TYPES_TO_DONATE = {
            "Potion",
            -- Example if you want eggs or boxes:
            -- "Egg",
            -- "Box",
        },
        -- Specific names you are OK donating, across all kinds.
        -- Order matters: earlier entries are preferred when choosing.
        -- Examples: "Mythic" (potion), "Season 3 Egg" (egg),
        -- "Mystery Box" (box), "Golden Orb" (orb).
        BSHRINE_STUFF_TO_DONATE = {
            "Coins",
            "Lucky",
            "Speed",
            "Mythic",
        },
        BSHRINE_RENEW_WINDOW_SEC         = 300,
    },
    DreamerShrine = {
        AUTO_DONATE_DREAMER_SHRINE = true,

        -- Default donation size when only refreshing the buff.
        -- Donations are still sent 1 shard at a time.
        SHARD_AMOUNT_TO_DONATE = 1,

        -- When true, the script will spend extra Dream Shards to reach
        -- (at least) 75,000 DreamerShrine Experience.
        FOCUS_MAXING_SHRINE = false,

        -- When maxing XP, keep at least this many shards in inventory.
        -- If shards <= LEAVE_X_SHARDS_OVER, maxing is skipped and we donate
        -- normally (SHARD_AMOUNT_TO_DONATE) instead.
        LEAVE_X_SHARDS_OVER = 5,
    },
    Config = {
        Debug = {
            ENABLE_STARTER_LOGS = false,
        },
    },
    Rifts = {
        ENABLE_RIFT_FOCUS = true,

        MIN_RIFT_LUCK = 0,
        TARGET_HIGHEST_LUCK_RIFT = true,

        ENABLED         = true,
        SPAWNER_ENABLED = true,
        AUTO_TELEPORT   = true,
        AUTO_RESPAWN    = true,

        -- What to spawn (Bounty Egg / __BOUNTY_EGG__ and XL aliases: "1"/"XL1", "2"/"XL2").
        -- If RIFT_EGG_OVERRIDE is blank, the system will use MiscConfig.EGG_TO_HATCH when set.
        RIFT_NAME         = "Bounty Egg",
        RIFT_EGG_OVERRIDE = "",
        -- Duration can be minutes (10/15/30/45/60) or seconds (e.g. 3600 for 60m).
        DURATION        = 10,
        LUCK_MULTIPLIER = 5, -- egg only (5/10/15/20/25)

        SPAWN_FALLBACK_ENABLED = true,

        HUNTER_ENABLED             = false,
        HUNTER_MIN_LUCK            = 10,
        HUNTER_TARGET_HIGHEST_LUCK = true,
        HUNTER_RIFTS_TO_HUNT       = { "Bounty Egg" },

        OPEN_RIFT_CHESTS    = true,  -- master toggle for auto-opening rift chests
        -- When true (and you are actively hatching), rift chests are opened in a very short detour
        -- (about 0.2s) and the character is teleported back to the current hatch target to prevent
        -- chaotic back-and-forth teleports between the hatch loop and chest loop.
        HATCH_WHILE_DOING_CHESTS = true,
        RIFT_CHESTS_PRIORITY = { "Peppermint Chest", "Super Chest" }, -- optional; order matters
        -- If Starter/Post are provided, numeric entries are treated as Starter.
        RIFT_CHESTS_TO_OPEN = {
            Starter = { "golden-chest", "royal-chest" },
            Post    = { "Peppermint" },
        }, -- rift chest IDs from Shared.Data.Rifts (case/space insensitive)
    },
    Events = {
        -- Main toggle: auto-collect falling gifts (PresentRain) by bringing them to you + touching them.
        AUTO_GIFTS = true,

        -- Auto-run the "GiveGifts" activation loop in the event world.
        AUTO_GIVE_GIFTS = true,

        -- Snowflake "refill" policy for GiveGifts:
        -- - Starts giving when Snowflakes drop below Minimum
        -- - Stops giving when Snowflakes reach Maximum
        -- - While refilling, the script pauses other systems (except AUTO_GIFTS and Peppermint rift chests in downtime)
        GIVE_GIFTS_SNOWFLAKE_AMTS = { Minimum = 20000, Maximum = 2000000 },

        -- When true, ignore rift chest config and open Peppermint chests only.
        IGNORE_CHEST_CONF_AND_DO_PEPPERMINT = false,

        -- World name used with the "UnlockWorld" remote (change per event).
        EVENT_WORLD_NAME = "Christmas World",

        -- Optional currency requirement(s) before attempting to unlock the event world.
        -- Set to {} to disable currency gating entirely.
        EVENT_CURRENCY_MULTI_REQ = {
            Gems = 2500,
        },

        -- Event-specific mastery requirement(s) before attempting to unlock the event world.
        -- This does NOT replace Mastery.TARGET_MASTERY_LEVELS used for normal world progression.
        EVENT_MASTERY_REQ = {
            Pets      = 15,
            Buffs     = 18,
            Shops     = 0,
            Minigames = 0,
            Rifts     = 0,
        },
    },
    Quests = {
        ENABLE_QUESTS = true,


        QUESTS_TO_COMPLETE = {
            "Season",
            -- "Bubble Challenge",
            -- "Secret Santa",
            -- "Gem Genie",
            -- "Jolly Trio",
        },

        DEFAULT_HATCH_EGG = "", 
        HATCH_FALLBACK_EGG = "Rainbow Egg",
        RARITY_FALLBACK_EGG = "Spikey Egg",
        SNOWFLAKE_FALLBACK_EGG = "",

        MAX_REROLLS = 25,

        COIN_CAP = 5000000000000, -- 5T
        COIN_SPEND_EGG = "Rainbow Egg",
        COIN_SPEND_SECONDS = 10,

        GemGenie = {
            TARGETED_REWARDS = { "Dream Shard" },
            REROLL_UNTIL_TARGET = false,
        },

        JollyTrio = {
            TARGETED_REWARDS = { "Ultra Infinity Elixir" },
            BLOCKED_TASK_KEYWORDS = { "present" },

            REROLL_UNTIL_TARGET = false,
        },
    },
    Shops = {
        ENABLE_AUTO_SHOPS = true,
        SHOPS_TO_BUY = {
            -- "ALL", -- buy from every currently available shop
            -- "alien-shop",
            -- "fishing-shop",
            -- "traveling-merchant",
            -- "dice-merchant",
            "Festive Shop",
        },
        -- When true, buy every slot from selected shops.
        -- When false, only buy items listed in PURCHASE_SELECTED.
        -- If nil, defaults to true unless PURCHASE_SELECTED is configured.
        PURCHASE_ALL_SELECTED_SHOPS = true,
        -- Per-shop item whitelist; keys can be any shop id or display name (case-insensitive).
        -- Values can be a string or a list of strings.
        PURCHASE_SELECTED = {
            -- FestiveShop = { "Egg Elixir", "Festive Elixir" },
            -- ChristmasShop = "Festive Elixir",
        },
        MINIMUM_CURRENCIES_FOR_SHOPS = {
            -- FESTIVE_SHOP       = "99929239", -- Snowflakes (auto-detected)
            -- TRAVELING_MERCHANT = "99999",    -- Gems (auto-detected)
            -- FISHING_SHOP       = "5000",     -- Pearls (auto-detected)
            -- DICE_MERCHANT      = "25000",    -- Tickets (auto-detected)
            -- SHARD              = "75000",    -- Gems (auto-detected)
            -- ALIEN              = "50000",    -- Gems (auto-detected)
        }
    },
    Deletion = {
        ENABLE_AUTO_DELETE        = true,
        ENABLE_AUTO_RARITY_DELETE = true,

        PETS_TO_DELETE = {"Doggy", "Kitty"},

        RARITIES_TO_KEEP = {
            "Secret",
            "Legendary",
        },
    },
    Chests = {
        ENABLE_AUTO_CHESTS          = true,
        CHESTS_TO_OPEN              = {
            "Ticket",
            "Giant", 
            "Void", 
            "Peppermint",
        },

        GATE_VOID_BY_CURRENCY_GOALS = false,
        GATE_VOID_BY_MASTERY_GOALS  = true,
    },
    MiscConfig = {
        FORCE_LOAD_CHUNKS       = true,  -- true = force-load via getgc
        AUTO_SPIN_WHEEL         = true, -- true = auto-use spin tickets in background
        -- Wheels to spin when AUTO_SPIN_WHEEL is enabled.
        -- "Basic" = default WheelSpin / ClaimWheelSpinQueue.
        -- Any other name uses: <Name>WheelSpin / Claim<Name>WheelSpinQueue (case-insensitive input).
        WHEELS_TO_SPIN          = { "Christmas", "Basic" },
        ENABLE_PLAYTIME_REWARDS = true,  -- true = auto-claim playtime rewards
        AUTO_USE_MYSTERY_BOX    = true,  -- true = auto-use mystery boxes/gifts in background
        MBOX_GEM_LIMIT          = 2000000000, -- skip boxes/gifts when Gems >= this
        -- Add more limits like: MBOX_SNOWFLAKE_LIMIT = 129038,
        AUTO_DOGGY_JUMP         = true, -- true = auto-fire DoggyJumpWin in background
        AUTO_GOLDEN_ORB         = false, -- true = auto-use Golden Orb every 30s
        AUTO_OBBIES             = false, -- true = auto-run World 3 obbies
        OBBIES_TO_DO            = { "Medium", "Hard", "Easy" },
        -- When true and an admin "SummonedEgg" exists, certain teleports
        -- in this script (island unlock, starter chest return-to-zen, gem
        -- index helpers, post-starter hatch) will prefer admin egg focus.
        FOCUS_ADMIN_EGG         = true,
        -- When true (and FOCUS_ADMIN_EGG is enabled), pause other automation while SummonedEgg exists.
        PAUSE_STARTER_STUFF_FOR_ADMIN_EGG = true,
        -- When true, log hatch target + max eggs (throttled).
        DEBUG_HATCH_EGGS        = true,
        -- After all configured starter paths complete, hatch this egg (blank to disable).
        EGG_TO_HATCH            = "Aurora Egg",

        CLAIM_PRIZES                = true,
        BUY_GUM_AND_FLAVOR          = true,
        -- When true, bubble loop can teleport to the sell spot when full/stuck.
        TELEPORT_TO_SELL_WHEN_BUBBLE_FULL = false,
        -- Apply BGSI settings on execute via SetSetting remote.
        SET_SUGGESTED_BGSI_SETTINGS = true,
    },
    Webhooks = {
        STATUS_REPORT_INTERVAL     = 1800,
        MINIMUM_ODDS               = 1000000,
        PRIVATE_HATCH_WEBHOOK_URL  = "https://discord.com/api/webhooks/1438044429431734284/hSpU-Cxcl-6bDjZPE1SkOjIus-ZA9_dy6FhBrTOt5p7ExIaXa1LcyxONgqSReZ98BEPP",
        STATUS_WEBHOOK_URL         = "https://discord.com/api/webhooks/1452791225013768233/lgMR33LRA9oMvWbeGogCq_v6pQEvI0ZMFSu6F8AEqBWmYugnVd0TN4n3BV3c69t6CkRV",
        DISCORD_USER_ID            = "371115043627991040",

        HATCH_WEBHOOK_DETAILS = {
            "Rarity",
            "Eggs Per Minute",
            "Hatching Egg Hatches",
            "Hatch Speed",
            "Shiny Chances",
            "Mythic Chance",
            "Luck",
            "Secret Luck Multiplier",
        },

        STATUS_REPORT_WEBHOOK_DETAILS = {
            "Currency",
            "Team Multiplier",
            "Potion Duration",
            "Shrine Duration",
            -- (Optional) Add this line to show hatches/min:
            "Hatches Per Minute",
        },

        POTIONS_TO_DISPLAY = "ALL",

        RARITIES_TO_PING_FOR = {
            "Secret",
            "Infinity",
            "XL",
            "Shiny Mythic Secret",
            "Infinity XL",
            "Legendary",
        },

        RARITIES_TO_NOTIFY = {
            "Secret",
            "Infinity",
            -- Examples you can also do later:
            -- "Shiny Secret",
            -- "Mythic Infinity",
            -- "Infinity XL",
        },
    },
    Minigames = {
        ENABLE_MINIGAMES = true,

        -- Which minigames to push up to Insane (level 4).
        -- Accepts: { "Pet Match", "Robot Claw" } or { "All" }.
        MINIGAMES_TO_COMPLETE = { "All" },

        -- Which minigames to repeat once they're Insane.
        -- Accepts: { "Pet Match" } or { "All" }.
        MINIGAMES_TO_REPEAT = { "All" },
        ALLOW_TELEPORTING_AWAY = true,
        -- Global delay: don't do any minigames until Tickets >= this amount.
        -- This is separate from per-minigame ticket costs and does not replace them.
        MIN_TICKET_MINIGAME_AMT = 0,

        -- Focus a single minigame once Super Tickets reach a minimum.
        -- Set ENABLED = false to disable this behavior entirely.
        MINIGAME_TO_DO = {
            ENABLED    = false,
            MINIGAME   = "Robot Claw", -- "Pet Match", "Minecart Escape", "Robot Claw", "Hyper Darts"
            DIFFICULTY = "Insane",     -- "Easy", "Medium", "Hard", "Insane"
            LOOP_DELAY = 0.3,          -- delay between remote bursts
        },

        -- Start focusing only when Super Tickets >= this amount.
        -- Focus continues until Super Tickets hit 0.
        MINIMUM_SUPER_TICKET_REQ = 0,
    },
    Board = {
        AUTO_BOARD = true,

        -- Minigame pause policy while board automation runs.
        -- Set PAUSE_MINIGAMES_WHEN_BOARD = false to allow minigames during board.
        -- When PAUSE_MINIGAMES_WHEN_BOARD is false, you can enable
        -- PAUSE_MINIGAMES_WHEN_REFILLING_ELIXIR to pause only while Infinity is low.
        PAUSE_MINIGAMES_WHEN_BOARD = true,
        PAUSE_MINIGAMES_WHEN_REFILLING_ELIXIR = false,
        -- Allow focused minigame spam (MINIGAME_TO_DO) to run while doing board.
        DO_MINIGAME_TO_DO_ON_BOARD = false,

        INFINITY_ELIXIR_AMOUNTS = {
            Minimum = { Days = 2, Hours = 0, Minutes = 0 },
            Maximum = { Days = 600, Hours = 7, Minutes = 0 },
        },

        DICE_TYPE = "Dice",
        GOLDEN_DICE_DISTANCE = 4,

        STOP_BOARD_ON_NO_GDICE       = true,
        STOP_BOARD_ON_NO_NORMAL_DICE = true,

        TILES_TO_TARGET = {
            ["infinity"] = true,
        },

        OPEN_DICE_CHEST_WHILE_BOARD      = true,
        SUMMON_DICE_RIFT_WHEN_NO_GDICE   = true,
        SUMMON_REGARDLESS_OF_GDICE       = false,
        AUTO_RESPAWN_RIFTS               = true,

        TARGET_GDICE_AMOUNT              = 0,
        STOP_DICE_RIFT_WHEN_GDICE_AMOUNT = true,
    },
    Fishing = {
        -- LEVELING | QUEST | INDEX | ZONE
        FISHING_MODE = "LEVELING",

        -- Skip the World 3 fishing starter once Seven Seas is unlocked.
        I_DONT_ACTUALLY_WANNA_FISH_ANYTHING_AND_I_JUST_WANNA_UNLOCK_W3_LIKE_A_LOSER = false,

        -- Stops fishing once Fishing Level >= FISHING_LEVEL_TO_REACH (regardless of mode)
        STOP_WHEN_FISHING_LEVEL = true,
        FISHING_LEVEL_TO_REACH = 5,

        --== ENCHANTING ==--
        AUTO_ENCHANT_BEST_ROD = true,
        TARGET_ROD_ENCHANT = { "Power III", "Speedy III" }, -- or "Power III, Speedy III"

        --== BAIT ==--
        USE_BAIT = true,
        MAX_BAIT_RARITY = "Legendary", -- "Common" | "Unique" | "Epic" | "Legendary" | "Secret"
    },
    Index = {
        ENABLE_INDEX = false,

        -- Worlds to complete in order (accepted: "Overworld"/"The Overworld", "Minigame Paradise", "Seven Seas")
        INDEX_TO_COMPLETE = { "Overworld", "Minigame Paradise", "Seven Seas" },

        -- Index types to complete (accepted: "Normal", "Shiny")
        INDEX_TYPE_TO_COMPLETE = { "Normal", "Shiny" },
    },
    Mastery = {
        TARGET_MASTERY_LEVELS = {
            -- Any mastery pane name from `Shared.Data.Mastery.Upgrades` works here
            -- (including event panes like "Christmas", etc).
            Pets      = 15, -- example defaults; edit as desired
            Buffs     = 18,
            Shops     = 0,
            Minigames = 0,
            Rifts     = 0,
        },

        -- Not yet implemented in logic; placeholder for future gating.
        FINISH_MASTERY_BEFORE_NEXT_WORLD = false,

        -- Optional: control which mastery panes are focused first.
        -- Any panes not listed here will still be upgraded, but only
        -- after the listed ones (and in this order).
        FOCUS_ORDER = { "Pets", "Buffs", "Shops", "Minigames", "Rifts" },

        -- When true, the script will *only* work on the earliest
        -- mastery in FOCUS_ORDER that has not reached its target
        -- level yet (e.g. finish Pets before touching Shops/Buffs).
        -- When false, it will attempt upgrades in priority order but
        -- may buy across multiple panes in one session.
        DO_MASTERY_FOCUS = true,
    },
}
