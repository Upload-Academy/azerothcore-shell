SET
@map := {map},
@parent := {parent},
@script := {script},
@allowMount := {allowmount};

DELETE FROM instance_template WHERE
    map=@map
;

INSERT INTO instance_template (
    map,
    parent,
    script,
    allowMount
)
VALUES (
    @map,
    @parent,
    @script,
    @allowMount
);