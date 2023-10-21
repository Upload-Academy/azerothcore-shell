SET
@entry := {entry},
@ench := {ench},
@chance := {chance};

DELETE FROM item_enchantment_template WHERE
    entry=@entry AND
    ench=@ench
;

INSERT INTO item_enchantment_template (
    entry,
    ench,
    chance
)
VALUES (
    @entry,
    @ench,
    @chance
);