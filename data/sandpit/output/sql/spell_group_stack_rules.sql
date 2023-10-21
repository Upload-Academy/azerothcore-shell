SET
@group_id := {group_id},
@stack_rule := {stack_rule},
@description := {description};

DELETE FROM spell_group_stack_rules WHERE
    group_id=@group_id
;

INSERT INTO spell_group_stack_rules (
    group_id,
    stack_rule,
    description
)
VALUES (
    @group_id,
    @stack_rule,
    @description
);