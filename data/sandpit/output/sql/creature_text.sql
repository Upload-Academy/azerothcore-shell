SET
@CreatureID := {creatureid},
@GroupID := {groupid},
@ID := {id},
@Text := {text},
@Type := {type},
@Language := {language},
@Probability := {probability},
@Emote := {emote},
@Duration := {duration},
@Sound := {sound},
@BroadcastTextId := {broadcasttextid},
@TextRange := {textrange},
@comment := {comment};

DELETE FROM creature_text WHERE
    CreatureID=@CreatureID AND
    GroupID=@GroupID AND
    ID=@ID
;

INSERT INTO creature_text (
    CreatureID,
    GroupID,
    ID,
    Text,
    Type,
    Language,
    Probability,
    Emote,
    Duration,
    Sound,
    BroadcastTextId,
    TextRange,
    comment
)
VALUES (
    @CreatureID,
    @GroupID,
    @ID,
    @Text,
    @Type,
    @Language,
    @Probability,
    @Emote,
    @Duration,
    @Sound,
    @BroadcastTextId,
    @TextRange,
    @comment
);