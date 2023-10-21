SET
@level := {level},
@raceMask := {racemask},
@mailTemplateId := {mailtemplateid},
@senderEntry := {senderentry};

DELETE FROM mail_level_reward WHERE
    level=@level AND
    raceMask=@raceMask
;

INSERT INTO mail_level_reward (
    level,
    raceMask,
    mailTemplateId,
    senderEntry
)
VALUES (
    @level,
    @raceMask,
    @mailTemplateId,
    @senderEntry
);