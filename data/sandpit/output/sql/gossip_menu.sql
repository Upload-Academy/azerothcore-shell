SET
@MenuID := {menuid},
@TextID := {textid};

DELETE FROM gossip_menu WHERE
    MenuID=@MenuID AND
    TextID=@TextID
;

INSERT INTO gossip_menu (
    MenuID,
    TextID
)
VALUES (
    @MenuID,
    @TextID
);