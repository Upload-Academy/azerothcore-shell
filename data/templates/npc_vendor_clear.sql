-- 
-- Clear NPC vendor entries.
-- npc_vendor_clear.sql
-- 

SET @Entry = {Entry};

DELETE FROM `npc_vendor` WHERE (`entry` = @Entry);