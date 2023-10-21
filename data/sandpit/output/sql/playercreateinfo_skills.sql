SET
@raceMask := {racemask},
@classMask := {classmask},
@skill := {skill},
@rank := {rank},
@comment := {comment};

DELETE FROM playercreateinfo_skills WHERE
    raceMask=@raceMask AND
    classMask=@classMask AND
    skill=@skill
;

INSERT INTO playercreateinfo_skills (
    raceMask,
    classMask,
    skill,
    rank,
    comment
)
VALUES (
    @raceMask,
    @classMask,
    @skill,
    @rank,
    @comment
);