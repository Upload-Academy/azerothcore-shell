# World Of Solocraft (WoS)

WoS is a project focused building a fully solo-able World of Warcraft experience whilst staying as close to "blizzlike" as possible.

Put another way: WoS turns WoW into a single player RPG game that just so happens to support you and your friends playing in the same world (coop).

## Why? 

[World of Warcraft](https://worldofwarcraft.com/en-gb/) is an awesome game filled with years of content. [It's massive!](https://www.gamermaps.net/world-of-warcraft/map/) But it's not always possible for [everyone to access the game](https://us.forums.blizzard.com/en/wow/t/classic-wow-banned-in-indonesia/1293532); it requires a monthly subscription that some (this author) aren't willing to pay; it's published by Activision, who engage in [less than ideal employment conditions](https://www.svg.com/703293/the-shady-side-of-activision-blizzard/); and some of us simply enjoy the single-player experience, whilst maintaining the option of playing with other people (it's an MMO after all - built-in coop) should that be desirable.

With these reasons in mind (and more), I wanted to build and document the process of building a solo-friendly, Wrath of the Lich King (WotLK) server that one can host locally on your PC (to play truly solo), or host on a local network for others to join.

### Yeah, but why?

Primarily, I want to solve two *key* issues playing WoW (especially solo), but *without spoon feeding the player*:

1. *Accessibility* to content like dungeons, raids, and the endgame;
1. And the *mobility* of the player in the world, such as mounts and fast travel options

Which raised two question for me: how do we get access to (endgame) content, and how does the player solve the mobility issue today? The answers are clear: leveling; and mounts, portals, and fast travel (flight paths). But both of these are kind of a grind and, in my opinion, make solo-play harder and less fun.

So I wanted to make a project that brings to gether AzerothCore, some modules, some custom code (as a module), and a balanced configuration, so that others can experience my solution to this.

### So what is this "solution" of yours?

Here's what I do (some of this is still a Work In Progress, or **WIP**):

1. I use `mod-wos` to introduce clones of an NPC, [`Minigob Manabonk`](https://www.wowhead.com/wotlk/npc=32838/minigob-manabonk), and use them to introduce more lore to the game *and* a critical change I'll explain below... (*accessibility*/*mobility*)
1. I use `mod-wos` to make mounts available much sooner, but still with a cost (*mobility*; **WIP**)
1. I use `mod-wos` to make all (relevant) flight paths accessible quickly (*mobility*; **WIP**)
1. I use `mod-wos` to add faster, instant access to Dalaran (*mobility*)
1. I use `mod-wos` to add professions trainers of all levels to Dalaran, not just the Grand Masters (*accessibility*; **WIP**)
1. I use `mod-learnspells` to give you your (*level specific*) class skills/abilities the moment you level - free and without the trainer (*accessibility*)
1. I use `mod-autobalance` to scale instances to your group's level and player count, instantly, dynamically, and in real-time, even for one player! (*accessibility*)
1. I use `mod-solo-lfg` to make access to dungeon/raid content *instant*, even with one player in the queue (you) (*accessibility* anbd *mobility*)
1. I use `mod-ah-bot` to make a lively Auction House that you can use to flip the gear you don't want to a bot who will gladly buy it (*accessibility*)
1. Finally, I configure these modules, and the World Server, to provide a balanced game that becomes, essentially, a single-player RPG

You'll notice I haven't added: "I use `X` to change the experience you gain from kills/quests/etc." - this is off the table, and here's why.

I wrote `mod-wos`, mentioned several times above, to bring one key change to the game: the introduction of [Emblems of Valor](https://www.wowhead.com/wotlk/item=40753/emblem-of-valor) into the early stages of the game. This means those emblems drop in two cases:

1. When you complete a quest that *grants you experience* - 1 x [Emblems of Valor](https://www.wowhead.com/wotlk/item=40753/emblem-of-valor)
1. And when you kill a (elite) creature (5% chance) - 1 x [Emblems of Valor](https://www.wowhead.com/wotlk/item=40753/emblem-of-valor)

These Emblems where introduced by Blizzard as an endgame (soft) currency used to purchase high level equipment and other goodies, but `mod-wos` changes that.

### What the hell is a "Minigob Manabonk"?!

"Minigob Manabonk is an accentric mage who wonders Dalaran turning random players into sheep. He's really very annoying. Regardless, it was recently discovered that an unknown entity seems to have found a way to disenchant Emblems of Valor into a material that makes them immortal. An impressive feat of magic and intelligence. In an effort to harvest these Emblems, it's believed this unknown entity has bent time and space - reality itself - to force the Emblems to spawn whenever an adventurer completes a quest or kills a creature. It was also recently discovered (primarily due to an increase in sheep populations around cities and towns) that this unknown entity has also cloned and deployed an army of Minigobs! They're really *very* annoying. These clones are now enticing players to supercharge their adventures with sneaky shortcuts, wild teleportation tricks, cheap goods (with no warranty!), and other reality bending products and services that are simply too good for the young adventurer to ignore. And the bad news is this entity is paying city taxes on all sales and the clones have a good pension plan, so everything is above board!! I must remember to write a letter of complaint about this to the King. My closing thoughts are this: these clones are being used to collect these Emblems, but for whom? And will they stop at immortality?" - Nazaroth Dunne, Researcher, Bad Lands

Now players are given some choices about how they can spend these Emblems:

- They can buy complete level ups, allowing the player to *chose* if they want level, skipping the grind
- They can but access to mounts (and training) for emblems
- A quicker, but some erractic, instant teleportation to Dalaran can be bought
- All their faction flight paths can be learned in an instant!
- They can buy heirloom gear!

And, in the future, **more** cool products and services.

### So whats the point?

In short: choice.

I tried simply scaling the experience gained from kills and quests, and it *sort of* works, but it most break immersion. I tried just levelling to 80 and even giving my self gear, but then you skip out on 80-90% of the game and its world - that's boring!

Now players can get their cake and they can eat. They get tokens that allow them to purchase quality of life hacks but, if they chose, they can keep the levelling experience the same. Or not... they can buy level skips and reach 80 in a *few hours* versus **150 hours** for the average, casual player.

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

### What modules should I install, and why that module?

These are the *key* modules that I believe make for a true, working WoW solo experience:

1. [`mod-autobalance`](https://github.com/azerothcore/mod-autobalance) (avoid `solocraft` as it breaks the experiece)
2. [`mod-solo-lfg`](https://github.com/milestorme/mod-solo-lfg)
3. [`mod-ah-bot`](https://github.com/azerothcore/mod-ah-bot)
5. [`mod-learn-spells`](https://github.com/azerothcore/mod-learn-spells)
6. [`mod-wos`](https://github.com/mrcrilly/mod-wos) (written by me)

#### Why `autobalance`?

The `autobalance` module is designed to dynamically balance instances, dungeons, raids, etc., as well as world bosses, all in real-time, to match the player's in the party *and* the size of the party. So if you go into The Deadmines on your own (using `solo-lfg`), then the entire instance (dungeon) is scaled *down* to match your level, or it's left alone if you're substantially higher level than the creatures you encounter. 

Here's a video of this author running The Deadmines with a level 15 Mage:

`<WIP>`

#### Why `solo-lfg`?

This module makes WoW's "Looking for Group" (LFG) feature to skip waiting for other players, and just lets you jump straight into the content. So, if you queue for The Deadmines, you'll instantly enter the dungeon and you can begin your solo run.

Sort of a no brainer really, eh?

#### Why `ahbot`?

The Auction Houe (AH) is a bit of an iconic feature of WoW. It would be a shame to miss out, so using `ahbot` means you don't have to. Instead, a bot uses an account you create (you cannot use this account to play) to put items on the AH as well as buy items *you*, the player(s), put on the AH.

This makes it possible to make gold by selling things on the AH.

It's not a perfect solution right now. For example, the bot doesn't really consider the fact you're levelling characters, so the items are just random and all over the shop. I'm considering the idea of writing a change request to the bot to see if I can get it putting up items that you'd *want* to buy, so that you can level and enjoy the content more. For now though, it's simply a way of flipping stuff.

#### Why `learnspells`?

One of the features I believe they got right in retail WoW was, essentially, removing the need for class trainers (although they kept them in the game.) This module implements that feature, which means when a character levels they get the spells/abilities/etc. for that level automatically and for free. No need for silver/gold, and no need to travel to a trainer.

#### Why `mod-wos`?

Because Minigob Manabonk clones, that's why!!!

## Support

Join the [AzerothCore Discord server](https://discord.gg/TZBZ6quZuG) and ask for assistance in the `#supporr-general`, but make sure to read the rules and notices first.
