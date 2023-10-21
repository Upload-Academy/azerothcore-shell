SET
@ID := {id},
@MapID := {mapid},
@AreaID := {areaid},
@AreaName := {areaname},
@LocLeft := {locleft},
@LocRight := {locright},
@LocTop := {loctop},
@LocBottom := {locbottom},
@DisplayMapID := {displaymapid},
@DefaultDungeonFloor := {defaultdungeonfloor},
@ParentWorldMapID := {parentworldmapid};

DELETE FROM worldmaparea_dbc WHERE
    ID=@ID
;

INSERT INTO worldmaparea_dbc (
    ID,
    MapID,
    AreaID,
    AreaName,
    LocLeft,
    LocRight,
    LocTop,
    LocBottom,
    DisplayMapID,
    DefaultDungeonFloor,
    ParentWorldMapID
)
VALUES (
    @ID,
    @MapID,
    @AreaID,
    @AreaName,
    @LocLeft,
    @LocRight,
    @LocTop,
    @LocBottom,
    @DisplayMapID,
    @DefaultDungeonFloor,
    @ParentWorldMapID
);