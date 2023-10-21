SET
@ID := {id},
@EmoteSlashCommand := {emoteslashcommand},
@AnimID := {animid},
@EmoteFlags := {emoteflags},
@EmoteSpecProc := {emotespecproc},
@EmoteSpecProcParam := {emotespecprocparam},
@EventSoundID := {eventsoundid};

DELETE FROM emotes_dbc WHERE
    ID=@ID
;

INSERT INTO emotes_dbc (
    ID,
    EmoteSlashCommand,
    AnimID,
    EmoteFlags,
    EmoteSpecProc,
    EmoteSpecProcParam,
    EventSoundID
)
VALUES (
    @ID,
    @EmoteSlashCommand,
    @AnimID,
    @EmoteFlags,
    @EmoteSpecProc,
    @EmoteSpecProcParam,
    @EventSoundID
);