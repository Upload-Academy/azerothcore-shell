SET
@id := {id},
@date_id := {date_id},
@date_value := {date_value},
@holiday_duration := {holiday_duration};

DELETE FROM holiday_dates WHERE
    id=@id AND
    date_id=@date_id
;

INSERT INTO holiday_dates (
    id,
    date_id,
    date_value,
    holiday_duration
)
VALUES (
    @id,
    @date_id,
    @date_value,
    @holiday_duration
);