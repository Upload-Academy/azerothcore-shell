SET
@CreatureID := {creatureid},
@GroupID := {groupid},
@ID := {id},
@Locale := {locale},
@Text := {text};

DELETE FROM creature_text_locale WHERE
    CreatureID=@CreatureID AND
    GroupID=@GroupID AND
    ID=@ID AND
    Locale=@Locale
;

INSERT INTO creature_text_locale (
    CreatureID,
    GroupID,
    ID,
    Locale,
    Text
)
VALUES (
    @CreatureID,
    @GroupID,
    @ID,
    @Locale,
    @Text
);