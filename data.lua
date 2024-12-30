require("__base__.prototypes.entity.enemy-constants")

local f = "__aurora-biter-santa-hats__/graphics/entity/biter/hat/"

function hat_run_sprite_load(scale)
  return util.sprite_load(f .. "hr-biter-run-hat", {
    slice = 8,
    frame_count = 16,
    direction_count = 16,
    scale = scale * 0.5,
    multiply_shift = scale,
    allow_forced_downscale = true,
    surface = "nauvis",
    usage = "enemy",
  })
end

function hat_attack_sprite_load(scale)
  return util.sprite_load(f .. "hr-biter-attack-hat", {
    slice = 11,
    frame_count = 11,
    direction_count = 16,
    scale = scale * 0.5,
    animation_speed = 0.4,
    multiply_shift = scale,
    allow_forced_downscale = true,
    surface = "nauvis",
    usage = "enemy",
  })
end

function hat_die_sprite_load(scale)
  return util.sprite_load(f .. "hr-biter-die-hat", {
    slice = 4,
    lines_per_file = 4,
    line_length = 4,
    width = 544,
    height = 402,
    frame_count = 17,
    shift = util.by_pixel(0, -4),
    direction_count = 16,
    scale = 0.5 * scale,
    animation_speed = 0.4,
    multiply_shift = scale,
    allow_forced_downscale = true,
    surface = "nauvis",
    usage = "enemy",
  })
end

table.insert(data.raw["unit"]["small-biter"].run_animation.layers,
  hat_run_sprite_load(small_biter_scale))
table.insert(data.raw["unit"]["small-biter"].attack_parameters.animation.layers,
  hat_attack_sprite_load(small_biter_scale))
table.insert(data.raw["corpse"]["small-biter-corpse"].animation.layers,
  hat_die_sprite_load(small_biter_scale))

table.insert(data.raw["unit"]["medium-biter"].run_animation.layers,
  hat_run_sprite_load(medium_biter_scale))
table.insert(data.raw["unit"]["medium-biter"].attack_parameters.animation.layers,
  hat_attack_sprite_load(medium_biter_scale))
table.insert(data.raw["corpse"]["medium-biter-corpse"].animation.layers,
  hat_die_sprite_load(medium_biter_scale))

table.insert(data.raw["unit"]["big-biter"].run_animation.layers,
  hat_run_sprite_load(big_biter_scale))
table.insert(data.raw["unit"]["big-biter"].attack_parameters.animation.layers,
  hat_attack_sprite_load(big_biter_scale))
table.insert(data.raw["corpse"]["big-biter-corpse"].animation.layers,
  hat_die_sprite_load(big_biter_scale))

table.insert(data.raw["unit"]["behemoth-biter"].run_animation.layers,
  hat_run_sprite_load(behemoth_biter_scale))
table.insert(data.raw["unit"]["behemoth-biter"].attack_parameters.animation.layers,
  hat_attack_sprite_load(behemoth_biter_scale))
table.insert(data.raw["corpse"]["behemoth-biter-corpse"].animation.layers,
  hat_die_sprite_load(behemoth_biter_scale))
