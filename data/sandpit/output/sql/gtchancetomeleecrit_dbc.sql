SET
@ID := {id},
@Data := {data};

DELETE FROM gtchancetomeleecrit_dbc WHERE
    ID=@ID
;

INSERT INTO gtchancetomeleecrit_dbc (
    ID,
    Data
)
VALUES (
    @ID,
    @Data
);