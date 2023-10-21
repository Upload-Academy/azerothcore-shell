SET
@ID := {id},
@locale := {locale},
@Title := {title},
@Details := {details},
@Objectives := {objectives},
@EndText := {endtext},
@CompletedText := {completedtext},
@ObjectiveText1 := {objectivetext1},
@ObjectiveText2 := {objectivetext2},
@ObjectiveText3 := {objectivetext3},
@ObjectiveText4 := {objectivetext4},
@VerifiedBuild := {verifiedbuild};

DELETE FROM quest_template_locale WHERE
    ID=@ID AND
    locale=@locale
;

INSERT INTO quest_template_locale (
    ID,
    locale,
    Title,
    Details,
    Objectives,
    EndText,
    CompletedText,
    ObjectiveText1,
    ObjectiveText2,
    ObjectiveText3,
    ObjectiveText4,
    VerifiedBuild
)
VALUES (
    @ID,
    @locale,
    @Title,
    @Details,
    @Objectives,
    @EndText,
    @CompletedText,
    @ObjectiveText1,
    @ObjectiveText2,
    @ObjectiveText3,
    @ObjectiveText4,
    @VerifiedBuild
);