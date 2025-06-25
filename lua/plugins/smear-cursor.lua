return {
  "sphamba/smear-cursor.nvim",

  opts = {
    -- Smear cursor when switching buffers or windows.
    smear_between_buffers = true,

    -- Smear cursor when moving within line or to neighbor lines.
    -- Use `min_horizontal_distance_smear` and `min_vertical_distance_smear` for finer control
    smear_between_neighbor_lines = true,

    -- Draw the smear in buffer space instead of screen space when scrolling
    scroll_buffer_space = true,

    -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
    -- Smears will blend better on all backgrounds.
    legacy_computing_symbols_support = false,

    -- Smear cursor in insert mode.
    -- See also `vertical_bar_cursor_insert_mode` and `distance_stop_animating_vertical_bar`.
    smear_insert_mode = true,
    -- cursor_color = "#ff8800",
    -- stiffness = 0.3,                      -- 0.6      [0, 1]
    -- trailing_stiffness = 0.1,             -- 0.4      [0, 1]
    -- stiffness_insert_mode = 0.6,          -- 0.4      [0, 1]
    -- trailing_stiffness_insert_mode = 0.6, -- 0.4      [0, 1]
    -- distance_stop_animating = 0.5,        -- 0.1      > 0
    cursor_color = "#b825a4",
    stiffness = 0.8,
    trailing_stiffness = 0.5,
    distance_stop_animating = 0.5,        -- 0.1      > 0
    trailing_exponent = 3,
    never_draw_over_target = true,
    hide_target_hack = true,
    gamma = 1,
  },
}
