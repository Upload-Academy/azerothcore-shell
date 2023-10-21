
import pymysql
import ruamel.yaml

from jinja2 import Template

serverIP = "192.168.88.145"
serverUser = "acore"
serverUserPwd = "acore"
characterSet = "utf8mb4"
cursorType = pymysql.cursors.DictCursor

mySQLConnection = pymysql.connect(host=serverIP,
                                  user=serverUser,
                                  password=serverUserPwd,
                                  charset=characterSet,
                                  cursorclass=cursorType)

results = {}
sql_template = """SET
{%- for k, v in data['variables'].items() %}
{%- if loop.last %}
@{{k}} := {{v}};
{%- else %}
@{{k}} := {{v}},
{%- endif %}
{%- endfor %}

DELETE FROM {{data['table']['name']}} WHERE
{%- for v in data['table']['conditions'] %}
{%- if loop.last %}
    {{v.column}}{{v.comparison}}{{v.value}}
{%- else %}
    {{v.column}}{{v.comparison}}{{v.value}} AND
{%- endif %}
{%- endfor %}
;

INSERT INTO {{data['table']['name']}} (
{%- for v in data['table']['columns'] %}
{%- if loop.last %}
    {{v}}
{%- else %}
    {{v}},
{%- endif %}
{%- endfor %}
)
VALUES (
{%- for v in data['table']['values'] %}
{%- if loop.last %}
    {{v}}
{%- else %}
    {{v}},
{%- endif %}
{%- endfor %}
);
"""

