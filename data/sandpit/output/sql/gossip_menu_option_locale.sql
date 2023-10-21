SET
@MenuID := {menuid},
@OptionID := {optionid},
@Locale := {locale},
@OptionText := {optiontext},
@BoxText := {boxtext};

DELETE FROM gossip_menu_option_locale WHERE
    MenuID=@MenuID AND
    OptionID=@OptionID AND
    Locale=@Locale
;

INSERT INTO gossip_menu_option_locale (
    MenuID,
    OptionID,
    Locale,
    OptionText,
    BoxText
)
VALUES (
    @MenuID,
    @OptionID,
    @Locale,
    @OptionText,
    @BoxText
);