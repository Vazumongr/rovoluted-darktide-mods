local mod = get_mod("WillOfTheEmperor")

mod._settings = {}

local data = {
	name = mod:localize("mod_name"),
	description = mod:localize("mod_description"),
	is_togglable = true,
	options = {
		widgets = {
			{
				setting_id = "god_emperor_mode",
				type = "checkbox",
				default_value = false,
				title = "god_emperor_mode",
				tooltip = "god_emperor_mode_desc",
			},
			{
				setting_id = "fervency_mode",
				type = "checkbox",
				default_value = false,
				title = "fervency_mode",
				tooltip = "fervency_mode_desc",
			},
			{
				setting_id = "disable_enemy_spawns",
				type = "checkbox",
				default_value = false,
				title = "disable_enemy_spawns",
				tooltip = "disable_enemy_spawns_desc",
			},
			{
				setting_id = "invisibility",
				type = "checkbox",
				default_value = false,
				title = "invisibility",
				tooltip = "invisibility_desc",
			},
			{
				setting_id = "rapid_ability_cooldowns",
				type = "checkbox",
				default_value = false,
				title = "rapid_ability_cooldowns",
				tooltip = "rapid_ability_cooldowns_desc",
			},
			{
				setting_id = "infinite_slide",
				type = "checkbox",
				default_value = false,
				title = "infinite_slide",
				tooltip = "infinite_slide_desc",
			},
			{
				setting_id = "infinite_ammunition",
				type = "checkbox",
				default_value = false,
				title = "infinite_ammunition",
				tooltip = "infinite_ammunition_desc",
			},
			{
				setting_id = "no_reloading",
				type = "checkbox",
				default_value = false,
				title = "no_reloading",
				tooltip = "no_reloading_desc",
			},
			{
				setting_id = "rounds_in_chamber",
				type = "dropdown",
				default_value = 0,
				title = "rounds_in_chamber",
				tooltip = "rounds_in_chamber_desc",
				options = {
					{ text = "rounds_minus_0", value = 0 },
					{ text = "rounds_minus_1", value = -1 },
					{ text = "rounds_minus_2", value = -2 },
					{ text = "rounds_minus_3", value = -3 },
					{ text = "rounds_minus_4", value = -4 },
					{ text = "rounds_5", value = 5 },
					{ text = "rounds_4", value = 4 },
					{ text = "rounds_3", value = 3 },
					{ text = "rounds_2", value = 2 },
					{ text = "rounds_1", value = 1 },
				},
			},
			-- {
			-- 	setting_id = "infinite_coherency",
			-- 	type = "checkbox",
			-- 	default_value = true,
			-- 	title = "infinite_coherency",
			-- 	tooltip = "infinite_coherency_desc",
			-- },
			{
				setting_id = "infinite_ledge_hold",
				type = "checkbox",
				default_value = true,
				title = "infinite_ledge_hold",
				tooltip = "infinite_ledge_hold_desc",
			},
			-- {
			-- 	setting_id = "no_fall_damage",
			-- 	type = "checkbox",
			-- 	default_value = true,
			-- 	title = "no_fall_damage",
			-- 	tooltip = "no_fall_damage_desc",
			-- },
			{
				setting_id = "move_speed",
				type = "numeric",
				default_value = 4,
				range = { 0, 50 },
				title = "move_speed",
				tooltip = "move_speed_desc",
			},
			-- {
			-- 	setting_id = "attack_speed",
			-- 	type = "numeric",
			-- 	default_value = 4,
			-- 	range = { 0, 50 },
			-- 	title = "attack_speed",
			-- 	tooltip = "attack_speed_desc",
			-- },
			{
				setting_id = "gravity",
				type = "numeric",
				default_value = 11.82,
				range = { 0, 100 },
				decimals_number = 1,
				title = "gravity",
				tooltip = "gravity_desc",
			},
			{
				setting_id = "reset_sliders_on_reload",
				type = "checkbox",
				default_value = true,
				title = "reset_sliders_on_reload",
				tooltip = "reset_sliders_on_reload_desc",
			},
			{
				setting_id = "keybind_pause",
				type = "keybind",
				title = "toggle_pause_time",
				tooltip = "toggle_pause_time_desc",
				keybind_trigger = "pressed",
				keybind_type = "function_call",
				function_name = "toggle_pause_time",
				default_value = {},
			},
			{
				setting_id = "keybind_slow_mo",
				type = "keybind",
				title = "slow_mo",
				tooltip = "slow_mo_desc",
				keybind_trigger = "pressed",
				keybind_type = "function_call",
				function_name = "toggle_slow_mo",
				default_value = {},
			},
			{
				setting_id = "keybind_reset_time_scale",
				type = "keybind",
				title = "reset_time",
				tooltip = "reset_time_desc",
				keybind_trigger = "pressed",
				keybind_type = "function_call",
				function_name = "reset_time",
				default_value = {},
			},
			-- {
			-- 	setting_id = "air_move_speed_scale",
			-- 	type = "numeric",
			-- 	default_value = 0.75,
			-- 	range = { 0, 100 },
			-- 	decimals_number = 2,
			-- 	title = "air_move_speed_scale",
			-- 	tooltip = "air_move_speed_scale_desc",
			-- },
		},
	},
}

for _, widget in pairs(data.options.widgets) do
	mod._settings[widget.setting_id] = mod:get(widget.setting_id)
end

return data