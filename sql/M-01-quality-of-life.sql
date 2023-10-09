
-- Gives the player a small, but decent, extra bag to work with.
DELETE FROM `playercreateinfo_item` WHERE itemid=16057 and amount=1;
INSERT INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`, `Note`) VALUES (0, 0, 16057, 1, "Explorer's Knapsack");
