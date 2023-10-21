SET
@core_version := {core_version},
@core_revision := {core_revision},
@db_version := {db_version},
@cache_id := {cache_id};

DELETE FROM version WHERE
    core_version=@core_version
;

INSERT INTO version (
    core_version,
    core_revision,
    db_version,
    cache_id
)
VALUES (
    @core_version,
    @core_revision,
    @db_version,
    @cache_id
);