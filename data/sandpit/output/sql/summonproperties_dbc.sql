SET
@ID := {id},
@Control := {control},
@Faction := {faction},
@Title := {title},
@Slot := {slot},
@Flags := {flags};

DELETE FROM summonproperties_dbc WHERE
    ID=@ID
;

INSERT INTO summonproperties_dbc (
    ID,
    Control,
    Faction,
    Title,
    Slot,
    Flags
)
VALUES (
    @ID,
    @Control,
    @Faction,
    @Title,
    @Slot,
    @Flags
);