-- Vault of Archavon: the watchers' tier/PvP gear references were replaced by a fixed T8 chest group (6 classes only)
-- plus a guaranteed Legendary twin group, and the 25-man versions were left with emblems only. Restore the stock
-- gear references (tier gloves/legs for every class + PvP, and the 1% mount roll); emblem rows are left as they are.
DELETE FROM `creature_loot_template` WHERE `Entry` IN (31125, 33993, 38433) AND `GroupId` IN (2, 3) AND `Reference` = 0;

DELETE FROM `creature_loot_template` WHERE (`Entry` = 31125 AND `Item` IN (1, 2)) OR (`Entry` = 31722 AND `Item` IN (1, 2))
    OR (`Entry` = 33993 AND `Item` IN (1, 2)) OR (`Entry` = 33994 AND `Item` IN (1, 2))
    OR (`Entry` = 35013 AND `Item` IN (34204, 34210, 34211)) OR (`Entry` = 35360 AND `Item` IN (2, 34205, 34212, 34213))
    OR (`Entry` = 38433 AND `Item` IN (1, 2)) OR (`Entry` = 38462 AND `Item` IN (1, 2));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(31125, 1, 34209, 100, 0, 1, 0, 2, 2, 'Archavon the Stone Watcher - (ReferenceTable)'),
(31125, 2, 34203, 1, 0, 1, 0, 1, 1, 'Archavon the Stone Watcher - (ReferenceTable)'),
(31722, 1, 34216, 100, 0, 1, 0, 4, 4, 'Archavon the Stone Watcher (1) - (ReferenceTable)'),
(31722, 2, 34203, 1, 0, 1, 0, 1, 1, 'Archavon the Stone Watcher (1) - (ReferenceTable)'),
(33993, 1, 34208, 100, 0, 1, 0, 2, 2, 'Emalon the Storm Watcher - (ReferenceTable)'),
(33993, 2, 34203, 1, 0, 1, 0, 1, 1, 'Emalon the Storm Watcher - (ReferenceTable)'),
(33994, 1, 34215, 100, 0, 1, 0, 4, 4, 'Emalon the Storm Watcher (1) - (ReferenceTable)'),
(33994, 2, 34203, 1, 0, 1, 0, 1, 1, 'Emalon the Storm Watcher (1) - (ReferenceTable)'),
(35013, 34204, 34204, 100, 0, 1, 0, 1, 1, 'Koralon the Flame Watcher - (ReferenceTable)'),
(35013, 34210, 34210, 100, 0, 1, 0, 1, 1, 'Koralon the Flame Watcher - (ReferenceTable)'),
(35013, 34211, 34211, 100, 0, 1, 0, 1, 1, 'Koralon the Flame Watcher - (ReferenceTable)'),
(35360, 2, 34203, 1, 0, 1, 0, 1, 1, 'Koralon the Flame Watcher (1) - (ReferenceTable)'),
(35360, 34205, 34205, 100, 0, 1, 0, 2, 2, 'Koralon the Flame Watcher (1) - (ReferenceTable)'),
(35360, 34212, 34212, 100, 0, 1, 0, 2, 2, 'Koralon the Flame Watcher (1) - (ReferenceTable)'),
(35360, 34213, 34213, 100, 0, 1, 0, 2, 2, 'Koralon the Flame Watcher (1) - (ReferenceTable)'),
(38433, 1, 34206, 100, 0, 1, 0, 2, 2, 'Toravon the Ice Watcher - (ReferenceTable)'),
(38433, 2, 34203, 1, 0, 1, 0, 1, 1, 'Toravon the Ice Watcher - (ReferenceTable)'),
(38462, 1, 34207, 100, 0, 1, 0, 3, 3, 'Toravon the Ice Watcher (1) - (ReferenceTable)'),
(38462, 2, 34203, 1, 0, 1, 0, 1, 1, 'Toravon the Ice Watcher (1) - (ReferenceTable)');

-- Legendary twin rows left in custom chest loot tables that no chest uses any more (twins must only come from
-- mod-nightmare's runtime swap, never from loot rows).
DELETE FROM `gameobject_loot_template` WHERE `Item` BETWEEN 600000 AND 799999
    AND `Entry` NOT IN (SELECT `Data1` FROM `gameobject_template` WHERE `type` = 3);
