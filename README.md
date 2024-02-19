# AzerothCore Build Scripts (ACBS)

*NOTE: this project is a **Work In Progress**. There's a lot of work to be done on this project. It's got basically no instructions at the moment.*

ACBS is a series of shell scripts (bash) that allow you to easily create an AzerothCore server. This means you can emulate a World of Warcraft 3.3.5a server, allowing 3.3.5a clients to connect to the server and enjoy the game locally or on a private/public network with friends.

## Warning!

These scripts _do not_ replace a well rounded education in Linux, networking, server administration, or cybersecurity. They're simply here to help you get started. It's important to understand that you're putting a complex, potentially vulnerable, piece of software on your computer and/or network that could be exploited by a remote malicous actor. If you put the AzerothCore server on _the publinc Internet_, this fact is 10x more true.

Play it safe and understand what is happening here.

## Also, before you start...

You should be aware of these facts regarding the network security of your Linux host once you use these scripts:

1. This script will open several firewall rules on your server:
    1. `TCP/22` for SSH will be opened to `0.0.0.0/0`
    1. `TCP/8085` for the World Server will be opened to `0.0.0.0/0`
    1. `TCP/3724` for the Auth Server will be opened to `0.0.0.0/0`
1. Because those ports are opened to `0.0.0.0/0`, if your server is on the public Internet, then __so are those ports__!

The database is kept operating on the local IP address space, so it's never accessible over the public Internet. 

## How?

Executing __all__ scripts has to be done from the root (`.`) of the directory/repository, like this:

```
bash scripts/os.sh <config.sh>
```

Where `<config.sh>` is replaced with a configuration you've copied from `./config.sh.example`.

### Requirements

* Ubuntu 22.04 LTS

### Instructions

To get the AC server up and running with defaults, run the following commands:

1. Clone this repository to a Ubuntu 22.04 server:
    1. `git clone <url>`
1. Change directory into the cloned repository:
    1. `cd AzerothCore-Build-Scripts`
1. Copy the `config.sh.example` file to `config.sh`
    1. `cp config.sh.example config.sh`
1. (_optional step_) Open and edit the `config.sh` file...
    1. ... replacing `AZEROTHCORE_SERVER_REMOTE_ENDPOINT` with your *public* IP address
    1. ... replacing `AZEROTHCORE_SERVER_BIND_IP` with your *private*, *internal* IP address
    1. ... replacing `AZEROTHCORE_INSTALL_PARENT_DIR` with the location to install to under `$HOME`
1. Run `./setup.sh config.sh` and you should get a working WoW 3.3.5a WotLK server

The _optional step_ above is only if you want to change how AzerothCore is presented to your local network. If you just want to run it locally, skip that step.

## Why? 

[World of Warcraft](https://worldofwarcraft.com/en-gb/) is an awesome game filled with years of content. [It's massive!](https://www.gamermaps.net/world-of-warcraft/map/) But it's not always possible for [everyone to access the game](https://us.forums.blizzard.com/en/wow/t/classic-wow-banned-in-indonesia/1293532); it requires a monthly subscription that some (this author) aren't willing to pay (to Blizzard in its current state); it's published by Activision, who have engaged in [less than ideal employment conditions](https://www.svg.com/703293/the-shady-side-of-activision-blizzard/); and some of us simply enjoy the single-player experience, whilst maintaining the option of playing with other people should that be desirable (it's an MMO after all - built-in coop.)

With these reasons in mind (and more), I wanted to make it easier to create an AzerthoCore server using Ubuntu Linux.

## Support

If you need support with AzerothCore, then join the [AzerothCore Discord server](https://discord.gg/TZBZ6quZuG) and ask for assistance in the `#support-general`, but make sure to read the rules and notices first.

If you need assistance with these scripts specifically, then [use my personal Discord instead](https://discord.gg/XS2eVbawxK).
