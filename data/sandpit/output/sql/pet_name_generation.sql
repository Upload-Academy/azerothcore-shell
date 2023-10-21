SET
@id := {id},
@word := {word},
@entry := {entry},
@half := {half};

DELETE FROM pet_name_generation WHERE
    id=@id
;

INSERT INTO pet_name_generation (
    id,
    word,
    entry,
    half
)
VALUES (
    @id,
    @word,
    @entry,
    @half
);