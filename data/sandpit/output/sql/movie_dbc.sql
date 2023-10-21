SET
@ID := {id},
@Filename := {filename},
@Volume := {volume};

DELETE FROM movie_dbc WHERE
    ID=@ID
;

INSERT INTO movie_dbc (
    ID,
    Filename,
    Volume
)
VALUES (
    @ID,
    @Filename,
    @Volume
);