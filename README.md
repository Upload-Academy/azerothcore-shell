# AzerothCore Build Scripts (ACBS)

*NOTE: this project is a **Work In Progress**. There's a lot of work to be done on this project. It's got basically no instructions at the moment.*

ACBS is a series of shell scripts (bash) that allow you to easily create an AzerothCore server. This means you can emulate a World of Warcraft 3.3.5a server, allowing 3.3.5a clients to connect to the server and enjoy the game locally or on a private/public network with friends.

## How

*This is very much a work in progress.*

1. Clone this repository to a Ubuntu 22.04 server
1. Copy the `config.sh.example` file to `config.sh`
1. Open and edit the `config.sh` file...
    1. ... replacing `AZEROTHCORE_SERVER_REMOTE_ENDPOINT` with your *public* IP address
    1. ... replacing `AZEROTHCORE_SERVER_BIND_IP` with your *private*, *internal* IP address
    1. ... replacing `AZEROTHCORE_INSTALL_PARENT_DIR` with the location to install to under `$HOME`
1. Run `./setup.sh config.sh` and you should get a working WoW 3.3.5a WotLK server

## Why? 

[World of Warcraft](https://worldofwarcraft.com/en-gb/) is an awesome game filled with years of content. [It's massive!](https://www.gamermaps.net/world-of-warcraft/map/) But it's not always possible for [everyone to access the game](https://us.forums.blizzard.com/en/wow/t/classic-wow-banned-in-indonesia/1293532); it requires a monthly subscription that some (this author) aren't willing to pay (to Blizzard in its current state); it's published by Activision, who have engaged in [less than ideal employment conditions](https://www.svg.com/703293/the-shady-side-of-activision-blizzard/); and some of us simply enjoy the single-player experience, whilst maintaining the option of playing with other people should that be desirable (it's an MMO after all - built-in coop.)

With these reasons in mind (and more), I wanted to make it easier to create an AzerthoCore server using Ubuntu Linux.

## Support

If you need support with AzerothCore, then join the [AzerothCore Discord server](https://discord.gg/TZBZ6quZuG) and ask for assistance in the `#support-general`, but make sure to read the rules and notices first.

If you need assistance with these scripts specifically, then [use my personal Discord instead](https://discord.gg/XS2eVbawxK).
