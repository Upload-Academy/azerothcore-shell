

SET
@QuestEntry = {QuestEntry},
@NPCEntry = {NPCEntry};

DELETE FROM `creature_questender` WHERE (`quest` = @QuestEntry) AND (`id` IN (@NPCEntry));
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPCEntry, @QuestEntry);
