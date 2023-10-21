SET
@QuestId := {questid},
@RewardMailSenderEntry := {rewardmailsenderentry};

DELETE FROM quest_mail_sender WHERE
    QuestId=@QuestId
;

INSERT INTO quest_mail_sender (
    QuestId,
    RewardMailSenderEntry
)
VALUES (
    @QuestId,
    @RewardMailSenderEntry
);