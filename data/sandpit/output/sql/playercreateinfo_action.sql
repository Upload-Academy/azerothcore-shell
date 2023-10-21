SET
@race := {race},
@class := {class},
@button := {button},
@action := {action},
@type := {type};

DELETE FROM playercreateinfo_action WHERE
    race=@race AND
    class=@class AND
    button=@button
;

INSERT INTO playercreateinfo_action (
    race,
    class,
    button,
    action,
    type
)
VALUES (
    @race,
    @class,
    @button,
    @action,
    @type
);