SET
@ID := {id},
@Subject_Lang_enUS := {subject_lang_enus},
@Subject_Lang_enGB := {subject_lang_engb},
@Subject_Lang_koKR := {subject_lang_kokr},
@Subject_Lang_frFR := {subject_lang_frfr},
@Subject_Lang_deDE := {subject_lang_dede},
@Subject_Lang_enCN := {subject_lang_encn},
@Subject_Lang_zhCN := {subject_lang_zhcn},
@Subject_Lang_enTW := {subject_lang_entw},
@Subject_Lang_zhTW := {subject_lang_zhtw},
@Subject_Lang_esES := {subject_lang_eses},
@Subject_Lang_esMX := {subject_lang_esmx},
@Subject_Lang_ruRU := {subject_lang_ruru},
@Subject_Lang_ptPT := {subject_lang_ptpt},
@Subject_Lang_ptBR := {subject_lang_ptbr},
@Subject_Lang_itIT := {subject_lang_itit},
@Subject_Lang_Unk := {subject_lang_unk},
@Subject_Lang_Mask := {subject_lang_mask},
@Body_Lang_enUS := {body_lang_enus},
@Body_Lang_enGB := {body_lang_engb},
@Body_Lang_koKR := {body_lang_kokr},
@Body_Lang_frFR := {body_lang_frfr},
@Body_Lang_deDE := {body_lang_dede},
@Body_Lang_enCN := {body_lang_encn},
@Body_Lang_zhCN := {body_lang_zhcn},
@Body_Lang_enTW := {body_lang_entw},
@Body_Lang_zhTW := {body_lang_zhtw},
@Body_Lang_esES := {body_lang_eses},
@Body_Lang_esMX := {body_lang_esmx},
@Body_Lang_ruRU := {body_lang_ruru},
@Body_Lang_ptPT := {body_lang_ptpt},
@Body_Lang_ptBR := {body_lang_ptbr},
@Body_Lang_itIT := {body_lang_itit},
@Body_Lang_Unk := {body_lang_unk},
@Body_Lang_Mask := {body_lang_mask};

DELETE FROM mailtemplate_dbc WHERE
    ID=@ID
;

INSERT INTO mailtemplate_dbc (
    ID,
    Subject_Lang_enUS,
    Subject_Lang_enGB,
    Subject_Lang_koKR,
    Subject_Lang_frFR,
    Subject_Lang_deDE,
    Subject_Lang_enCN,
    Subject_Lang_zhCN,
    Subject_Lang_enTW,
    Subject_Lang_zhTW,
    Subject_Lang_esES,
    Subject_Lang_esMX,
    Subject_Lang_ruRU,
    Subject_Lang_ptPT,
    Subject_Lang_ptBR,
    Subject_Lang_itIT,
    Subject_Lang_Unk,
    Subject_Lang_Mask,
    Body_Lang_enUS,
    Body_Lang_enGB,
    Body_Lang_koKR,
    Body_Lang_frFR,
    Body_Lang_deDE,
    Body_Lang_enCN,
    Body_Lang_zhCN,
    Body_Lang_enTW,
    Body_Lang_zhTW,
    Body_Lang_esES,
    Body_Lang_esMX,
    Body_Lang_ruRU,
    Body_Lang_ptPT,
    Body_Lang_ptBR,
    Body_Lang_itIT,
    Body_Lang_Unk,
    Body_Lang_Mask
)
VALUES (
    @ID,
    @Subject_Lang_enUS,
    @Subject_Lang_enGB,
    @Subject_Lang_koKR,
    @Subject_Lang_frFR,
    @Subject_Lang_deDE,
    @Subject_Lang_enCN,
    @Subject_Lang_zhCN,
    @Subject_Lang_enTW,
    @Subject_Lang_zhTW,
    @Subject_Lang_esES,
    @Subject_Lang_esMX,
    @Subject_Lang_ruRU,
    @Subject_Lang_ptPT,
    @Subject_Lang_ptBR,
    @Subject_Lang_itIT,
    @Subject_Lang_Unk,
    @Subject_Lang_Mask,
    @Body_Lang_enUS,
    @Body_Lang_enGB,
    @Body_Lang_koKR,
    @Body_Lang_frFR,
    @Body_Lang_deDE,
    @Body_Lang_enCN,
    @Body_Lang_zhCN,
    @Body_Lang_enTW,
    @Body_Lang_zhTW,
    @Body_Lang_esES,
    @Body_Lang_esMX,
    @Body_Lang_ruRU,
    @Body_Lang_ptPT,
    @Body_Lang_ptBR,
    @Body_Lang_itIT,
    @Body_Lang_Unk,
    @Body_Lang_Mask
);