
SET
@Entry := {Entry},
@EmoteOnComplete := {EmoteOnComplete},
@EmoteOnIncomplete := {EmoteOnIncomplete},
@CompleteText := "{CompleteText}";

DELETE FROM `quest_request_items` WHERE (`ID` = @Entry);
INSERT INTO `quest_request_items` (
    `ID`,
    `EmoteOnComplete`,
    `EmoteOnIncomplete`,
    `CompletionText`
) VALUES (
    @Entry,
    @EmoteOnComplete,
    @EmoteOnIncomplete,
    @Complete
);
