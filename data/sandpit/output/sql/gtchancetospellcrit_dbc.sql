SET
@ID := {id},
@Data := {data};

DELETE FROM gtchancetospellcrit_dbc WHERE
    ID=@ID
;

INSERT INTO gtchancetospellcrit_dbc (
    ID,
    Data
)
VALUES (
    @ID,
    @Data
);