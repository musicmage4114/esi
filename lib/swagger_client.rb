=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.4.5

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

# Common files
require 'swagger_client/api_client'
require 'swagger_client/api_error'
require 'swagger_client/version'
require 'swagger_client/configuration'

# Models
require 'swagger_client/models/delete_characters_character_id_contacts_forbidden'
require 'swagger_client/models/delete_characters_character_id_contacts_internal_server_error'
require 'swagger_client/models/delete_characters_character_id_fittings_fitting_id_forbidden'
require 'swagger_client/models/delete_characters_character_id_fittings_fitting_id_internal_server_error'
require 'swagger_client/models/delete_characters_character_id_mail_labels_label_id_forbidden'
require 'swagger_client/models/delete_characters_character_id_mail_labels_label_id_internal_server_error'
require 'swagger_client/models/delete_characters_character_id_mail_labels_label_id_unprocessable_entity'
require 'swagger_client/models/delete_characters_character_id_mail_mail_id_forbidden'
require 'swagger_client/models/delete_characters_character_id_mail_mail_id_internal_server_error'
require 'swagger_client/models/delete_fleets_fleet_id_members_member_id_forbidden'
require 'swagger_client/models/delete_fleets_fleet_id_members_member_id_internal_server_error'
require 'swagger_client/models/delete_fleets_fleet_id_members_member_id_not_found'
require 'swagger_client/models/delete_fleets_fleet_id_squads_squad_id_forbidden'
require 'swagger_client/models/delete_fleets_fleet_id_squads_squad_id_internal_server_error'
require 'swagger_client/models/delete_fleets_fleet_id_squads_squad_id_not_found'
require 'swagger_client/models/delete_fleets_fleet_id_wings_wing_id_forbidden'
require 'swagger_client/models/delete_fleets_fleet_id_wings_wing_id_internal_server_error'
require 'swagger_client/models/delete_fleets_fleet_id_wings_wing_id_not_found'
require 'swagger_client/models/get_corporations_in_alliance_internal_server_error'
require 'swagger_client/models/get_alliance_icon_internal_server_error'
require 'swagger_client/models/get_alliance_icon_not_found'
require 'swagger_client/models/get_alliance_icon_ok'
require 'swagger_client/models/get_alliance_by_id_internal_server_error'
require 'swagger_client/models/get_alliance_by_id_not_found'
require 'swagger_client/models/get_alliance_by_id_ok'
require 'swagger_client/models/get_alliances_internal_server_error'
require 'swagger_client/models/get_alliance_names_200_ok'
require 'swagger_client/models/get_alliance_names_internal_server_error'
require 'swagger_client/models/get_character_research_agents_200_ok'
require 'swagger_client/models/get_character_research_agents_forbidden'
require 'swagger_client/models/get_character_research_agents_internal_server_error'
require 'swagger_client/models/get_character_assets_200_ok'
require 'swagger_client/models/get_character_assets_forbidden'
require 'swagger_client/models/get_character_assets_internal_server_error'
require 'swagger_client/models/get_character_blueprints_200_ok'
require 'swagger_client/models/get_character_blueprints_forbidden'
require 'swagger_client/models/get_character_blueprints_internal_server_error'
require 'swagger_client/models/get_character_bookmarks_200_ok'
require 'swagger_client/models/get_character_bookmarks_coordinates'
require 'swagger_client/models/get_character_bookmarks_folders_200_ok'
require 'swagger_client/models/get_character_bookmarks_folders_forbidden'
require 'swagger_client/models/get_character_bookmarks_folders_internal_server_error'
require 'swagger_client/models/get_character_bookmarks_forbidden'
require 'swagger_client/models/get_character_bookmarks_internal_server_error'
require 'swagger_client/models/get_character_bookmarks_item'
require 'swagger_client/models/get_character_bookmarks_target'
require 'swagger_client/models/get_character_calendar_200_ok'
require 'swagger_client/models/get_calendar_event_by_id_forbidden'
require 'swagger_client/models/get_calendar_event_by_id_internal_server_error'
require 'swagger_client/models/get_calendar_event_by_id_ok'
require 'swagger_client/models/get_character_calendar_forbidden'
require 'swagger_client/models/get_character_calendar_internal_server_error'
require 'swagger_client/models/get_character_chat_channels_200_ok'
require 'swagger_client/models/get_character_chat_channels_allowed'
require 'swagger_client/models/get_character_chat_channels_blocked'
require 'swagger_client/models/get_character_chat_channels_forbidden'
require 'swagger_client/models/get_character_chat_channels_internal_server_error'
require 'swagger_client/models/get_character_chat_channels_muted'
require 'swagger_client/models/get_character_chat_channels_operator'
require 'swagger_client/models/get_character_clones_forbidden'
require 'swagger_client/models/get_character_clones_home_location'
require 'swagger_client/models/get_character_clones_internal_server_error'
require 'swagger_client/models/get_character_clones_jump_clone'
require 'swagger_client/models/get_character_clones_ok'
require 'swagger_client/models/get_characters_character_id_contacts_200_ok'
require 'swagger_client/models/get_characters_character_id_contacts_forbidden'
require 'swagger_client/models/get_characters_character_id_contacts_internal_server_error'
require 'swagger_client/models/get_characters_character_id_contacts_labels_200_ok'
require 'swagger_client/models/get_characters_character_id_contacts_labels_forbidden'
require 'swagger_client/models/get_characters_character_id_contacts_labels_internal_server_error'
require 'swagger_client/models/get_character_employment_history_200_ok'
require 'swagger_client/models/get_character_employment_history_internal_server_error'
require 'swagger_client/models/get_characters_character_id_fittings_200_ok'
require 'swagger_client/models/get_characters_character_id_fittings_forbidden'
require 'swagger_client/models/get_characters_character_id_fittings_internal_server_error'
require 'swagger_client/models/get_characters_character_id_fittings_item'
require 'swagger_client/models/get_characters_character_id_industry_jobs_200_ok'
require 'swagger_client/models/get_characters_character_id_industry_jobs_forbidden'
require 'swagger_client/models/get_characters_character_id_industry_jobs_internal_server_error'
require 'swagger_client/models/get_characters_character_id_internal_server_error'
require 'swagger_client/models/get_characters_character_id_killmails_recent_200_ok'
require 'swagger_client/models/get_characters_character_id_killmails_recent_forbidden'
require 'swagger_client/models/get_characters_character_id_killmails_recent_internal_server_error'
require 'swagger_client/models/get_characters_character_id_location_forbidden'
require 'swagger_client/models/get_characters_character_id_location_internal_server_error'
require 'swagger_client/models/get_characters_character_id_location_ok'
require 'swagger_client/models/get_characters_character_id_loyalty_points_200_ok'
require 'swagger_client/models/get_characters_character_id_loyalty_points_forbidden'
require 'swagger_client/models/get_characters_character_id_loyalty_points_internal_server_error'
require 'swagger_client/models/get_characters_character_id_mail_200_ok'
require 'swagger_client/models/get_characters_character_id_mail_forbidden'
require 'swagger_client/models/get_characters_character_id_mail_internal_server_error'
require 'swagger_client/models/get_characters_character_id_mail_labels_forbidden'
require 'swagger_client/models/get_characters_character_id_mail_labels_internal_server_error'
require 'swagger_client/models/get_characters_character_id_mail_labels_label'
require 'swagger_client/models/get_characters_character_id_mail_labels_ok'
require 'swagger_client/models/get_characters_character_id_mail_lists_200_ok'
require 'swagger_client/models/get_characters_character_id_mail_lists_forbidden'
require 'swagger_client/models/get_characters_character_id_mail_lists_internal_server_error'
require 'swagger_client/models/get_characters_character_id_mail_mail_id_forbidden'
require 'swagger_client/models/get_characters_character_id_mail_mail_id_internal_server_error'
require 'swagger_client/models/get_characters_character_id_mail_mail_id_not_found'
require 'swagger_client/models/get_characters_character_id_mail_mail_id_ok'
require 'swagger_client/models/get_characters_character_id_mail_mail_id_recipient'
require 'swagger_client/models/get_characters_character_id_mail_recipient'
require 'swagger_client/models/get_character_medals_200_ok'
require 'swagger_client/models/get_character_medals_forbidden'
require 'swagger_client/models/get_character_medals_graphic'
require 'swagger_client/models/get_character_medals_internal_server_error'
require 'swagger_client/models/get_characters_character_id_not_found'
require 'swagger_client/models/get_characters_character_id_ok'
require 'swagger_client/models/get_characters_character_id_opportunities_200_ok'
require 'swagger_client/models/get_characters_character_id_opportunities_forbidden'
require 'swagger_client/models/get_characters_character_id_opportunities_internal_server_error'
require 'swagger_client/models/get_characters_character_id_orders_200_ok'
require 'swagger_client/models/get_characters_character_id_orders_forbidden'
require 'swagger_client/models/get_characters_character_id_orders_internal_server_error'
require 'swagger_client/models/get_characters_character_id_planets_200_ok'
require 'swagger_client/models/get_characters_character_id_planets_forbidden'
require 'swagger_client/models/get_characters_character_id_planets_internal_server_error'
require 'swagger_client/models/get_characters_character_id_planets_planet_id_extractor_details'
require 'swagger_client/models/get_characters_character_id_planets_planet_id_factory_details'
require 'swagger_client/models/get_characters_character_id_planets_planet_id_forbidden'
require 'swagger_client/models/get_characters_character_id_planets_planet_id_head'
require 'swagger_client/models/get_characters_character_id_planets_planet_id_internal_server_error'
require 'swagger_client/models/get_characters_character_id_planets_planet_id_link'
require 'swagger_client/models/get_characters_character_id_planets_planet_id_not_found'
require 'swagger_client/models/get_characters_character_id_planets_planet_id_ok'
require 'swagger_client/models/get_characters_character_id_planets_planet_id_pin'
require 'swagger_client/models/get_characters_character_id_planets_planet_id_route'
require 'swagger_client/models/get_characters_character_id_planets_planet_id_waypoint'
require 'swagger_client/models/get_character_portrait_internal_server_error'
require 'swagger_client/models/get_character_portrait_not_found'
require 'swagger_client/models/get_character_portrait_ok'
require 'swagger_client/models/get_characters_character_id_search_forbidden'
require 'swagger_client/models/get_characters_character_id_search_internal_server_error'
require 'swagger_client/models/get_characters_character_id_search_ok'
require 'swagger_client/models/get_characters_character_id_ship_forbidden'
require 'swagger_client/models/get_characters_character_id_ship_internal_server_error'
require 'swagger_client/models/get_characters_character_id_ship_ok'
require 'swagger_client/models/get_characters_character_id_skillqueue_200_ok'
require 'swagger_client/models/get_characters_character_id_skillqueue_forbidden'
require 'swagger_client/models/get_characters_character_id_skillqueue_internal_server_error'
require 'swagger_client/models/get_characters_character_id_skills_forbidden'
require 'swagger_client/models/get_characters_character_id_skills_internal_server_error'
require 'swagger_client/models/get_characters_character_id_skills_ok'
require 'swagger_client/models/get_characters_character_id_skills_skill'
require 'swagger_client/models/get_character_standings_200_ok'
require 'swagger_client/models/get_character_standings_forbidden'
require 'swagger_client/models/get_character_standings_internal_server_error'
require 'swagger_client/models/get_characters_character_id_wallets_200_ok'
require 'swagger_client/models/get_characters_character_id_wallets_forbidden'
require 'swagger_client/models/get_characters_character_id_wallets_internal_server_error'
require 'swagger_client/models/get_character_names_200_ok'
require 'swagger_client/models/get_character_names_internal_server_error'
require 'swagger_client/models/get_corporations_corporation_id_alliancehistory_200_ok'
require 'swagger_client/models/get_corporations_corporation_id_alliancehistory_alliance'
require 'swagger_client/models/get_corporations_corporation_id_alliancehistory_internal_server_error'
require 'swagger_client/models/get_corporations_corporation_id_icons_internal_server_error'
require 'swagger_client/models/get_corporations_corporation_id_icons_not_found'
require 'swagger_client/models/get_corporations_corporation_id_icons_ok'
require 'swagger_client/models/get_corporations_corporation_id_internal_server_error'
require 'swagger_client/models/get_corporations_corporation_id_members_200_ok'
require 'swagger_client/models/get_corporations_corporation_id_members_forbidden'
require 'swagger_client/models/get_corporations_corporation_id_members_internal_server_error'
require 'swagger_client/models/get_corporations_corporation_id_not_found'
require 'swagger_client/models/get_corporations_corporation_id_ok'
require 'swagger_client/models/get_corporations_corporation_id_roles_200_ok'
require 'swagger_client/models/get_corporations_corporation_id_roles_forbidden'
require 'swagger_client/models/get_corporations_corporation_id_roles_internal_server_error'
require 'swagger_client/models/get_corporations_corporation_id_structures_200_ok'
require 'swagger_client/models/get_corporations_corporation_id_structures_current_vul'
require 'swagger_client/models/get_corporations_corporation_id_structures_forbidden'
require 'swagger_client/models/get_corporations_corporation_id_structures_internal_server_error'
require 'swagger_client/models/get_corporations_corporation_id_structures_next_vul'
require 'swagger_client/models/get_corporations_corporation_id_structures_service'
require 'swagger_client/models/get_corporations_names_200_ok'
require 'swagger_client/models/get_corporations_names_internal_server_error'
require 'swagger_client/models/get_corporations_npccorps_internal_server_error'
require 'swagger_client/models/get_dogma_attributes_attribute_id_internal_server_error'
require 'swagger_client/models/get_dogma_attributes_attribute_id_not_found'
require 'swagger_client/models/get_dogma_attributes_attribute_id_ok'
require 'swagger_client/models/get_dogma_attributes_internal_server_error'
require 'swagger_client/models/get_dogma_effects_effect_id_internal_server_error'
require 'swagger_client/models/get_dogma_effects_effect_id_modifier'
require 'swagger_client/models/get_dogma_effects_effect_id_not_found'
require 'swagger_client/models/get_dogma_effects_effect_id_ok'
require 'swagger_client/models/get_dogma_effects_internal_server_error'
require 'swagger_client/models/get_fleets_fleet_id_forbidden'
require 'swagger_client/models/get_fleets_fleet_id_internal_server_error'
require 'swagger_client/models/get_fleets_fleet_id_members_200_ok'
require 'swagger_client/models/get_fleets_fleet_id_members_forbidden'
require 'swagger_client/models/get_fleets_fleet_id_members_internal_server_error'
require 'swagger_client/models/get_fleets_fleet_id_members_not_found'
require 'swagger_client/models/get_fleets_fleet_id_not_found'
require 'swagger_client/models/get_fleets_fleet_id_ok'
require 'swagger_client/models/get_fleets_fleet_id_wings_200_ok'
require 'swagger_client/models/get_fleets_fleet_id_wings_forbidden'
require 'swagger_client/models/get_fleets_fleet_id_wings_internal_server_error'
require 'swagger_client/models/get_fleets_fleet_id_wings_not_found'
require 'swagger_client/models/get_fleets_fleet_id_wings_squad'
require 'swagger_client/models/get_incursions_200_ok'
require 'swagger_client/models/get_incursions_internal_server_error'
require 'swagger_client/models/get_industry_facilities_200_ok'
require 'swagger_client/models/get_industry_facilities_internal_server_error'
require 'swagger_client/models/get_industry_systems_200_ok'
require 'swagger_client/models/get_industry_systems_cost_indice'
require 'swagger_client/models/get_industry_systems_internal_server_error'
require 'swagger_client/models/get_insurance_prices_200_ok'
require 'swagger_client/models/get_insurance_prices_internal_server_error'
require 'swagger_client/models/get_insurance_prices_level'
require 'swagger_client/models/get_killmails_killmail_id_killmail_hash_attacker'
require 'swagger_client/models/get_killmails_killmail_id_killmail_hash_internal_server_error'
require 'swagger_client/models/get_killmails_killmail_id_killmail_hash_item'
require 'swagger_client/models/get_killmails_killmail_id_killmail_hash_item_1'
require 'swagger_client/models/get_killmails_killmail_id_killmail_hash_ok'
require 'swagger_client/models/get_killmails_killmail_id_killmail_hash_position'
require 'swagger_client/models/get_killmails_killmail_id_killmail_hash_unprocessable_entity'
require 'swagger_client/models/get_killmails_killmail_id_killmail_hash_victim'
require 'swagger_client/models/get_loyalty_stores_corporation_id_offers_200_ok'
require 'swagger_client/models/get_loyalty_stores_corporation_id_offers_internal_server_error'
require 'swagger_client/models/get_loyalty_stores_corporation_id_offers_required_item'
require 'swagger_client/models/get_markets_groups_internal_server_error'
require 'swagger_client/models/get_markets_groups_market_group_id_internal_server_error'
require 'swagger_client/models/get_markets_groups_market_group_id_not_found'
require 'swagger_client/models/get_markets_groups_market_group_id_ok'
require 'swagger_client/models/get_markets_prices_200_ok'
require 'swagger_client/models/get_markets_prices_internal_server_error'
require 'swagger_client/models/get_markets_region_id_history_200_ok'
require 'swagger_client/models/get_markets_region_id_history_internal_server_error'
require 'swagger_client/models/get_markets_region_id_history_unprocessable_entity'
require 'swagger_client/models/get_markets_region_id_orders_200_ok'
require 'swagger_client/models/get_markets_region_id_orders_internal_server_error'
require 'swagger_client/models/get_markets_region_id_orders_unprocessable_entity'
require 'swagger_client/models/get_markets_structures_structure_id_200_ok'
require 'swagger_client/models/get_markets_structures_structure_id_forbidden'
require 'swagger_client/models/get_markets_structures_structure_id_internal_server_error'
require 'swagger_client/models/get_opportunities_groups_group_id_internal_server_error'
require 'swagger_client/models/get_opportunities_groups_group_id_ok'
require 'swagger_client/models/get_opportunities_groups_internal_server_error'
require 'swagger_client/models/get_opportunities_tasks_internal_server_error'
require 'swagger_client/models/get_opportunities_tasks_task_id_internal_server_error'
require 'swagger_client/models/get_opportunities_tasks_task_id_ok'
require 'swagger_client/models/get_route_origin_destination_internal_server_error'
require 'swagger_client/models/get_route_origin_destination_not_found'
require 'swagger_client/models/get_search_internal_server_error'
require 'swagger_client/models/get_search_ok'
require 'swagger_client/models/get_sovereignty_campaigns_200_ok'
require 'swagger_client/models/get_sovereignty_campaigns_internal_server_error'
require 'swagger_client/models/get_sovereignty_campaigns_participant'
require 'swagger_client/models/get_sovereignty_map_200_ok'
require 'swagger_client/models/get_sovereignty_map_internal_server_error'
require 'swagger_client/models/get_sovereignty_structures_200_ok'
require 'swagger_client/models/get_sovereignty_structures_internal_server_error'
require 'swagger_client/models/get_status_internal_server_error'
require 'swagger_client/models/get_status_ok'
require 'swagger_client/models/get_universe_bloodlines_200_ok'
require 'swagger_client/models/get_universe_bloodlines_internal_server_error'
require 'swagger_client/models/get_universe_categories_category_id_internal_server_error'
require 'swagger_client/models/get_universe_categories_category_id_not_found'
require 'swagger_client/models/get_universe_categories_category_id_ok'
require 'swagger_client/models/get_universe_categories_internal_server_error'
require 'swagger_client/models/get_universe_constellations_constellation_id_internal_server_error'
require 'swagger_client/models/get_universe_constellations_constellation_id_not_found'
require 'swagger_client/models/get_universe_constellations_constellation_id_ok'
require 'swagger_client/models/get_universe_constellations_constellation_id_position'
require 'swagger_client/models/get_universe_constellations_internal_server_error'
require 'swagger_client/models/get_universe_factions_200_ok'
require 'swagger_client/models/get_universe_factions_internal_server_error'
require 'swagger_client/models/get_universe_graphics_graphic_id_internal_server_error'
require 'swagger_client/models/get_universe_graphics_graphic_id_not_found'
require 'swagger_client/models/get_universe_graphics_graphic_id_ok'
require 'swagger_client/models/get_universe_graphics_internal_server_error'
require 'swagger_client/models/get_universe_groups_group_id_internal_server_error'
require 'swagger_client/models/get_universe_groups_group_id_not_found'
require 'swagger_client/models/get_universe_groups_group_id_ok'
require 'swagger_client/models/get_universe_groups_internal_server_error'
require 'swagger_client/models/get_universe_moons_moon_id_internal_server_error'
require 'swagger_client/models/get_universe_moons_moon_id_not_found'
require 'swagger_client/models/get_universe_moons_moon_id_ok'
require 'swagger_client/models/get_universe_moons_moon_id_position'
require 'swagger_client/models/get_universe_planets_planet_id_internal_server_error'
require 'swagger_client/models/get_universe_planets_planet_id_not_found'
require 'swagger_client/models/get_universe_planets_planet_id_ok'
require 'swagger_client/models/get_universe_planets_planet_id_position'
require 'swagger_client/models/get_universe_races_200_ok'
require 'swagger_client/models/get_universe_races_internal_server_error'
require 'swagger_client/models/get_universe_regions_internal_server_error'
require 'swagger_client/models/get_universe_regions_region_id_internal_server_error'
require 'swagger_client/models/get_universe_regions_region_id_not_found'
require 'swagger_client/models/get_universe_regions_region_id_ok'
require 'swagger_client/models/get_universe_schematics_schematic_id_internal_server_error'
require 'swagger_client/models/get_universe_schematics_schematic_id_not_found'
require 'swagger_client/models/get_universe_schematics_schematic_id_ok'
require 'swagger_client/models/get_universe_stargates_stargate_id_destination'
require 'swagger_client/models/get_universe_stargates_stargate_id_internal_server_error'
require 'swagger_client/models/get_universe_stargates_stargate_id_not_found'
require 'swagger_client/models/get_universe_stargates_stargate_id_ok'
require 'swagger_client/models/get_universe_stargates_stargate_id_position'
require 'swagger_client/models/get_universe_stations_station_id_internal_server_error'
require 'swagger_client/models/get_universe_stations_station_id_not_found'
require 'swagger_client/models/get_universe_stations_station_id_ok'
require 'swagger_client/models/get_universe_stations_station_id_position'
require 'swagger_client/models/get_universe_structures_internal_server_error'
require 'swagger_client/models/get_universe_structures_structure_id_forbidden'
require 'swagger_client/models/get_universe_structures_structure_id_internal_server_error'
require 'swagger_client/models/get_universe_structures_structure_id_not_found'
require 'swagger_client/models/get_universe_structures_structure_id_ok'
require 'swagger_client/models/get_universe_structures_structure_id_position'
require 'swagger_client/models/get_universe_system_jumps_200_ok'
require 'swagger_client/models/get_universe_system_jumps_internal_server_error'
require 'swagger_client/models/get_universe_system_kills_200_ok'
require 'swagger_client/models/get_universe_system_kills_internal_server_error'
require 'swagger_client/models/get_universe_systems_internal_server_error'
require 'swagger_client/models/get_universe_systems_system_id_internal_server_error'
require 'swagger_client/models/get_universe_systems_system_id_not_found'
require 'swagger_client/models/get_universe_systems_system_id_ok'
require 'swagger_client/models/get_universe_systems_system_id_planet'
require 'swagger_client/models/get_universe_systems_system_id_position'
require 'swagger_client/models/get_universe_types_internal_server_error'
require 'swagger_client/models/get_universe_types_type_id_dogma_attribute'
require 'swagger_client/models/get_universe_types_type_id_dogma_effect'
require 'swagger_client/models/get_universe_types_type_id_internal_server_error'
require 'swagger_client/models/get_universe_types_type_id_not_found'
require 'swagger_client/models/get_universe_types_type_id_ok'
require 'swagger_client/models/get_wars_internal_server_error'
require 'swagger_client/models/get_wars_war_id_aggressor'
require 'swagger_client/models/get_wars_war_id_ally'
require 'swagger_client/models/get_wars_war_id_defender'
require 'swagger_client/models/get_wars_war_id_internal_server_error'
require 'swagger_client/models/get_wars_war_id_killmails_200_ok'
require 'swagger_client/models/get_wars_war_id_killmails_internal_server_error'
require 'swagger_client/models/get_wars_war_id_killmails_unprocessable_entity'
require 'swagger_client/models/get_wars_war_id_ok'
require 'swagger_client/models/get_wars_war_id_unprocessable_entity'
require 'swagger_client/models/get_characters_affiliation_by_id_200_ok'
require 'swagger_client/models/get_characters_affiliation_by_id_internal_server_error'
require 'swagger_client/models/get_characters_affiliation_by_id_unprocessable_entity'
require 'swagger_client/models/post_characters_character_id_contacts_forbidden'
require 'swagger_client/models/post_characters_character_id_contacts_internal_server_error'
require 'swagger_client/models/calculate_cspa_charge_characters'
require 'swagger_client/models/calculate_cspa_charge_created'
require 'swagger_client/models/calculate_cspa_charge_forbidden'
require 'swagger_client/models/calculate_cspa_charge_internal_server_error'
require 'swagger_client/models/post_characters_character_id_fittings_created'
require 'swagger_client/models/post_characters_character_id_fittings_fitting'
require 'swagger_client/models/post_characters_character_id_fittings_forbidden'
require 'swagger_client/models/post_characters_character_id_fittings_internal_server_error'
require 'swagger_client/models/post_characters_character_id_fittings_item'
require 'swagger_client/models/post_characters_character_id_mail_bad_request'
require 'swagger_client/models/post_characters_character_id_mail_forbidden'
require 'swagger_client/models/post_characters_character_id_mail_internal_server_error'
require 'swagger_client/models/post_characters_character_id_mail_labels_forbidden'
require 'swagger_client/models/post_characters_character_id_mail_labels_internal_server_error'
require 'swagger_client/models/post_characters_character_id_mail_labels_label'
require 'swagger_client/models/post_characters_character_id_mail_mail'
require 'swagger_client/models/post_characters_character_id_mail_recipient'
require 'swagger_client/models/post_fleets_fleet_id_members_forbidden'
require 'swagger_client/models/post_fleets_fleet_id_members_internal_server_error'
require 'swagger_client/models/post_fleets_fleet_id_members_invitation'
require 'swagger_client/models/post_fleets_fleet_id_members_not_found'
require 'swagger_client/models/post_fleets_fleet_id_members_unprocessable_entity'
require 'swagger_client/models/post_fleets_fleet_id_wings_created'
require 'swagger_client/models/post_fleets_fleet_id_wings_forbidden'
require 'swagger_client/models/post_fleets_fleet_id_wings_internal_server_error'
require 'swagger_client/models/post_fleets_fleet_id_wings_not_found'
require 'swagger_client/models/post_fleets_fleet_id_wings_wing_id_squads_created'
require 'swagger_client/models/post_fleets_fleet_id_wings_wing_id_squads_forbidden'
require 'swagger_client/models/post_fleets_fleet_id_wings_wing_id_squads_internal_server_error'
require 'swagger_client/models/post_fleets_fleet_id_wings_wing_id_squads_not_found'
require 'swagger_client/models/post_ui_autopilot_waypoint_forbidden'
require 'swagger_client/models/post_ui_autopilot_waypoint_internal_server_error'
require 'swagger_client/models/post_ui_openwindow_contract_forbidden'
require 'swagger_client/models/post_ui_openwindow_contract_internal_server_error'
require 'swagger_client/models/post_ui_openwindow_information_forbidden'
require 'swagger_client/models/post_ui_openwindow_information_internal_server_error'
require 'swagger_client/models/post_ui_openwindow_marketdetails_forbidden'
require 'swagger_client/models/post_ui_openwindow_marketdetails_internal_server_error'
require 'swagger_client/models/post_ui_openwindow_newmail_forbidden'
require 'swagger_client/models/post_ui_openwindow_newmail_internal_server_error'
require 'swagger_client/models/post_ui_openwindow_newmail_new_mail'
require 'swagger_client/models/post_ui_openwindow_newmail_unprocessable_entity'
require 'swagger_client/models/post_universe_names_200_ok'
require 'swagger_client/models/post_universe_names_internal_server_error'
require 'swagger_client/models/post_universe_names_not_found'
require 'swagger_client/models/respond_to_calendar_event_forbidden'
require 'swagger_client/models/respond_to_calendar_event_internal_server_error'
require 'swagger_client/models/respond_to_calendar_event_response'
require 'swagger_client/models/put_characters_character_id_contacts_forbidden'
require 'swagger_client/models/put_characters_character_id_contacts_internal_server_error'
require 'swagger_client/models/put_characters_character_id_mail_mail_id_bad_request'
require 'swagger_client/models/put_characters_character_id_mail_mail_id_contents'
require 'swagger_client/models/put_characters_character_id_mail_mail_id_forbidden'
require 'swagger_client/models/put_characters_character_id_mail_mail_id_internal_server_error'
require 'swagger_client/models/put_corporations_corporation_id_structures_structure_id_forbidden'
require 'swagger_client/models/put_corporations_corporation_id_structures_structure_id_internal_server_error'
require 'swagger_client/models/put_corporations_corporation_id_structures_structure_id_new_schedule'
require 'swagger_client/models/put_fleets_fleet_id_bad_request'
require 'swagger_client/models/put_fleets_fleet_id_forbidden'
require 'swagger_client/models/put_fleets_fleet_id_internal_server_error'
require 'swagger_client/models/put_fleets_fleet_id_members_member_id_forbidden'
require 'swagger_client/models/put_fleets_fleet_id_members_member_id_internal_server_error'
require 'swagger_client/models/put_fleets_fleet_id_members_member_id_movement'
require 'swagger_client/models/put_fleets_fleet_id_members_member_id_not_found'
require 'swagger_client/models/put_fleets_fleet_id_members_member_id_unprocessable_entity'
require 'swagger_client/models/put_fleets_fleet_id_new_settings'
require 'swagger_client/models/put_fleets_fleet_id_not_found'
require 'swagger_client/models/put_fleets_fleet_id_squads_squad_id_forbidden'
require 'swagger_client/models/put_fleets_fleet_id_squads_squad_id_internal_server_error'
require 'swagger_client/models/put_fleets_fleet_id_squads_squad_id_naming'
require 'swagger_client/models/put_fleets_fleet_id_squads_squad_id_not_found'
require 'swagger_client/models/put_fleets_fleet_id_wings_wing_id_forbidden'
require 'swagger_client/models/put_fleets_fleet_id_wings_wing_id_internal_server_error'
require 'swagger_client/models/put_fleets_fleet_id_wings_wing_id_naming'
require 'swagger_client/models/put_fleets_fleet_id_wings_wing_id_not_found'

