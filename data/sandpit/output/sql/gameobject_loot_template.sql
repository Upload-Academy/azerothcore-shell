SET
@Entry := {entry},
@Item := {item},
@Reference := {reference},
@Chance := {chance},
@QuestRequired := {questrequired},
@LootMode := {lootmode},
@GroupId := {groupid},
@MinCount := {mincount},
@MaxCount := {maxcount},
@Comment := {comment};

DELETE FROM gameobject_loot_template WHERE
    Entry=@Entry AND
    Item=@Item
;

INSERT INTO gameobject_loot_template (
    Entry,
    Item,
    Reference,
    Chance,
    QuestRequired,
    LootMode,
    GroupId,
    MinCount,
    MaxCount,
    Comment
)
VALUES (
    @Entry,
    @Item,
    @Reference,
    @Chance,
    @QuestRequired,
    @LootMode,
    @GroupId,
    @MinCount,
    @MaxCount,
    @Comment
);