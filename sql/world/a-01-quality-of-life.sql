
-- Gives the player a small, but decent, extra bag to work with.
DELETE FROM `playercreateinfo_item` WHERE itemid=16057 and amount=1;
INSERT INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`, `Note`) VALUES (0, 0, 16057, 1, "Explorer's Knapsack");

-- Update the "Chocolate Celebration Cake" to allow level 10+ to use it
UPDATE `item_template` SET `RequiredLevel` = 10 WHERE `entry` = 42436;
UPDATE `item_template` SET `RequiredLevel` = 10 WHERE `entry` = 42433;