{
  programs.waybar.settings.main."pulseaudio" = {
    interval = 1;
    format = "{volume:2}% {icon}";
    format-muted = "";
    format-icons = {
      headphone = "";
      default = ["" ""];
    };
    scroll-step = 1;
    on-click = "pavucontrol";
    tooltip = false;
  };
}
