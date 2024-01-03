{
  wayland.windowManager.hyprland.settings = {
    general = {
      gaps_in = 4;
      gaps_out = 8;
      border_size = 3;
      "col.active_border" = "rgb(bfc9f3)";
      "col.inactive_border" = "rgb(242430)";

      layout = "dwindle";
    };

    decoration = {
      rounding = 7;
    };

    misc = {
      animate_manual_resizes = true;
      animate_mouse_windowdragging = true;
    };

    animation = [
      "workspaces,1,2,default"
      "windows,1,2,default,popin 50%"
    ];
  };
}
