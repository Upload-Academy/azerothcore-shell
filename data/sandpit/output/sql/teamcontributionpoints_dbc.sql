SET
@ID := {id},
@Data := {data};

DELETE FROM teamcontributionpoints_dbc WHERE
    ID=@ID
;

INSERT INTO teamcontributionpoints_dbc (
    ID,
    Data
)
VALUES (
    @ID,
    @Data
);