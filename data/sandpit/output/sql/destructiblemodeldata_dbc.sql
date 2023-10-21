SET
@ID := {id},
@State0Wmo := {state0wmo},
@State0DestructionDoodadSet := {state0destructiondoodadset},
@State0ImpactEffectDoodadSet := {state0impacteffectdoodadset},
@State0AmbientDoodadSet := {state0ambientdoodadset},
@State1Wmo := {state1wmo},
@State1DestructionDoodadSet := {state1destructiondoodadset},
@State1ImpactEffectDoodadSet := {state1impacteffectdoodadset},
@State1AmbientDoodadSet := {state1ambientdoodadset},
@State2Wmo := {state2wmo},
@State2DestructionDoodadSet := {state2destructiondoodadset},
@State2ImpactEffectDoodadSet := {state2impacteffectdoodadset},
@State2AmbientDoodadSet := {state2ambientdoodadset},
@State3Wmo := {state3wmo},
@State3DestructionDoodadSet := {state3destructiondoodadset},
@State3ImpactEffectDoodadSet := {state3impacteffectdoodadset},
@State3AmbientDoodadSet := {state3ambientdoodadset},
@Field17 := {field17},
@Field18 := {field18};

DELETE FROM destructiblemodeldata_dbc WHERE
    ID=@ID
;

INSERT INTO destructiblemodeldata_dbc (
    ID,
    State0Wmo,
    State0DestructionDoodadSet,
    State0ImpactEffectDoodadSet,
    State0AmbientDoodadSet,
    State1Wmo,
    State1DestructionDoodadSet,
    State1ImpactEffectDoodadSet,
    State1AmbientDoodadSet,
    State2Wmo,
    State2DestructionDoodadSet,
    State2ImpactEffectDoodadSet,
    State2AmbientDoodadSet,
    State3Wmo,
    State3DestructionDoodadSet,
    State3ImpactEffectDoodadSet,
    State3AmbientDoodadSet,
    Field17,
    Field18
)
VALUES (
    @ID,
    @State0Wmo,
    @State0DestructionDoodadSet,
    @State0ImpactEffectDoodadSet,
    @State0AmbientDoodadSet,
    @State1Wmo,
    @State1DestructionDoodadSet,
    @State1ImpactEffectDoodadSet,
    @State1AmbientDoodadSet,
    @State2Wmo,
    @State2DestructionDoodadSet,
    @State2ImpactEffectDoodadSet,
    @State2AmbientDoodadSet,
    @State3Wmo,
    @State3DestructionDoodadSet,
    @State3ImpactEffectDoodadSet,
    @State3AmbientDoodadSet,
    @Field17,
    @Field18
);