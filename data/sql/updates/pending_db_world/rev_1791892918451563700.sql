-- "True legendary" drops (quest-reward/off-table epics added to raid bosses): loot rows listed the Nightmare twin
-- (base + 1700000) itself, so every mode dropped the Nightmare version. Drop the base item instead; mod-nightmare's
-- runtime swap turns it into the +1700000 twin only in a Nightmare-latched instance.
-- Where the base item already drops from the same table (Ragnaros: Benediction/Anathema) the twin row is just removed.
DELETE l FROM `creature_loot_template` l
JOIN `creature_loot_template` b ON b.`Entry` = l.`Entry` AND b.`Item` = l.`Item` - 1700000
WHERE l.`Item` BETWEEN 1700000 AND 1799999;
DELETE l FROM `gameobject_loot_template` l
JOIN `gameobject_loot_template` b ON b.`Entry` = l.`Entry` AND b.`Item` = l.`Item` - 1700000
WHERE l.`Item` BETWEEN 1700000 AND 1799999;

UPDATE `creature_loot_template` l JOIN `item_template` i ON i.`entry` = l.`Item` - 1700000
SET l.`Item` = i.`entry`, l.`Comment` = LEFT(i.`name`, 255)
WHERE l.`Item` BETWEEN 1700000 AND 1799999;
UPDATE `gameobject_loot_template` l JOIN `item_template` i ON i.`entry` = l.`Item` - 1700000
SET l.`Item` = i.`entry`, l.`Comment` = LEFT(i.`name`, 255)
WHERE l.`Item` BETWEEN 1700000 AND 1799999;
