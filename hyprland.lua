-- No idea if these env variables are still needed but I migrate them for now
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("XKB_DEFAULT_LAYOUT", "de")
hl.env("XKB_DEFAULT_VARIANT", "qwertz")
hl.env("NVD_BACKEND", "direct")

--------------
-- MONITORS --
--------------

require("hyprland.monitors")

--------------
-- PROGRAMS --
--------------

require("hyprland.programs")

---------------
-- AUTOSTART --
---------------

require("hyprland.autostart")

------------
-- CONFIG --
------------

hl.config({
        general = {
                gaps_in                 = 5,
                gaps_out                = 20,
                border_size             = 2,
                col = {
                        active_border   = {
                                colors = {"rgba(33ccffee)", "rgba(00ff99ee)"},
                                angle = 45
                        },
                        inactive_border = "rgba(595959aa)",
                },
                resize_on_border        = true,
                layout                  = "dwindle",
        },

        decoration = {
                rounding                = 10,
                active_opacity          = 1.0,
                inactive_opacity        = 1.0,
                blur = {
                        enabled         = true,
                        size            = 3,
                        passes          = 1,
                        vibrancy        = 0.1696,
                },
        },

        animations = {
                enabled                 = true,
        },

        dwindle = {
                preserve_split          = true,
        },

        misc = {
                force_default_wallpaper = 2,
                disable_hyprland_logo   = false,
        },

        input = {
                kb_layout               = "de",
                kb_variant              = "qwertz",
                numlock_by_default      = true,
                sensitivity             = 0,
                accel_profile           = "flat",
                follow_mouse            = 1,
        },

        cursor = {
                no_hardware_cursors = true,
        },
})

-----------------
-- KEYBINDINGS --
-----------------

require("hyprland.keybindings")

----------------
-- WORKSPACES --
----------------

require("hyprland.workspaces")
