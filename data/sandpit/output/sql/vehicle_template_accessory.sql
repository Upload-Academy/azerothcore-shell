SET
@entry := {entry},
@accessory_entry := {accessory_entry},
@seat_id := {seat_id},
@minion := {minion},
@description := {description},
@summontype := {summontype},
@summontimer := {summontimer};

DELETE FROM vehicle_template_accessory WHERE
    entry=@entry AND
    seat_id=@seat_id
;

INSERT INTO vehicle_template_accessory (
    entry,
    accessory_entry,
    seat_id,
    minion,
    description,
    summontype,
    summontimer
)
VALUES (
    @entry,
    @accessory_entry,
    @seat_id,
    @minion,
    @description,
    @summontype,
    @summontimer
);