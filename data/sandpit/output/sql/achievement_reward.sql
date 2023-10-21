SET
@ID := {id},
@TitleA := {titlea},
@TitleH := {titleh},
@ItemID := {itemid},
@Sender := {sender},
@Subject := {subject},
@Body := {body},
@MailTemplateID := {mailtemplateid};

DELETE FROM achievement_reward WHERE
    ID=@ID
;

INSERT INTO achievement_reward (
    ID,
    TitleA,
    TitleH,
    ItemID,
    Sender,
    Subject,
    Body,
    MailTemplateID
)
VALUES (
    @ID,
    @TitleA,
    @TitleH,
    @ItemID,
    @Sender,
    @Subject,
    @Body,
    @MailTemplateID
);