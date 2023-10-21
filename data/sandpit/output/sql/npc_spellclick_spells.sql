SET
@npc_entry := {npc_entry},
@spell_id := {spell_id},
@cast_flags := {cast_flags},
@user_type := {user_type};

DELETE FROM npc_spellclick_spells WHERE
    npc_entry=@npc_entry AND
    spell_id=@spell_id
;

INSERT INTO npc_spellclick_spells (
    npc_entry,
    spell_id,
    cast_flags,
    user_type
)
VALUES (
    @npc_entry,
    @spell_id,
    @cast_flags,
    @user_type
);