
-- 04 Better Herb Node Spawn NUMBERS (not rates!)

-- Structure
-- gameobject_template.entry -> gameobject.id -> gameobject.guid -> pool_gameobject.guid;

-- For debugging...
-- SELECT entry,name FROM gameobject_template WHERE entry IN (1617,1618,1619,1620,1621,1622,1624,2041,2042,2044,2045,2046,2866,3724,3725,3726,3727,3729,3730,6584,6587,6588,6636,6637,6639,6641,0164,0168,1270,1275,1277,1279,1282,3043,3044,3046,9973);
-- +-------+--------------------------+
-- | entry | name                     |
-- +-------+--------------------------+
-- |  1617 | Silverleaf               |
-- |  1618 | Peacebloom               |
-- |  1619 | Earthroot                |
-- |  1620 | Mageroyal                |
-- |  1621 | Briarthorn               |
-- |  1622 | Bruiseweed               |
-- |  1624 | Kingsblood               |
-- |  2041 | Liferoot                 |
-- |  2042 | Fadeleaf                 |
-- |  2044 | Wintersbite              |
-- |  2045 | Stranglekelp             |
-- |  2046 | Goldthorn                |
-- |  2866 | Firebloom                |
-- |  3724 | Peacebloom               |
-- |  3725 | Silverleaf               |
-- |  3726 | Earthroot                |
-- |  3727 | Mageroyal                |
-- |  3729 | Briarthorn               |
-- |  3730 | Bruiseweed               |
-- +-------+--------------------------+

