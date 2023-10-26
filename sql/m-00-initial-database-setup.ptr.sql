-- The PTR database setup leverages a lot of the main setup
CREATE DATABASE `acore_world_ptr` DEFAULT CHARACTER SET UTF8MB4 COLLATE utf8mb4_general_ci;
CREATE DATABASE `acore_characters_ptr` DEFAULT CHARACTER SET UTF8MB4 COLLATE utf8mb4_general_ci;

GRANT ALL PRIVILEGES ON `acore_world_ptr` . * TO 'acore'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON `acore_characters_ptr` . * TO 'acore'@'localhost' WITH GRANT OPTION;

INSERT INTO `realmlist` (
    id,
    name,
    address,
    localAddress,
    localSubnetMask,
    port,
    icon,
    flag,
    timezone,
    allowedSecurityLevel,
    population,
    gamebuild
) VALUES (
    2,
    "AzerothCorePTR",
    "127.0.0.1",
    "127.0.0.1",
    "255.255.255.0",
    8086,
    1,
    0,
    1,
    0,
    0,
    12340
);