tmpl = Template(sql_template)
tables = [
    "achievement_category_dbc",
    "achievement_criteria_data",
    "achievement_criteria_dbc",
    "achievement_dbc",
    "achievement_reward",
    "achievement_reward_locale",
    "acore_string",
    "areagroup_dbc",
    "areapoi_dbc",
    "areatable_dbc",
    "areatrigger",
    "areatrigger_involvedrelation",
    "areatrigger_scripts",
    "areatrigger_tavern",
    "areatrigger_teleport",
    "auctionhouse_dbc",
    "bankbagslotprices_dbc",
    "barbershopstyle_dbc",
    "battleground_template",
    "battlemaster_entry",
    "battlemasterlist_dbc",
    "broadcast_text",
    "broadcast_text_locale",
    "charstartoutfit_dbc",
    "chartitles_dbc",
    "chatchannels_dbc",
    "chrclasses_dbc",
    "chrraces_dbc",
    "cinematiccamera_dbc",
    "cinematicsequences_dbc",
    "command",
    "conditions",
    "creature",
    "creature_addon",
    "creature_classlevelstats",
    "creature_equip_template",
    "creature_formations",
    "creature_loot_template",
    "creature_model_info",
    "creature_movement_override",
    "creature_onkill_reputation",
    "creature_questender",
    "creature_questitem",
    "creature_queststarter",
    "creature_summon_groups",
    "creature_template",
    "creature_template_addon",
    "creature_template_locale",
    "creature_template_movement",
    "creature_template_resistance",
    "creature_template_spell",
    "creature_text",
    "creature_text_locale",
    "creaturedisplayinfo_dbc",
    "creaturedisplayinfoextra_dbc",
    "creaturefamily_dbc",
    "creaturemodeldata_dbc",
    "creaturespelldata_dbc",
    "creaturetype_dbc",
    "currencytypes_dbc",
    "destructiblemodeldata_dbc",
    "disables",
    "disenchant_loot_template",
    "dungeon_access_requirements",
    "dungeon_access_template",
    "dungeonencounter_dbc",
    "durabilitycosts_dbc",
    "durabilityquality_dbc",
    "emotes_dbc",
    "emotestext_dbc",
    "event_scripts",
    "exploration_basexp",
    "faction_dbc",
    "factiontemplate_dbc",
    "fishing_loot_template",
    "game_event",
    "game_event_arena_seasons",
    "game_event_battleground_holiday",
    "game_event_condition",
    "game_event_creature",
    "game_event_creature_quest",
    "game_event_gameobject",
    "game_event_gameobject_quest",
    "game_event_model_equip",
    "game_event_npc_vendor",
    "game_event_npcflag",
    "game_event_pool",
    "game_event_prerequisite",
    "game_event_quest_condition",
    "game_event_seasonal_questrelation",
    "game_graveyard",
    "game_tele",
    "game_weather",
    "gameobject",
    "gameobject_addon",
    "gameobject_loot_template",
    "gameobject_questender",
    "gameobject_questitem",
    "gameobject_queststarter",
    "gameobject_template",
    "gameobject_template_addon",
    "gameobject_template_locale",
    "gameobjectartkit_dbc",
    "gameobjectdisplayinfo_dbc",
    "gemproperties_dbc",
    "glyphproperties_dbc",
    "glyphslot_dbc",
    "gossip_menu",
    "gossip_menu_option",
    "gossip_menu_option_locale",
    "graveyard_zone",
    "gtbarbershopcostbase_dbc",
    "gtchancetomeleecrit_dbc",
    "gtchancetomeleecritbase_dbc",
    "gtchancetospellcrit_dbc",
    "gtchancetospellcritbase_dbc",
    "gtcombatratings_dbc",
    "gtnpcmanacostscaler_dbc",
    "gtoctclasscombatratingscalar_dbc",
    "gtoctregenhp_dbc",
    "gtregenhpperspt_dbc",
    "gtregenmpperspt_dbc",
    "holiday_dates",
    "holidays_dbc",
    "instance_encounters",
    "instance_template",
    "item_dbc",
    "item_enchantment_template",
    "item_loot_template",
    "item_set_names",
    "item_set_names_locale",
    "item_template",
    "item_template_locale",
    "itembagfamily_dbc",
    "itemdisplayinfo_dbc",
    "itemextendedcost_dbc",
    "itemlimitcategory_dbc",
    "itemrandomproperties_dbc",
    "itemrandomsuffix_dbc",
    "itemset_dbc",
    "lfg_dungeon_rewards",
    "lfg_dungeon_template",
    "lfgdungeons_dbc",
    "light_dbc",
    "linked_respawn",
    "liquidtype_dbc",
    "lock_dbc",
    "mail_level_reward",
    "mail_loot_template",
    "mailtemplate_dbc",
    "map_dbc",
    "mapdifficulty_dbc",
    "milling_loot_template",
    "movie_dbc",
    "namesprofanity_dbc",
    "namesreserved_dbc",
    "npc_spellclick_spells",
    "npc_text",
    "npc_text_locale",
    "npc_trainer",
    "npc_vendor",
    "outdoorpvp_template",
    "overridespelldata_dbc",
    "page_text",
    "page_text_locale",
    "pet_levelstats",
    "pet_name_generation",
    "pet_name_generation_locale",
    "pickpocketing_loot_template",
    "player_class_stats",
    "player_factionchange_achievement",
    "player_factionchange_items",
    "player_factionchange_quests",
    "player_factionchange_reputations",
    "player_factionchange_spells",
    "player_factionchange_titles",
    "player_loot_template",
    "player_race_stats",
    "player_xp_for_level",
    "playercreateinfo",
    "playercreateinfo_action",
    "playercreateinfo_cast_spell",
    "playercreateinfo_item",
    "playercreateinfo_skills",
    "playercreateinfo_spell_custom",
    "points_of_interest",
    "points_of_interest_locale",
    "pool_creature",
    "pool_gameobject",
    "pool_pool",
    "pool_quest",
    "pool_template",
    "powerdisplay_dbc",
    "prospecting_loot_template",
    "pvpdifficulty_dbc",
    "quest_details",
    "quest_greeting",
    "quest_greeting_locale",
    "quest_mail_sender",
    "quest_money_reward",
    "quest_offer_reward",
    "quest_offer_reward_locale",
    "quest_poi",
    "quest_poi_points",
    "quest_request_items",
    "quest_request_items_locale",
    "quest_template",
    "quest_template_addon",
    "quest_template_locale",
    "questfactionreward_dbc",
    "questsort_dbc",
    "questxp_dbc",
    "randproppoints_dbc",
    "reference_loot_template",
    "reputation_reward_rate",
    "reputation_spillover_template",
    "scalingstatdistribution_dbc",
    "scalingstatvalues_dbc",
    "script_waypoint",
    "skill_discovery_template",
    "skill_extra_item_template",
    "skill_fishing_base_level",
    "skill_perfect_item_template",
    "skillline_dbc",
    "skilllineability_dbc",
    "skillraceclassinfo_dbc",
    "skilltiers_dbc",
    "skinning_loot_template",
    "smart_scripts",
    "soundentries_dbc",
    "spell_area",
    "spell_bonus_data",
    "spell_cooldown_overrides",
    "spell_custom_attr",
    "spell_dbc",
    "spell_enchant_proc_data",
    "spell_group",
    "spell_group_stack_rules",
    "spell_linked_spell",
    "spell_loot_template",
    "spell_mixology",
    "spell_pet_auras",
    "spell_proc",
    "spell_proc_event",
    "spell_ranks",
    "spell_required",
    "spell_script_names",
    "spell_scripts",
    "spell_target_position",
    "spell_threat",
    "spellcasttimes_dbc",
    "spellcategory_dbc",
    "spelldifficulty_dbc",
    "spellduration_dbc",
    "spellfocusobject_dbc",
    "spellitemenchantment_dbc",
    "spellitemenchantmentcondition_dbc",
    "spellradius_dbc",
    "spellrange_dbc",
    "spellrunecost_dbc",
    "spellshapeshiftform_dbc",
    "spellvisual_dbc",
    "stableslotprices_dbc",
    "summonproperties_dbc",
    "talent_dbc",
    "talenttab_dbc",
    "taxinodes_dbc",
    "taxipath_dbc",
    "taxipathnode_dbc",
    "teamcontributionpoints_dbc",
    "totemcategory_dbc",
    "transportanimation_dbc",
    "transportrotation_dbc",
    "transports",
    "updates",
    "updates_include",
    "vehicle_accessory",
    "vehicle_dbc",
    "vehicle_template_accessory",
    "vehicleseat_dbc",
    "version",
    "warden_checks",
    "waypoint_data",
    "waypoint_scripts",
    "waypoints",
    "wmoareatable_dbc",
    "worldmaparea_dbc",
    "worldmapoverlay_dbc",
]

