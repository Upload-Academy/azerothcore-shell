# Data

We pull a lot of data from a lot of sources. This data is (mostly) used to generate huge amounts of SQL statements, which in turn are used to setup vendors, rare spawns, hunt challenges, and more. This means we can data mine various databases, populate a file, and then have a tonne of SQL generated for us.

This is how the extra NPCs, mobs, etc., are all managed.

## Generating

```
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python3 generate_sql.py
```

And then you want to update and push (to the server) the resulting `results/*.sql` and import the SQL into the DB.

## Items

Everything is managed inside of `data/items/items.yaml`

### Vendor Groups

We have "vendor groups" that make dungeon and raid drops/items accessible for gold, _outside_ of the dungeon/raid itself. This is to faciliate the primary objective of this project: solo WoW game play.

Each item from each dungeon is assigned a type:

- `weapon`
- `clothing`
- `other` (such as trinket or ring)

Then it's assigned one of the following tiers:

- `tier1a`
- `tier1b`
- `tier2a`
- `tier2b`
- `tier3a`
- `tier3b`
- `tier4a`
- `tier4b`
- `tier5a`
- `tier5b`
- `tier6a`
- `tier6b`
- `tier7a`
- `tier7b`

These _sort of_ map to level ranges, but not strictly. Each tier is a multipler of some base cost. In our case, the base cost is defined as about `1g 20s`. That is then multiplied by a tier's multiplier to get the vendor price of the item.

These vendor groups sell items based on the type.
