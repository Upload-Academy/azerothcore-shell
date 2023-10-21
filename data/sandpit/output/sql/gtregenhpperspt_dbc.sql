SET
@ID := {id},
@Data := {data};

DELETE FROM gtregenhpperspt_dbc WHERE
    ID=@ID
;

INSERT INTO gtregenhpperspt_dbc (
    ID,
    Data
)
VALUES (
    @ID,
    @Data
);