cursorObject = mySQLConnection.cursor()
for table in tables:
    sql_fd = open(f"output/sql/{table}.sql", "w")
    yaml_fd = open(f"output/yaml/{table}.yaml", "w")

    cursorObject.execute(f"DESCRIBE acore_world.{table}")
    indexList = cursorObject.fetchall()

    data = {
        "variables": {
            # {
            #     "key": "value",
            # }
        },
        "table": {
            "name": table,
            "columns": [
                # "column_name",
            ],
            "values": [
                # "column_value",
            ],
            "conditions": [
                # {
                #     "column": "",
                #     "comparison": "",
                #     "value": "",
                # }
            ],
        }
    }

  # {
    #     'Field': 'modelid4',
    #     'Type': 'int(10) unsigned',
    #     'Null': 'NO',
    #     'Key': '',
    #     'Default': '0',
    #     'Extra': ''
    # }
    document = {
        # f"{data['table']['name']}_no_defaults": {},
        data['table']['name']: {},
    }

    for o in indexList:
        # Populate the SQL data
        if o['Key'] == 'PRI':
            data['table']['conditions'].append({
                "column": o['Field'],
                "comparison": "=",
                "value": f"@{o['Field']}",
            })

        if not o['Default']:
            document[data['table']['name'].lower()][o['Field'].lower()] = None
            # document[f"{data['table']['name']}_no_defaults"][o['Field']] = None
        else:
            document[data['table']['name'].lower()][o['Field'].lower()] = o['Default'].lower().rstrip()

        data['variables'].update({
            o['Field']: f"{{{o['Field'].lower()}}}",
        })
        data['table']['columns'].append(o['Field'])
        data['table']['values'].append(f"@{o['Field']}")

    sql_fd.write(tmpl.render(data=data))
    sql_fd.close()

    yaml = ruamel.yaml.YAML()
    yaml.preserve_quotes = True
    yaml.dump(document, yaml_fd)

mySQLConnection.close()
