-- Re-link tier loot tables whose parent rows were removed, so the T7 gloves slot and T9 heroic (Regalia) pieces drop again.
-- Sartharion 10/25 -> T7/T7.5 gloves (stock rows; the tables already hold the pieces after the token conversion).
DELETE FROM `creature_loot_template` WHERE (`Entry` = 28860 AND `Item` = 2) OR (`Entry` = 31311 AND `Item` = 5);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(28860, 2, 35087, 100, 0, 1, 0, 1, 1, 'Sartharion - (ReferenceTable) T7 gloves'),
(31311, 5, -34377, 100, 0, 1, 0, 2, 2, 'Sartharion (1) - (ReferenceTable) T7.5 gloves');

-- Argent Crusade Tribute Chests -> reference 34293 (stock: the three Regalia tokens), recreated with the pieces those
-- tokens buy (Regalia of the Grand Conqueror/Protector/Vanquisher = 47557/47558/47559) in one equal-chance group.
DELETE FROM `reference_loot_template` WHERE `Entry` = 34293;
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
SELECT 34293, `Item`, 0, 0, 0, 1, 1, 1, 1, `Comment` FROM `reference_loot_template` WHERE `Entry` IN (1947557, 1947558, 1947559);

DELETE FROM `gameobject_loot_template` WHERE `Entry` IN (27512, 27517, 27518, 195672) AND `Item` = 1;
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(27512, 1, 34293, 100, 0, 1, 0, 4, 4, 'Argent Crusade Tribute Chest - (ReferenceTable) T9 Regalia pieces'),
(27517, 1, 34293, 100, 0, 1, 0, 4, 4, 'Argent Crusade Tribute Chest - (ReferenceTable) T9 Regalia pieces'),
(27518, 1, 34293, 100, 0, 1, 0, 2, 2, 'Argent Crusade Tribute Chest - (ReferenceTable) T9 Regalia pieces'),
(195672, 1, 34293, 100, 0, 1, 0, 2, 2, 'Argent Crusade Tribute Chest - (ReferenceTable) T9 Regalia pieces');
