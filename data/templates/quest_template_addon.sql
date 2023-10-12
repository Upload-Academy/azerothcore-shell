
SET @Entry := {Entry}, @SpecialFlags := {SpecialFlags};
DELETE FROM `quest_template_addon` WHERE (`ID` = @Entry);
INSERT INTO `quest_template_addon` (`ID`, `SpecialFlags`) VALUES (@Entry, @SpecialFlags);
