SET
@ID := {id},
@Data := {data};

DELETE FROM gtchancetospellcritbase_dbc WHERE
    ID=@ID
;

INSERT INTO gtchancetospellcritbase_dbc (
    ID,
    Data
)
VALUES (
    @ID,
    @Data
);