# APIs
require 'swagger_client/api/alliance_api'
require 'swagger_client/api/assets_api'
require 'swagger_client/api/bookmarks_api'
require 'swagger_client/api/calendar_api'
require 'swagger_client/api/character_api'
require 'swagger_client/api/clones_api'
require 'swagger_client/api/contacts_api'
require 'swagger_client/api/corporation_api'
require 'swagger_client/api/dogma_api'
require 'swagger_client/api/fittings_api'
require 'swagger_client/api/fleets_api'
require 'swagger_client/api/incursions_api'
require 'swagger_client/api/industry_api'
require 'swagger_client/api/insurance_api'
require 'swagger_client/api/killmails_api'
require 'swagger_client/api/location_api'
require 'swagger_client/api/loyalty_api'
require 'swagger_client/api/mail_api'
require 'swagger_client/api/market_api'
require 'swagger_client/api/opportunities_api'
require 'swagger_client/api/planetary_interaction_api'
require 'swagger_client/api/routes_api'
require 'swagger_client/api/search_api'
require 'swagger_client/api/skills_api'
require 'swagger_client/api/sovereignty_api'
require 'swagger_client/api/status_api'
require 'swagger_client/api/universe_api'
require 'swagger_client/api/user_interface_api'
require 'swagger_client/api/wallet_api'
require 'swagger_client/api/wars_api'

module SwaggerClient
  class << self
    # Customize default settings for the SDK using block.
    #   SwaggerClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
