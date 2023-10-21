SET
@ID := {id},
@Data := {data};

DELETE FROM gtoctclasscombatratingscalar_dbc WHERE
    ID=@ID
;

INSERT INTO gtoctclasscombatratingscalar_dbc (
    ID,
    Data
)
VALUES (
    @ID,
    @Data
);