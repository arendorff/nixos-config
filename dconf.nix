# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "com/gexperts/Tilix" = {
      prompt-on-close = false;
      terminal-title-style = "none";
      theme-variant = "system";
    };

    "com/gexperts/Tilix/keybindings" = {
      app-new-session = "<Alt>Return";
      session-add-auto = "<Shift><Alt>Return";
      session-switch-to-next-terminal = "<Alt>j";
      session-switch-to-previous-terminal = "<Alt>k";
      terminal-close = "<Alt>q";
      win-switch-to-next-session = "<Alt>l";
      win-switch-to-previous-session = "<Alt>h";
    };

  #   "org/gnome/desktop/app-folders/folders/Utilities" = {
  #     apps = [ "gnome-abrt.desktop" "gnome-system-log.desktop" "nm-connection-editor.desktop" "org.gnome.baobab.desktop" "org.gnome.Connections.desktop" "org.gnome.DejaDup.desktop" "org.gnome.Dictionary.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.eog.desktop" "org.gnome.Evince.desktop" "org.gnome.FileRoller.desktop" "org.gnome.fonts.desktop" "org.gnome.seahorse.Application.desktop" "org.gnome.tweaks.desktop" "org.gnome.Usage.desktop" "vinagre.desktop" ];
  #     categories = [ "X-GNOME-Utilities" ];
  #     name = "X-GNOME-Utilities.directory";
  #     translate = true;
  #   };

    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///usr/share/backgrounds/gnome/blobs-l.svg";
      picture-uri-dark = "file:///usr/share/backgrounds/gnome/blobs-d.svg";
      primary-color = "#3465a4";
      secondary-color = "#000000";
    };

    "org/gnome/desktop/input-sources" = {
      current = mkUint32 0;
      show-all-sources = true;
      sources = [ (mkTuple [ "xkb" "de+neo_qwertz" ]) ];
      xkb-options = [ "altwin:swap_alt_win" ];
    };

    "org/gnome/desktop/interface" = {
      clock-show-weekday = true;
      color-scheme = "default";
      font-antialiasing = "rgba";
      font-hinting = "slight";
      gtk-theme = "adw-gtk3";
      monospace-font-name = "Source Code Pro 14";
      show-battery-percentage = true;
      text-scaling-factor = 1.25;
      toolkit-accessibility = false;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      tap-to-click = true;
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/wm/keybindings" = {
      close = [ "<Super>q" ];
      minimize = [];
      move-to-workspace-left = [ "<Shift><Super>h" ];
      move-to-workspace-right = [ "<Shift><Super>l" ];
      switch-to-workspace-left = [ "<Super>h" ];
      switch-to-workspace-right = [ "<Super>l" ];
      toggle-fullscreen = [ "<Shift><Super>f" ];
      toggle-maximized = [ "<Super>f" ];
    };

    "org/gnome/desktop/wm/preferences" = {
      resize-with-right-button = true;
    };

    "org/gnome/mutter" = {
      center-new-windows = true;
      dynamic-workspaces = false;
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = true;
      night-light-last-coordinates = mkTuple [ 53.06901803988481 8.862175 ];
      night-light-schedule-automatic = false;
      night-light-temperature = mkUint32 2700;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/" ];
      screensaver = [ "<Super>c" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>Return";
      command = "tilix";
      name = "tilix";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Super>w";
      command = "firefox";
      name = "firefox";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2" = {
      binding = "<Super>r";
      command = "nautilus";
      name = "nautilus";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3" = {
      binding = "<Super>t";
      command = "flatpak run org.telegram.desktop";
      name = "telegram";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4" = {
      binding = "<Super>e";
      command = "flatpak run org.gnome.Geary";
      name = "geary";
    };

  };
}
