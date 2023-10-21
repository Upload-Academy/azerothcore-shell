SET
@ID := {id},
@Duration := {duration},
@DurationPerLevel := {durationperlevel},
@MaxDuration := {maxduration};

DELETE FROM spellduration_dbc WHERE
    ID=@ID
;

INSERT INTO spellduration_dbc (
    ID,
    Duration,
    DurationPerLevel,
    MaxDuration
)
VALUES (
    @ID,
    @Duration,
    @DurationPerLevel,
    @MaxDuration
);