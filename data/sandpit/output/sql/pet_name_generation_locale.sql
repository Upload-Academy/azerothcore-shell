SET
@ID := {id},
@Locale := {locale},
@Word := {word},
@Entry := {entry},
@Half := {half};

DELETE FROM pet_name_generation_locale WHERE
    ID=@ID AND
    Locale=@Locale
;

INSERT INTO pet_name_generation_locale (
    ID,
    Locale,
    Word,
    Entry,
    Half
)
VALUES (
    @ID,
    @Locale,
    @Word,
    @Entry,
    @Half
);