-- Current values as of 2023-09-24:
-- +-------+-----------+-----------------------------------------------------------+
-- | entry | max_limit | description                                               |
-- +-------+-----------+-----------------------------------------------------------+
-- |   951 |        80 | MASTER Herbs Westfall zone 40                             |
-- |   961 |        85 | MASTER Herbs Darkshore zone 148                           |
-- |   801 |        60 | Master Zone 17 Area 17 (60 out of 305 nodes               |
-- |   800 |        18 | Master Zone 17 Leftover Areas (18 out of 88 nodes)        |
-- |   809 |        10 | Master Zone 17 Area 1156 (18 out of 92 nodes              |
-- |   802 |         8 | Master Zone 17 Area 383 (8 out of 41 nodes                |
-- |   956 |        60 | MASTER Herbs Silverpine Forest zone 130                   |
-- |   952 |        55 | MASTER Herbs Loch Modan zone 38                           |
-- |   804 |         3 | Master Zone 17 Area 386 (3 out of 15 nodes                |
-- |   811 |        10 | Master Zone 17 Area 1699 (4 out of 21 nodes               |
-- |   805 |        10 | Master Zone 17 Area 387 (10 out of 54 nodes               |
-- |   806 |         4 | Master Zone 17 Area 388 (4 out of 21 nodes                |
-- |   718 |        25 | Silverleaf in Eversong Woods                              |
-- |   734 |        22 | Silverleaf in Ghostlands                                  |
-- |   729 |        23 | Silverleaf in Azuremyst Isle                              |
-- |   732 |         2 | Silverleaf in Silvermyst Isle                             |
-- |   717 |        25 | Peacebloom in Eversong Woods                              |
-- |   728 |        23 | Peacebloom in Azuremyst Isle                              |
-- |   731 |         2 | Peacebloom in Silvermyst Isle                             |
-- |   950 |        55 | MASTER Herbs Redridge Mountains zone 44                   |
-- |   812 |        10 | Master Zone 17 Area 1700 (6 out of 28 nodes               |
-- |   807 |         8 | Master Zone 17 Area 390 (8 out of 39 nodes                |
-- |   808 |        17 | Master Zone 17 Area 391 (17 out of 86 nodes               |
-- |   813 |        10 | Master Zone 17 Area 1701 (8 out of 39 nodes               |
-- |   719 |        15 | Earthroot in Eversong Woods                               |
-- |   730 |        12 | Earthroot in Azuremyst Isle                               |
-- |   733 |         3 | Earthroot in Silvermyst Isle                              |
-- |   810 |        10 | Master Zone 17 Area 1698 (4 out of 20 nodes               |
-- |   803 |         4 | Master Zone 17 Area 385 (4 out of 19 nodes                |
-- |   995 |        80 | MASTER Herbs Duskwood zone 10                             |
-- |   949 |        75 | MASTER Herbs Stonetalon Mountains zone 406                |
-- |   994 |        90 | MASTER Herbs Wetlands zone 11                             |
-- |   960 |        95 | MASTER Herbs Ashenvale zone 331                           |
-- |   958 |        70 | MASTER Herbs Hillsbrad Foothills zone 267                 |
-- |   962 |        35 | MASTER Herbs Thousand Needles zone 400                    |
-- |   825 |         5 | Master Herbs Zone 405 Leftover Areas (5 out of 27 nodes)  |
-- |   826 |         5 | Master Herbs Zone 405 Leftover Areas (5 out of 22 nodes)  |
-- |   959 |        85 | MASTER Herbs Arathi Highlands zone 45                     |
-- |   821 |        10 | Master Herbs Zone 405 Leftover Areas (10 out of 41 nodes) |
-- |   564 |         8 | Bruiseweed in Alterac Mountains                           |
-- |   822 |         8 | Master Herbs Zone 405 Leftover Areas (8 out of 40 nodes)  |
-- |   565 |         2 | Kingsblood in Alterac Mountains                           |
-- |   996 |        85 | MASTER Herbs Swamp of Sorrows zone 8                      |
-- |   988 |       100 | MASTER Herbs Stranglethorn Vale zone 33                   |
-- |   998 |        45 | MASTER Herbs Badlands zone 3                              |
-- |   824 |         5 | Master Herbs Zone 405 Leftover Areas (5 out of 20 nodes)  |
-- |   947 |        15 | MASTER Herbs Searing Gorge zone 51                        |
-- |   571 |         8 | Liferoot in Alterac Mountains                             |
-- |   964 |        65 | MASTER Herbs Feralas zone 357                             |
-- |   965 |        90 | MASTER Herbs Hinterlands zone 47                          |
-- |  8253 |         1 | Netherstorm - Eco-Dome Midrealm - Liferoot                |
-- |  8249 |         1 | Netherstorm - Eco-Dome Sutheron - Liferoot                |
-- |   572 |        11 | Fadeleaf in Alterac Mountains                             |
-- |   570 |         9 | Wintersbite in Alterac Mountains                          |
-- |   573 |         1 | Stranglekelp in Alterac Mountains                         |
-- |   990 |        85 | MASTER Herbs Azshara zone 16                              |
-- |   566 |        12 | Goldthorn in Alterac Mountains                            |
-- |   991 |        25 | MASTER Herbs Dustwallow Marsh zone 15                     |
-- |   418 |         4 | Teldrassil Peacebloom Pool 3 of 5--4 spawns active        |
-- |   420 |         7 | Teldrassil Peacebloom Pool 5 of 5--7 spawns active        |
-- |   416 |         9 | Teldrassil Peacebloom Pool 1 of 5--9 spawns active        |
-- |   419 |         6 | Teldrassil Peacebloom Pool 4 of 5--6 spawns active        |
-- |   417 |         4 | Teldrassil Peacebloom Pool 2 of 5--4 spawns active        |
-- |   423 |         2 | Teldrassil Mageroyal Pool 3 of 3--2 spawns active         |
-- |   421 |         2 | Teldrassil Mageroyal Pool 1 of 3--2 spawns active         |
-- |   422 |         2 | Teldrassil Mageroyal Pool 2 of 3--2 spawns active         |
-- |   428 |         7 | Teldrassil Silverleaf Pool 5 of 5--7 spawns active        |
-- |   426 |         5 | Teldrassil Silverleaf Pool 3 of 5--5 spawns active        |
-- |   424 |        10 | Teldrassil Silverleaf Pool 1 of 5--10 spawns active       |
-- |   427 |         6 | Teldrassil Silverleaf Pool 4 of 5--6 spawns active        |
-- |   425 |         8 | Teldrassil Silverleaf Pool 2 of 5--8 spawns active        |
-- |   431 |         3 | Teldrassil Earthroot Pool 3 of 4--3 spawns active         |
-- |   429 |         9 | Teldrassil Earthroot Pool 1 of 4--9 spawns active         |
-- |   432 |         4 | Teldrassil Earthroot Pool 4 of 4--4 spawns active         |
-- |   430 |         4 | Teldrassil Earthroot Pool 2 of 4--4 spawns active         |
-- |   997 |        30 | MASTER Herbs Blasted Lands zone 4                         |
-- |   963 |        35 | MASTER Herbs Tanaris zone 440                             |
-- |   736 |        11 | Earthroot in Ghostlands                                   |
-- |   737 |         8 | Mageroyal in Ghostlands                                   |
-- |   738 |         8 | Briarthorn in Ghostlands                                  |
-- |   735 |        14 | Peacebloom in Ghostlands                                  |
-- |   740 |         6 | Bruiseweed in Ghostlands                                  |
-- |   739 |         6 | Stranglekelp in Ghostlands                                |
-- |   500 |        25 | Silverleaf in Durotar                                     |
-- |   491 |        25 | Silverleaf in Tirisfal                                    |
-- |   504 |        25 | Silverleaf in Mulgore                                     |
-- |   494 |        75 | Silverleaf in Elwynn Forest                               |
-- |   497 |        25 | Silverleaf in Dun Morogh                                  |
-- |   489 |        15 | Earthroot in Tirisfal                                     |
-- |   495 |        15 | Earthroot in Dun Morogh                                   |
-- |   496 |        25 | Peacebloom in Dun Morogh                                  |
-- |   498 |        25 | Peacebloom in Durotar                                     |
-- |   493 |        25 | Peacebloom in Elwynn Forest                               |
-- |   503 |        25 | Peacebloom in Mulgore                                     |
-- |   490 |        25 | Peacebloom in Tirisfal                                    |
-- |   502 |        15 | Earthroot in Mulgore                                      |
-- |   492 |        15 | Earthroot in Elwynn Forest                                |
-- |   499 |        15 | Earthroot in Durotar                                      |
-- |   501 |         4 | Mageroyal in Durotar                                      |
-- |   745 |         9 | Briarthorn in Bloodmyst Isle                              |
-- |   742 |        16 | Peacebloom in Bloodmyst Isle                              |
-- |   741 |        22 | Silverleaf in Bloodmyst Isle                              |
-- |   747 |         8 | Stranglekelp in Bloodmyst Isle                            |
-- |   746 |         5 | Bruiseweed in Bloodmyst Isle                              |
-- |   823 |         4 | Master Herbs Zone 405 Leftover Areas (4 out of 18 nodes)  |
-- |   743 |        12 | Earthroot in Bloodmyst Isle                               |
-- |   744 |         8 | Mageroyal in Bloodmyst Isle                               |
-- |   748 |         2 | Peacebloom in Wyrmscar Isle                               |
-- |   750 |         1 | Mageroyal in Wyrmscar Isle                                |
-- |   749 |         2 | Silverleaf in Wyrmscar Isle                               |
-- |   751 |         1 | Bruiseweed in Wyrmscar Isle                               |
-- +-------+-----------+-----------------------------------------------------------+
-- 111 rows in set (0.110 sec)

-- Setting them to defaults, so this entire SQL file becomes idempotent
UPDATE acore_world.pool_template SET max_limit= 80 WHERE entry=951;
UPDATE acore_world.pool_template SET max_limit= 85 WHERE entry=961;
UPDATE acore_world.pool_template SET max_limit= 60 WHERE entry=801;
UPDATE acore_world.pool_template SET max_limit= 18 WHERE entry=800;
UPDATE acore_world.pool_template SET max_limit= 10 WHERE entry=809;
UPDATE acore_world.pool_template SET max_limit=  8 WHERE entry=802;
UPDATE acore_world.pool_template SET max_limit= 60 WHERE entry=956;
UPDATE acore_world.pool_template SET max_limit= 55 WHERE entry=952;
UPDATE acore_world.pool_template SET max_limit=  3 WHERE entry=804;
UPDATE acore_world.pool_template SET max_limit= 10 WHERE entry=811;
UPDATE acore_world.pool_template SET max_limit= 10 WHERE entry=805;
UPDATE acore_world.pool_template SET max_limit=  4 WHERE entry=806;
UPDATE acore_world.pool_template SET max_limit= 25 WHERE entry=718;
UPDATE acore_world.pool_template SET max_limit= 22 WHERE entry=734;
UPDATE acore_world.pool_template SET max_limit= 23 WHERE entry=729;
UPDATE acore_world.pool_template SET max_limit=  2 WHERE entry=732;
UPDATE acore_world.pool_template SET max_limit= 25 WHERE entry=717;
UPDATE acore_world.pool_template SET max_limit= 23 WHERE entry=728;
UPDATE acore_world.pool_template SET max_limit=  2 WHERE entry=731;
UPDATE acore_world.pool_template SET max_limit= 55 WHERE entry=950;
UPDATE acore_world.pool_template SET max_limit= 10 WHERE entry=812;
UPDATE acore_world.pool_template SET max_limit=  8 WHERE entry=807;
UPDATE acore_world.pool_template SET max_limit= 17 WHERE entry=808;
UPDATE acore_world.pool_template SET max_limit= 10 WHERE entry=813;
UPDATE acore_world.pool_template SET max_limit= 15 WHERE entry=719;
UPDATE acore_world.pool_template SET max_limit= 12 WHERE entry=730;
UPDATE acore_world.pool_template SET max_limit=  3 WHERE entry=733;
UPDATE acore_world.pool_template SET max_limit= 10 WHERE entry=810;
UPDATE acore_world.pool_template SET max_limit=  4 WHERE entry=803;
UPDATE acore_world.pool_template SET max_limit= 80 WHERE entry=995;
UPDATE acore_world.pool_template SET max_limit= 75 WHERE entry=949;
UPDATE acore_world.pool_template SET max_limit= 90 WHERE entry=994;
UPDATE acore_world.pool_template SET max_limit= 95 WHERE entry=960;
UPDATE acore_world.pool_template SET max_limit= 70 WHERE entry=958;
UPDATE acore_world.pool_template SET max_limit= 35 WHERE entry=962;
UPDATE acore_world.pool_template SET max_limit=  5 WHERE entry=825;
UPDATE acore_world.pool_template SET max_limit=  5 WHERE entry=826;
UPDATE acore_world.pool_template SET max_limit= 85 WHERE entry=959;
UPDATE acore_world.pool_template SET max_limit= 10 WHERE entry=821;
UPDATE acore_world.pool_template SET max_limit=  8 WHERE entry=564;
UPDATE acore_world.pool_template SET max_limit=  8 WHERE entry=822;
UPDATE acore_world.pool_template SET max_limit=  2 WHERE entry=565;
UPDATE acore_world.pool_template SET max_limit= 85 WHERE entry=996;
UPDATE acore_world.pool_template SET max_limit=100 WHERE entry=988;
UPDATE acore_world.pool_template SET max_limit= 45 WHERE entry=998;
UPDATE acore_world.pool_template SET max_limit=  5 WHERE entry=824;
UPDATE acore_world.pool_template SET max_limit= 15 WHERE entry=947;
UPDATE acore_world.pool_template SET max_limit=  8 WHERE entry=571;
UPDATE acore_world.pool_template SET max_limit= 65 WHERE entry=964;
UPDATE acore_world.pool_template SET max_limit= 90 WHERE entry=965;
UPDATE acore_world.pool_template SET max_limit= 1 WHERE entry=8253;
UPDATE acore_world.pool_template SET max_limit= 1 WHERE entry=8249;
UPDATE acore_world.pool_template SET max_limit= 11 WHERE entry=572;
UPDATE acore_world.pool_template SET max_limit=  9 WHERE entry=570;
UPDATE acore_world.pool_template SET max_limit=  1 WHERE entry=573;
UPDATE acore_world.pool_template SET max_limit= 85 WHERE entry=990;
UPDATE acore_world.pool_template SET max_limit= 12 WHERE entry=566;
UPDATE acore_world.pool_template SET max_limit= 25 WHERE entry=991;
UPDATE acore_world.pool_template SET max_limit=  4 WHERE entry=418;
UPDATE acore_world.pool_template SET max_limit=  7 WHERE entry=420;
UPDATE acore_world.pool_template SET max_limit=  9 WHERE entry=416;
UPDATE acore_world.pool_template SET max_limit=  6 WHERE entry=419;
UPDATE acore_world.pool_template SET max_limit=  4 WHERE entry=417;
UPDATE acore_world.pool_template SET max_limit=  2 WHERE entry=423;
UPDATE acore_world.pool_template SET max_limit=  2 WHERE entry=421;
UPDATE acore_world.pool_template SET max_limit=  2 WHERE entry=422;
UPDATE acore_world.pool_template SET max_limit=  7 WHERE entry=428;
UPDATE acore_world.pool_template SET max_limit=  5 WHERE entry=426;
UPDATE acore_world.pool_template SET max_limit= 10 WHERE entry=424;
UPDATE acore_world.pool_template SET max_limit=  6 WHERE entry=427;
UPDATE acore_world.pool_template SET max_limit=  8 WHERE entry=425;
UPDATE acore_world.pool_template SET max_limit=  3 WHERE entry=431;
UPDATE acore_world.pool_template SET max_limit=  9 WHERE entry=429;
UPDATE acore_world.pool_template SET max_limit=  4 WHERE entry=432;
UPDATE acore_world.pool_template SET max_limit=  4 WHERE entry=430;
UPDATE acore_world.pool_template SET max_limit= 30 WHERE entry=997;
UPDATE acore_world.pool_template SET max_limit= 35 WHERE entry=963;
UPDATE acore_world.pool_template SET max_limit= 11 WHERE entry=736;
UPDATE acore_world.pool_template SET max_limit=  8 WHERE entry=737;
UPDATE acore_world.pool_template SET max_limit=  8 WHERE entry=738;
UPDATE acore_world.pool_template SET max_limit= 14 WHERE entry=735;
UPDATE acore_world.pool_template SET max_limit=  6 WHERE entry=740;
UPDATE acore_world.pool_template SET max_limit=  6 WHERE entry=739;
UPDATE acore_world.pool_template SET max_limit= 25 WHERE entry=500;
UPDATE acore_world.pool_template SET max_limit= 25 WHERE entry=491;
UPDATE acore_world.pool_template SET max_limit= 25 WHERE entry=504;
UPDATE acore_world.pool_template SET max_limit= 75 WHERE entry=494;
UPDATE acore_world.pool_template SET max_limit= 25 WHERE entry=497;
UPDATE acore_world.pool_template SET max_limit= 15 WHERE entry=489;
UPDATE acore_world.pool_template SET max_limit= 15 WHERE entry=495;
UPDATE acore_world.pool_template SET max_limit= 25 WHERE entry=496;
UPDATE acore_world.pool_template SET max_limit= 25 WHERE entry=498;
UPDATE acore_world.pool_template SET max_limit= 25 WHERE entry=493;
UPDATE acore_world.pool_template SET max_limit= 25 WHERE entry=503;
UPDATE acore_world.pool_template SET max_limit= 25 WHERE entry=490;
UPDATE acore_world.pool_template SET max_limit= 15 WHERE entry=502;
UPDATE acore_world.pool_template SET max_limit= 15 WHERE entry=492;
UPDATE acore_world.pool_template SET max_limit= 15 WHERE entry=499;
UPDATE acore_world.pool_template SET max_limit=  4 WHERE entry=501;
UPDATE acore_world.pool_template SET max_limit=  9 WHERE entry=745;
UPDATE acore_world.pool_template SET max_limit= 16 WHERE entry=742;
UPDATE acore_world.pool_template SET max_limit= 22 WHERE entry=741;
UPDATE acore_world.pool_template SET max_limit=  8 WHERE entry=747;
UPDATE acore_world.pool_template SET max_limit=  5 WHERE entry=746;
UPDATE acore_world.pool_template SET max_limit=  4 WHERE entry=823;
UPDATE acore_world.pool_template SET max_limit= 12 WHERE entry=743;
UPDATE acore_world.pool_template SET max_limit=  8 WHERE entry=744;
UPDATE acore_world.pool_template SET max_limit=  2 WHERE entry=748;
UPDATE acore_world.pool_template SET max_limit=  1 WHERE entry=750;
UPDATE acore_world.pool_template SET max_limit=  2 WHERE entry=749;
UPDATE acore_world.pool_template SET max_limit=  1 WHERE entry=751;

SET @HerbMaxLimitMultiplier = 6;

SET -- Herb IDs

-- SELECT entry, name FROM gameobject_template WHERE name like '%Silverleaf%';
@Silverleaf = 1617,
@Silverleaf2 = 3725,

-- SELECT entry, name FROM gameobject_template WHERE name like '%Peacebloom%';
@Peacebloom = 1618,
@Peacebloom2 = 3724,

-- SELECT entry, name FROM gameobject_template WHERE name like '%Earthroot%';
@Earthroot = 1619,
@Earthroot2 = 3726,

-- SELECT entry, name FROM gameobject_template WHERE name like '%Mageroyal%';
@Mageroyal = 1620,
@Mageroyal2 = 3727,

-- SELECT entry, name FROM gameobject_template WHERE name like '%Briarthorn%';
@Briarthorn = 1621,
@Briarthorn2 = 3729,

-- SELECT entry, name FROM gameobject_template WHERE name like '%Bruiseweed%';
@Bruiseweed = 1622,
@Bruiseweed2 = 3730,

-- SELECT entry, name FROM gameobject_template WHERE name like '%Kingsblood%';
@Kingsblood = 1624,

-- SELECT entry, name FROM gameobject_template WHERE name like '%Liferoot%';
@Liferoot = 2041,

-- SELECT entry, name FROM gameobject_template WHERE name like '%Fadeleaf%';
@Fadeleaf = 2042,

-- SELECT entry, name FROM gameobject_template WHERE name like '%Wintersbite%';
@Wintersbite = 2044,

-- SELECT entry, name FROM gameobject_template WHERE name like '%Stranglekelp%';
@Stranglekelp = 2045,

-- SELECT entry, name FROM gameobject_template WHERE name like '%Goldthorn%';
@Goldthorn = 2046,

-- SELECT entry, name FROM gameobject_template WHERE name like '%Firebloom%';
@Firebloom = 2866;

-- Lookup current values:
-- SELECT DISTINCT pt.* FROM pool_template pt
--     INNER JOIN gameobject g ON g.id IN (
--         @Silverleaf,
--         @Silverleaf2,
--         @Peacebloom,
--         @Peacebloom2,
--         @Earthroot,
--         @Earthroot2,
--         @Mageroyal,
--         @Mageroyal2,
--         @Briarthorn,
--         @Briarthorn2,
--         @Bruiseweed,
--         @Bruiseweed2,
--         @Kingsblood,
--         @Liferoot,
--         @Fadeleaf,
--         @Wintersbite,
--         @Stranglekelp,
--         @Goldthorn,
--         @Firebloom
--     )
--     INNER JOIN pool_gameobject pgo ON pgo.guid=g.guid
-- WHERE pt.entry=pgo.pool_entry;

UPDATE acore_world.pool_template
INNER JOIN (SELECT pt.* FROM acore_world.pool_template pt
    INNER JOIN acore_world.gameobject g ON g.id IN (
        @Silverleaf,
        @Silverleaf2,
        @Peacebloom,
        @Peacebloom2,
        @Earthroot,
        @Earthroot2,
        @Mageroyal,
        @Mageroyal2,
        @Briarthorn,
        @Briarthorn2,
        @Bruiseweed,
        @Bruiseweed2,
        @Kingsblood,
        @Liferoot,
        @Fadeleaf,
        @Wintersbite,
        @Stranglekelp,
        @Goldthorn,
        @Firebloom
    )
    INNER JOIN acore_world.pool_gameobject pgo ON pgo.guid=g.guid
WHERE pt.entry=pgo.pool_entry) as objects
ON acore_world.pool_template.entry = objects.entry
SET acore_world.pool_template.max_limit=(acore_world.pool_template.max_limit * @HerbMaxLimitMultiplier);
