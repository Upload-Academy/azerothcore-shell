SET
@ID := {id},
@type := {type},
@GreetEmoteType := {greetemotetype},
@GreetEmoteDelay := {greetemotedelay},
@Greeting := {greeting},
@VerifiedBuild := {verifiedbuild};

DELETE FROM quest_greeting WHERE
    ID=@ID AND
    type=@type
;

INSERT INTO quest_greeting (
    ID,
    type,
    GreetEmoteType,
    GreetEmoteDelay,
    Greeting,
    VerifiedBuild
)
VALUES (
    @ID,
    @type,
    @GreetEmoteType,
    @GreetEmoteDelay,
    @Greeting,
    @VerifiedBuild
);