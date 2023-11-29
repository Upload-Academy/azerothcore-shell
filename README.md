# World Of Solocraft (WoS)

*NOTE: this project is a **Work In Progress**. There's a lot of work to be done on this project. It's got basically no instructions at the moment.*

WoS is a project focused building a fully solo-able World of Warcraft experience whilst staying as close to "blizzlike" as possible. The ability to run this as a public server and play with other players still remains, but some things have been tweaked to ensure someone playing alone can do so for the most part.

Put another way: WoS turns WoW into a single player RPG game that just so happens to support you and your friends playing in the same world (coop).

## How

*This is very much a work in progress.*

1. Clone this repository to a Ubuntu 22.04 server
1. Open and edit the `config.sh` file...
    1. ... replacing `AZEROTHCORE_SERVER_REMOTE_ENDPOINT` with your *public* IP address
    1. ... replacing `AZEROTHCORE_SERVER_BIND_IP` with your *private*, *internal* IP address
    1. ... replacing `AZEROTHCORE_SERVER_LOCAL_SUBNETMASK` with your *private*, *internal* IP subnet mask
1. Run `bash setup.sh` and you should get a working WotLK server

### A note about `AZEROTHCORE_SERVER_LOCAL_SUBNETMASK`

These configuration is actually important if you want to make your server available on the public Internet _and_ you want to be able to access it from _inside_ the network.

When your WoW 3.3.5.a client connects to the value set in your local `realmlist` - say `127.0.0.1` - you authenticate against the _authentication server_, not the world server. After authenticating, your client is given a list of _world_ servers (realms) that you can connect to: on their IP address.

If the IP address _you're coming from_ is inside the `AZEROTHCORE_SERVER_LOCAL_SUBNETMASK` subnet, then you're client is given the world IP that matches `AZEROTHCORE_SERVER_BIND_IP` (the local, LAN IP), but if you're outside the subnet mask, then you're given `AZEROTHCORE_SERVER_REMOTE_ENDPOINT`, because you're coming from the Internet.

If this doesn't make sense to you, don't worry about it. It's an advanced networking feature that you should consider revisiting if you encounter problems connecting to your WoW instance from inside your network.

## Why? 

[World of Warcraft](https://worldofwarcraft.com/en-gb/) is an awesome game filled with years of content. [It's massive!](https://www.gamermaps.net/world-of-warcraft/map/) But it's not always possible for [everyone to access the game](https://us.forums.blizzard.com/en/wow/t/classic-wow-banned-in-indonesia/1293532); it requires a monthly subscription that some (this author) aren't willing to pay; it's published by Activision, who engage in [less than ideal employment conditions](https://www.svg.com/703293/the-shady-side-of-activision-blizzard/); and some of us simply enjoy the single-player experience, whilst maintaining the option of playing with other people should that be desirable (it's an MMO after all - built-in coop.)

With these reasons in mind (and more), I wanted to build and document the process of building a solo-friendly, Wrath of the Lich King (WotLK; 3.3.5a) server that one can host locally on your PC (to play truly solo), or host on a local/public network for others to join.

### Yeah, but _why_?

Primarily, I want to solve some critical issues playing WoW solo, but *without spoon feeding the player*:

1. *Accessibility* to content like dungeons, raids, and the endgame;
1. *Accessibility* of end-game content like gear;
1. The *mobility* of the player in the world, such as mounts and fast travel options;
1. More questing and access to solo-friendly content;
1. Making professions and gathering actually worth it;
1. And more...

So I wanted to make a project that brings together AzerothCore, some modules, some custom code (as a module), and a balanced configuration, so that others can experience my solution to this.

## OK, how do I get the ball rolling?

Assuming a Windows (Server) installation:

1. Download [AzerothCore](https://www.azerothcore.org/)
1. Download *all* the required, prerequisite software needed to compile [AzerothCore](https://www.azerothcore.org/)
1. Read the instructions on how-to "install" modules
1. Download the modules listed below
1. Compile [AzerothCore](https://www.azerothcore.org/) (and the modules you installed)
1. Run the MySQLd server
1. Execute the `auth-server.exe` executable
1. Create and override settings in `worldserver.conf` to adjust the world to your liking
1. Use the `module/*.conf` I provide in this repository to re-configure the defaults for the modules you're installing
1. Execute the `world-server.exe` executable
1. Use the `AC> ` the World Server gives you to create an account (`account create <name> <password>`)
1. Use your Wrath of the Lich King (WotLK) `3.3.5a` client to connect and login with your new (none Game Master) account
1. Enjoy your WoW WotLK server

### What modules are installed, and why that module?

These are the *key* modules that I believe make for a true, working WoW solo experience:

1. [`mod-solo-lfg`](https://github.com/milestorme/mod-solo-lfg)
1. [`mod-solocraft`](https://github.com/azerothcore/mod-solocraft)

#### Why `solo-lfg`?

This module makes WoW's "Looking for Group" (LFG) feature to skip waiting for other players, and just lets you jump straight into the content. So, if you queue for The Deadmines, you'll instantly enter the dungeon and you can begin your solo run.

Sort of a no brainer really, eh?

#### Why `solocraft`?

It's a module designed to make solo or small-group dungeons and raids more possible. It's not perfect, but it's the best we can offer today.

## Support

Join the [AzerothCore Discord server](https://discord.gg/TZBZ6quZuG) and ask for assistance in the `#support-general`, but make sure to read the rules and notices first.
