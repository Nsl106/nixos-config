{
  wayland.windowManager.hyprland.settings = {
    input = {
      follow_mouse = true;
      sensitivity = -0.15; # -1.0 to 1.0
      accel_profile = "custom"; # Hopefully this fixes some weird scrolling acceleration
      natural_scroll = false;
    };
    general = {
      cursor_inactive_timeout = 0; # 0 is disabled
      no_cursor_warps = true;
    };
  };
}
