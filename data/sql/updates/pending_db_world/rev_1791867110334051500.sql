-- Raid boss chests: restore the stock lock (1634) and loot ids. With Data0 = 0 the client sends
-- CMSG_GAMEOBJ_USE, which GameObject::Use() ignores for chests, so the chest highlights but never opens;
-- the rewritten Data1 also pointed them away from their stock loot tables.
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 25193 WHERE `entry` = 193426; -- Four Horsemen Chest
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27069 WHERE `entry` = 194200; -- Rare Cache of Winter
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 26950 WHERE `entry` = 194201; -- Rare Cache of Winter
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27068 WHERE `entry` = 194307; -- Cache of Winter
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 26946 WHERE `entry` = 194308; -- Cache of Winter
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27073 WHERE `entry` = 194312; -- Cache of Storms
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27074 WHERE `entry` = 194313; -- Cache of Storms
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 26955 WHERE `entry` = 194314; -- Cache of Storms
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 26956 WHERE `entry` = 194315; -- Cache of Storms
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27078 WHERE `entry` = 194324; -- Freya's Gift
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27079 WHERE `entry` = 194325; -- Freya's Gift
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27080 WHERE `entry` = 194326; -- Freya's Gift
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27081 WHERE `entry` = 194327; -- Freya's Gift
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 26959 WHERE `entry` = 194328; -- Freya's Gift
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 26960 WHERE `entry` = 194329; -- Freya's Gift
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 26961 WHERE `entry` = 194330; -- Freya's Gift
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 26962 WHERE `entry` = 194331; -- Freya's Gift
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27085 WHERE `entry` = 194789; -- Cache of Innovation
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27030 WHERE `entry` = 194821; -- Gift of the Observer
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 26974 WHERE `entry` = 194822; -- Gift of the Observer
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 26963 WHERE `entry` = 194956; -- Cache of Innovation
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27086 WHERE `entry` = 194957; -- Cache of Innovation
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 26967 WHERE `entry` = 194958; -- Cache of Innovation
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27061 WHERE `entry` = 195046; -- Cache of Living Stone
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 26929 WHERE `entry` = 195047; -- Cache of Living Stone
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27327 WHERE `entry` = 195323; -- Confessor's Cache
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27417 WHERE `entry` = 195324; -- Confessor's Cache
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27325 WHERE `entry` = 195374; -- Eadric's Cache
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27416 WHERE `entry` = 195375; -- Eadric's Cache
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27498 WHERE `entry` = 195631; -- Champions' Cache
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27503 WHERE `entry` = 195632; -- Champions' Cache
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27335 WHERE `entry` = 195633; -- Champions' Cache
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27356 WHERE `entry` = 195635; -- Champions' Cache
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27518 WHERE `entry` = 195671; -- Argent Crusade Tribute Chest
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 195672 WHERE `entry` = 195672; -- Argent Crusade Tribute Chest
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27321 WHERE `entry` = 195709; -- Champion's Cache
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27414 WHERE `entry` = 195710; -- Champion's Cache
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 28057 WHERE `entry` = 201872; -- Gunship Armory
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 28045 WHERE `entry` = 201873; -- Gunship Armory
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 28072 WHERE `entry` = 201874; -- Gunship Armory
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 28090 WHERE `entry` = 201875; -- Gunship Armory
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 28057 WHERE `entry` = 202177; -- Gunship Armory
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 28045 WHERE `entry` = 202178; -- Gunship Armory
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 28090 WHERE `entry` = 202179; -- Gunship Armory
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 28072 WHERE `entry` = 202180; -- Gunship Armory
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 28058 WHERE `entry` = 202238; -- Deathbringer's Cache
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 28046 WHERE `entry` = 202239; -- Deathbringer's Cache
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 28074 WHERE `entry` = 202240; -- Deathbringer's Cache
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 28088 WHERE `entry` = 202241; -- Deathbringer's Cache
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 25192 WHERE `entry` = 181366; -- Four Horsemen Chest
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 195665 WHERE `entry` = 195665; -- Argent Crusade Tribute Chest
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 195666 WHERE `entry` = 195666; -- Argent Crusade Tribute Chest
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 195667 WHERE `entry` = 195667; -- Argent Crusade Tribute Chest
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 195668 WHERE `entry` = 195668; -- Argent Crusade Tribute Chest
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27512 WHERE `entry` = 195669; -- Argent Crusade Tribute Chest
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 27517 WHERE `entry` = 195670; -- Argent Crusade Tribute Chest
UPDATE `gameobject_template` SET `Data0` = 1634, `Data1` = 361000 WHERE `entry` = 361000; -- Four Horsemen Chest (Naxx40, mod-individual-progression)

-- Ulduar boss chests: drop group loot rules so anyone in the raid can open and loot them directly.
UPDATE `gameobject_template` SET `Data15` = 0 WHERE `entry` IN (
    195046, 195047, 194307, 194308, 194200, 194201, 194312, 194313, 194314, 194315, 194324, 194325,
    194326, 194327, 194328, 194329, 194330, 194331, 194789, 194956, 194957, 194958, 194821, 194822);

-- Cache of Living Stone only exists once Kologarn dies: spawn it selectable and neutral like the other
-- Ulduar caches instead of relying on the script clearing NOT_SELECTABLE after the create packet is sent.
UPDATE `gameobject_template_addon` SET `faction` = 0, `flags` = 0 WHERE `entry` IN (195046, 195047);
