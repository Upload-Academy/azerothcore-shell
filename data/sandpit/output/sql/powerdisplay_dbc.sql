SET
@ID := {id},
@ActualType := {actualtype},
@GlobalstringBaseTag := {globalstringbasetag},
@Red := {red},
@Green := {green},
@Blue := {blue};

DELETE FROM powerdisplay_dbc WHERE
    ID=@ID
;

INSERT INTO powerdisplay_dbc (
    ID,
    ActualType,
    GlobalstringBaseTag,
    Red,
    Green,
    Blue
)
VALUES (
    @ID,
    @ActualType,
    @GlobalstringBaseTag,
    @Red,
    @Green,
    @Blue
);