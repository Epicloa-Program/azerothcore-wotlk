-- ICC: drop Tier 10 pieces directly instead of Marks of Sanctification, so mod-nightmare can swap them for their
-- Legendary/Nightmare twins (it only swaps epic weapons/armor, never tokens).
--   Reference 34278 (normal Mark, used by 10H/25N/25H bosses and Deathbringer's Cache) -> one random Sanctified (264) piece
--   Reference 34279 (heroic Mark, 25H only)                                           -> one random Heroic Sanctified (277) piece
-- Item sets 883-901 are the Sanctified T10 sets; ItemLevel 264/277 selects the normal/heroic Mark tier.

-- Twins for every T10 264/277 piece, using mod-nightmare's formula:
--   Legendary +600000: Quality 5, ItemLevel +7, stats/armor/resistances/block x1.25
--   Nightmare +700000: Quality 6, ItemLevel +13, stats/armor/resistances/block x1.5
-- Item.dbc rows for these ids already ship in the client/server patch. INSERT IGNORE keeps any twin that already exists.
DROP TEMPORARY TABLE IF EXISTS `tmp_t10_twin`;
CREATE TEMPORARY TABLE `tmp_t10_twin` ENGINE = InnoDB AS SELECT * FROM `item_template`
WHERE `itemset` BETWEEN 883 AND 901 AND `ItemLevel` IN (264, 277) AND `entry` < 600000;
UPDATE `tmp_t10_twin` SET `entry` = `entry` + 600000, `name` = CONCAT('Legendary ', `name`), `Quality` = 5, `ItemLevel` = `ItemLevel` + 7,
    `stat_value1` = ROUND(`stat_value1` * 1.25), `stat_value2` = ROUND(`stat_value2` * 1.25), `stat_value3` = ROUND(`stat_value3` * 1.25),
    `stat_value4` = ROUND(`stat_value4` * 1.25), `stat_value5` = ROUND(`stat_value5` * 1.25), `stat_value6` = ROUND(`stat_value6` * 1.25),
    `stat_value7` = ROUND(`stat_value7` * 1.25), `stat_value8` = ROUND(`stat_value8` * 1.25), `stat_value9` = ROUND(`stat_value9` * 1.25),
    `stat_value10` = ROUND(`stat_value10` * 1.25), `armor` = ROUND(`armor` * 1.25), `block` = ROUND(`block` * 1.25),
    `holy_res` = ROUND(`holy_res` * 1.25), `fire_res` = ROUND(`fire_res` * 1.25), `nature_res` = ROUND(`nature_res` * 1.25),
    `frost_res` = ROUND(`frost_res` * 1.25), `shadow_res` = ROUND(`shadow_res` * 1.25), `arcane_res` = ROUND(`arcane_res` * 1.25);
INSERT IGNORE INTO `item_template` SELECT * FROM `tmp_t10_twin`;
DROP TEMPORARY TABLE `tmp_t10_twin`;

CREATE TEMPORARY TABLE `tmp_t10_twin` ENGINE = InnoDB AS SELECT * FROM `item_template`
WHERE `itemset` BETWEEN 883 AND 901 AND `ItemLevel` IN (264, 277) AND `entry` < 600000;
UPDATE `tmp_t10_twin` SET `entry` = `entry` + 700000, `name` = CONCAT('Nightmare ', `name`), `Quality` = 6, `ItemLevel` = `ItemLevel` + 13,
    `stat_value1` = ROUND(`stat_value1` * 1.5), `stat_value2` = ROUND(`stat_value2` * 1.5), `stat_value3` = ROUND(`stat_value3` * 1.5),
    `stat_value4` = ROUND(`stat_value4` * 1.5), `stat_value5` = ROUND(`stat_value5` * 1.5), `stat_value6` = ROUND(`stat_value6` * 1.5),
    `stat_value7` = ROUND(`stat_value7` * 1.5), `stat_value8` = ROUND(`stat_value8` * 1.5), `stat_value9` = ROUND(`stat_value9` * 1.5),
    `stat_value10` = ROUND(`stat_value10` * 1.5), `armor` = ROUND(`armor` * 1.5), `block` = ROUND(`block` * 1.5),
    `holy_res` = ROUND(`holy_res` * 1.5), `fire_res` = ROUND(`fire_res` * 1.5), `nature_res` = ROUND(`nature_res` * 1.5),
    `frost_res` = ROUND(`frost_res` * 1.5), `shadow_res` = ROUND(`shadow_res` * 1.5), `arcane_res` = ROUND(`arcane_res` * 1.5);
INSERT IGNORE INTO `item_template` SELECT * FROM `tmp_t10_twin`;
DROP TEMPORARY TABLE `tmp_t10_twin`;

-- Replace the Marks with every T10 piece of the matching tier in one equal-chance group (one piece per roll;
-- the parent rows' MinCount/MaxCount still decide how many pieces each boss drops).
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34278, 34279);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
SELECT 34278, `entry`, 0, 0, 0, 1, 1, 1, 1, `name` FROM `item_template`
WHERE `itemset` BETWEEN 883 AND 901 AND `ItemLevel` = 264 AND `entry` < 600000;
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
SELECT 34279, `entry`, 0, 0, 0, 1, 1, 1, 1, `name` FROM `item_template`
WHERE `itemset` BETWEEN 883 AND 901 AND `ItemLevel` = 277 AND `entry` < 600000;
