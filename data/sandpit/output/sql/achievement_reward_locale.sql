SET
@ID := {id},
@Locale := {locale},
@Subject := {subject},
@Text := {text};

DELETE FROM achievement_reward_locale WHERE
    ID=@ID AND
    Locale=@Locale
;

INSERT INTO achievement_reward_locale (
    ID,
    Locale,
    Subject,
    Text
)
VALUES (
    @ID,
    @Locale,
    @Subject,
    @Text
);