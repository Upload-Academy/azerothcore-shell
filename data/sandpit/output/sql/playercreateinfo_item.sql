SET
@race := {race},
@class := {class},
@itemid := {itemid},
@amount := {amount},
@Note := {note};

DELETE FROM playercreateinfo_item WHERE
    race=@race AND
    class=@class AND
    itemid=@itemid
;

INSERT INTO playercreateinfo_item (
    race,
    class,
    itemid,
    amount,
    Note
)
VALUES (
    @race,
    @class,
    @itemid,
    @amount,
    @Note
);