SET
@ID := {id},
@Data := {data};

DELETE FROM durabilityquality_dbc WHERE
    ID=@ID
;

INSERT INTO durabilityquality_dbc (
    ID,
    Data
)
VALUES (
    @ID,
    @Data
);