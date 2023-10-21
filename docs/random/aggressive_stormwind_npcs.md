# Agressive Stormwind NPCs

The following SQL will make the listed NPC IDs aggressive to the relevant factions:

```sql
-- Makle the NPCs Stormwind faction `11` (agressive) versus `12`
-- Make them all guards so they attack.
UPDATE `creature_template` SET 
    `unit_flags` = 0, 
    `faction` = 11, 
    `type_flags` = 4096, 
    `flags_extra` = 32768
WHERE entry IN (
    -- Update these to the IDs you're interested in
    927,74,514,797,913,54,2046,1985,6749,253,295,465,151,6778,3935,1430,241,66,240
);
```
