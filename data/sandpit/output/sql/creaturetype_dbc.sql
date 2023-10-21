SET
@ID := {id},
@Name_Lang_enUS := {name_lang_enus},
@Name_Lang_enGB := {name_lang_engb},
@Name_Lang_koKR := {name_lang_kokr},
@Name_Lang_frFR := {name_lang_frfr},
@Name_Lang_deDE := {name_lang_dede},
@Name_Lang_enCN := {name_lang_encn},
@Name_Lang_zhCN := {name_lang_zhcn},
@Name_Lang_enTW := {name_lang_entw},
@Name_Lang_zhTW := {name_lang_zhtw},
@Name_Lang_esES := {name_lang_eses},
@Name_Lang_esMX := {name_lang_esmx},
@Name_Lang_ruRU := {name_lang_ruru},
@Name_Lang_ptPT := {name_lang_ptpt},
@Name_Lang_ptBR := {name_lang_ptbr},
@Name_Lang_itIT := {name_lang_itit},
@Name_Lang_Unk := {name_lang_unk},
@Name_Lang_Mask := {name_lang_mask},
@Flags := {flags};

DELETE FROM creaturetype_dbc WHERE
    ID=@ID
;

INSERT INTO creaturetype_dbc (
    ID,
    Name_Lang_enUS,
    Name_Lang_enGB,
    Name_Lang_koKR,
    Name_Lang_frFR,
    Name_Lang_deDE,
    Name_Lang_enCN,
    Name_Lang_zhCN,
    Name_Lang_enTW,
    Name_Lang_zhTW,
    Name_Lang_esES,
    Name_Lang_esMX,
    Name_Lang_ruRU,
    Name_Lang_ptPT,
    Name_Lang_ptBR,
    Name_Lang_itIT,
    Name_Lang_Unk,
    Name_Lang_Mask,
    Flags
)
VALUES (
    @ID,
    @Name_Lang_enUS,
    @Name_Lang_enGB,
    @Name_Lang_koKR,
    @Name_Lang_frFR,
    @Name_Lang_deDE,
    @Name_Lang_enCN,
    @Name_Lang_zhCN,
    @Name_Lang_enTW,
    @Name_Lang_zhTW,
    @Name_Lang_esES,
    @Name_Lang_esMX,
    @Name_Lang_ruRU,
    @Name_Lang_ptPT,
    @Name_Lang_ptBR,
    @Name_Lang_itIT,
    @Name_Lang_Unk,
    @Name_Lang_Mask,
    @Flags
);