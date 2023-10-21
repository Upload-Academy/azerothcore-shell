SET
@ID := {id},
@Data := {data};

DELETE FROM gtbarbershopcostbase_dbc WHERE
    ID=@ID
;

INSERT INTO gtbarbershopcostbase_dbc (
    ID,
    Data
)
VALUES (
    @ID,
    @Data
);