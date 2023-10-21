SET
@guid := {guid},
@linkedGuid := {linkedguid},
@linkType := {linktype};

DELETE FROM linked_respawn WHERE
    guid=@guid AND
    linkType=@linkType
;

INSERT INTO linked_respawn (
    guid,
    linkedGuid,
    linkType
)
VALUES (
    @guid,
    @linkedGuid,
    @linkType
);