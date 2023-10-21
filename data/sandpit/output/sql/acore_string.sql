SET
@entry := {entry},
@content_default := {content_default},
@locale_koKR := {locale_kokr},
@locale_frFR := {locale_frfr},
@locale_deDE := {locale_dede},
@locale_zhCN := {locale_zhcn},
@locale_zhTW := {locale_zhtw},
@locale_esES := {locale_eses},
@locale_esMX := {locale_esmx},
@locale_ruRU := {locale_ruru};

DELETE FROM acore_string WHERE
    entry=@entry
;

INSERT INTO acore_string (
    entry,
    content_default,
    locale_koKR,
    locale_frFR,
    locale_deDE,
    locale_zhCN,
    locale_zhTW,
    locale_esES,
    locale_esMX,
    locale_ruRU
)
VALUES (
    @entry,
    @content_default,
    @locale_koKR,
    @locale_frFR,
    @locale_deDE,
    @locale_zhCN,
    @locale_zhTW,
    @locale_esES,
    @locale_esMX,
    @locale_ruRU
);