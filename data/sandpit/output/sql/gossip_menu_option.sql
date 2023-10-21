SET
@MenuID := {menuid},
@OptionID := {optionid},
@OptionIcon := {optionicon},
@OptionText := {optiontext},
@OptionBroadcastTextID := {optionbroadcasttextid},
@OptionType := {optiontype},
@OptionNpcFlag := {optionnpcflag},
@ActionMenuID := {actionmenuid},
@ActionPoiID := {actionpoiid},
@BoxCoded := {boxcoded},
@BoxMoney := {boxmoney},
@BoxText := {boxtext},
@BoxBroadcastTextID := {boxbroadcasttextid},
@VerifiedBuild := {verifiedbuild};

DELETE FROM gossip_menu_option WHERE
    MenuID=@MenuID AND
    OptionID=@OptionID
;

INSERT INTO gossip_menu_option (
    MenuID,
    OptionID,
    OptionIcon,
    OptionText,
    OptionBroadcastTextID,
    OptionType,
    OptionNpcFlag,
    ActionMenuID,
    ActionPoiID,
    BoxCoded,
    BoxMoney,
    BoxText,
    BoxBroadcastTextID,
    VerifiedBuild
)
VALUES (
    @MenuID,
    @OptionID,
    @OptionIcon,
    @OptionText,
    @OptionBroadcastTextID,
    @OptionType,
    @OptionNpcFlag,
    @ActionMenuID,
    @ActionPoiID,
    @BoxCoded,
    @BoxMoney,
    @BoxText,
    @BoxBroadcastTextID,
    @VerifiedBuild
);