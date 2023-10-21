SET
@guid := {guid},
@accessory_entry := {accessory_entry},
@seat_id := {seat_id},
@minion := {minion},
@description := {description},
@summontype := {summontype},
@summontimer := {summontimer};

DELETE FROM vehicle_accessory WHERE
    guid=@guid AND
    seat_id=@seat_id
;

INSERT INTO vehicle_accessory (
    guid,
    accessory_entry,
    seat_id,
    minion,
    description,
    summontype,
    summontimer
)
VALUES (
    @guid,
    @accessory_entry,
    @seat_id,
    @minion,
    @description,
    @summontype,
    @summontimer
);