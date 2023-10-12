
SET
@QuestEntry = {QuestEntry},
@NPCEntry = {NPCEntry};

DELETE FROM `creature_queststarter` WHERE (`quest` = @QuestEntry) AND (`id` IN (@NPCEntry));
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPCEntry, @QuestEntry);