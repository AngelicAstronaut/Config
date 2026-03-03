{ inputs, config, pkgs, ...}:

{
    programs.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
  };

    environment.systemPackages = with pkgs; [
        kitty
        waybar
        gnome-icon-theme
        #util
        brightnessctl
        playerctl
        networkmanagerapplet
        hyprpaper
    ];
}


