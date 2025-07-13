local nauvis = data.raw.planet["nauvis"]

data:extend{
    {
        type = "trivial-smoke",
        name = "nauvis-raindrops",
        duration = 30,
        fade_in_duration = 10,
        fade_away_duration = 10,
        spread_duration = 30,
        start_scale = 1,
        end_scale = 0.8,
        cyclic = true,
        affected_by_wind = false,
        animation = {
            width = 256,
            height = 256,
            line_length = 2,
            frame_count = 4,
            priority = "high",
            animation_speed = 0.0001,
            scale = 0.5,
            filename = "__nauvis_rain__/graphics/rain.png",
            flags = { "smoke" }
        }
    }
}

nauvis.persistent_ambient_sounds = nauvis.persistent_ambient_sounds or {}
nauvis.persistent_ambient_sounds.semi_persistent = {
    {sound = 
      {filename = "__nauvis_rain__/sounds/rain.ogg", volume = 0.2}
    } 
}

nauvis.player_effects = {
    type = "cluster",
    cluster_count = 75, 
    distance = 7,  
    distance_deviation = 9, 
    action_delivery = {
        type = "instant",
        source_effects = {
            type = "create-trivial-smoke",
            smoke_name = "nauvis-raindrops",  
            speed = {x = -0.07, y = 0.6},  
            initial_height = 1.2, 
            speed_multiplier = 2.1,  
            speed_multiplier_deviation = 0.08,  
            offset_deviation = {{x = -100, y = -60}, {x = 100, y = 45}}, 
            speed_from_center = 0.015,  
        }
    }
}

nauvis.ticks_between_player_effects = 1.5 
