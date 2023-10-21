SET
@ID := {id},
@SortName_Lang_enUS := {sortname_lang_enus},
@SortName_Lang_enGB := {sortname_lang_engb},
@SortName_Lang_koKR := {sortname_lang_kokr},
@SortName_Lang_frFR := {sortname_lang_frfr},
@SortName_Lang_deDE := {sortname_lang_dede},
@SortName_Lang_enCN := {sortname_lang_encn},
@SortName_Lang_zhCN := {sortname_lang_zhcn},
@SortName_Lang_enTW := {sortname_lang_entw},
@SortName_Lang_zhTW := {sortname_lang_zhtw},
@SortName_Lang_esES := {sortname_lang_eses},
@SortName_Lang_esMX := {sortname_lang_esmx},
@SortName_Lang_ruRU := {sortname_lang_ruru},
@SortName_Lang_ptPT := {sortname_lang_ptpt},
@SortName_Lang_ptBR := {sortname_lang_ptbr},
@SortName_Lang_itIT := {sortname_lang_itit},
@SortName_Lang_Unk := {sortname_lang_unk},
@SortName_Lang_Mask := {sortname_lang_mask};

DELETE FROM questsort_dbc WHERE
    ID=@ID
;

INSERT INTO questsort_dbc (
    ID,
    SortName_Lang_enUS,
    SortName_Lang_enGB,
    SortName_Lang_koKR,
    SortName_Lang_frFR,
    SortName_Lang_deDE,
    SortName_Lang_enCN,
    SortName_Lang_zhCN,
    SortName_Lang_enTW,
    SortName_Lang_zhTW,
    SortName_Lang_esES,
    SortName_Lang_esMX,
    SortName_Lang_ruRU,
    SortName_Lang_ptPT,
    SortName_Lang_ptBR,
    SortName_Lang_itIT,
    SortName_Lang_Unk,
    SortName_Lang_Mask
)
VALUES (
    @ID,
    @SortName_Lang_enUS,
    @SortName_Lang_enGB,
    @SortName_Lang_koKR,
    @SortName_Lang_frFR,
    @SortName_Lang_deDE,
    @SortName_Lang_enCN,
    @SortName_Lang_zhCN,
    @SortName_Lang_enTW,
    @SortName_Lang_zhTW,
    @SortName_Lang_esES,
    @SortName_Lang_esMX,
    @SortName_Lang_ruRU,
    @SortName_Lang_ptPT,
    @SortName_Lang_ptBR,
    @SortName_Lang_itIT,
    @SortName_Lang_Unk,
    @SortName_Lang_Mask
);