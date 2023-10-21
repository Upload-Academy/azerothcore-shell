SET
@ID := {id},
@Data := {data};

DELETE FROM gtregenmpperspt_dbc WHERE
    ID=@ID
;

INSERT INTO gtregenmpperspt_dbc (
    ID,
    Data
)
VALUES (
    @ID,
    @Data
);