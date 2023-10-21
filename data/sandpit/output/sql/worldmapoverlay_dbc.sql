SET
@ID := {id},
@MapAreaID := {mapareaid},
@AreaID_1 := {areaid_1},
@AreaID_2 := {areaid_2},
@AreaID_3 := {areaid_3},
@AreaID_4 := {areaid_4},
@MapPointX := {mappointx},
@MapPointY := {mappointy},
@TextureName := {texturename},
@TextureWidth := {texturewidth},
@TextureHeight := {textureheight},
@OffsetX := {offsetx},
@OffsetY := {offsety},
@HitRectTop := {hitrecttop},
@HitRectLeft := {hitrectleft},
@HitRectBottom := {hitrectbottom},
@HitRectRight := {hitrectright};

DELETE FROM worldmapoverlay_dbc WHERE
    ID=@ID
;

INSERT INTO worldmapoverlay_dbc (
    ID,
    MapAreaID,
    AreaID_1,
    AreaID_2,
    AreaID_3,
    AreaID_4,
    MapPointX,
    MapPointY,
    TextureName,
    TextureWidth,
    TextureHeight,
    OffsetX,
    OffsetY,
    HitRectTop,
    HitRectLeft,
    HitRectBottom,
    HitRectRight
)
VALUES (
    @ID,
    @MapAreaID,
    @AreaID_1,
    @AreaID_2,
    @AreaID_3,
    @AreaID_4,
    @MapPointX,
    @MapPointY,
    @TextureName,
    @TextureWidth,
    @TextureHeight,
    @OffsetX,
    @OffsetY,
    @HitRectTop,
    @HitRectLeft,
    @HitRectBottom,
    @HitRectRight
);