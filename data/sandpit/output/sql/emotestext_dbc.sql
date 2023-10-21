SET
@ID := {id},
@Name := {name},
@EmoteID := {emoteid},
@EmoteText_1 := {emotetext_1},
@EmoteText_2 := {emotetext_2},
@EmoteText_3 := {emotetext_3},
@EmoteText_4 := {emotetext_4},
@EmoteText_5 := {emotetext_5},
@EmoteText_6 := {emotetext_6},
@EmoteText_7 := {emotetext_7},
@EmoteText_8 := {emotetext_8},
@EmoteText_9 := {emotetext_9},
@EmoteText_10 := {emotetext_10},
@EmoteText_11 := {emotetext_11},
@EmoteText_12 := {emotetext_12},
@EmoteText_13 := {emotetext_13},
@EmoteText_14 := {emotetext_14},
@EmoteText_15 := {emotetext_15},
@EmoteText_16 := {emotetext_16};

DELETE FROM emotestext_dbc WHERE
    ID=@ID
;

INSERT INTO emotestext_dbc (
    ID,
    Name,
    EmoteID,
    EmoteText_1,
    EmoteText_2,
    EmoteText_3,
    EmoteText_4,
    EmoteText_5,
    EmoteText_6,
    EmoteText_7,
    EmoteText_8,
    EmoteText_9,
    EmoteText_10,
    EmoteText_11,
    EmoteText_12,
    EmoteText_13,
    EmoteText_14,
    EmoteText_15,
    EmoteText_16
)
VALUES (
    @ID,
    @Name,
    @EmoteID,
    @EmoteText_1,
    @EmoteText_2,
    @EmoteText_3,
    @EmoteText_4,
    @EmoteText_5,
    @EmoteText_6,
    @EmoteText_7,
    @EmoteText_8,
    @EmoteText_9,
    @EmoteText_10,
    @EmoteText_11,
    @EmoteText_12,
    @EmoteText_13,
    @EmoteText_14,
    @EmoteText_15,
    @EmoteText_16
);