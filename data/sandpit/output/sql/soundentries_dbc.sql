SET
@ID := {id},
@SoundType := {soundtype},
@Name := {name},
@File_1 := {file_1},
@File_2 := {file_2},
@File_3 := {file_3},
@File_4 := {file_4},
@File_5 := {file_5},
@File_6 := {file_6},
@File_7 := {file_7},
@File_8 := {file_8},
@File_9 := {file_9},
@File_10 := {file_10},
@Freq_1 := {freq_1},
@Freq_2 := {freq_2},
@Freq_3 := {freq_3},
@Freq_4 := {freq_4},
@Freq_5 := {freq_5},
@Freq_6 := {freq_6},
@Freq_7 := {freq_7},
@Freq_8 := {freq_8},
@Freq_9 := {freq_9},
@Freq_10 := {freq_10},
@DirectoryBase := {directorybase},
@Volumefloat := {volumefloat},
@Flags := {flags},
@MinDistance := {mindistance},
@DistanceCutoff := {distancecutoff},
@EAXDef := {eaxdef},
@SoundEntriesAdvancedID := {soundentriesadvancedid};

DELETE FROM soundentries_dbc WHERE
    ID=@ID
;

INSERT INTO soundentries_dbc (
    ID,
    SoundType,
    Name,
    File_1,
    File_2,
    File_3,
    File_4,
    File_5,
    File_6,
    File_7,
    File_8,
    File_9,
    File_10,
    Freq_1,
    Freq_2,
    Freq_3,
    Freq_4,
    Freq_5,
    Freq_6,
    Freq_7,
    Freq_8,
    Freq_9,
    Freq_10,
    DirectoryBase,
    Volumefloat,
    Flags,
    MinDistance,
    DistanceCutoff,
    EAXDef,
    SoundEntriesAdvancedID
)
VALUES (
    @ID,
    @SoundType,
    @Name,
    @File_1,
    @File_2,
    @File_3,
    @File_4,
    @File_5,
    @File_6,
    @File_7,
    @File_8,
    @File_9,
    @File_10,
    @Freq_1,
    @Freq_2,
    @Freq_3,
    @Freq_4,
    @Freq_5,
    @Freq_6,
    @Freq_7,
    @Freq_8,
    @Freq_9,
    @Freq_10,
    @DirectoryBase,
    @Volumefloat,
    @Flags,
    @MinDistance,
    @DistanceCutoff,
    @EAXDef,
    @SoundEntriesAdvancedID
);