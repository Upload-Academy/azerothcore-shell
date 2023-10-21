SET
@guid := {guid},
@invisibilityType := {invisibilitytype},
@invisibilityValue := {invisibilityvalue};

DELETE FROM gameobject_addon WHERE
    guid=@guid
;

INSERT INTO gameobject_addon (
    guid,
    invisibilityType,
    invisibilityValue
)
VALUES (
    @guid,
    @invisibilityType,
    @invisibilityValue
);