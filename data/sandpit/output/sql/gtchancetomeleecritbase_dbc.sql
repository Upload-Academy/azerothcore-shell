SET
@ID := {id},
@Data := {data};

DELETE FROM gtchancetomeleecritbase_dbc WHERE
    ID=@ID
;

INSERT INTO gtchancetomeleecritbase_dbc (
    ID,
    Data
)
VALUES (
    @ID,
    @Data
);