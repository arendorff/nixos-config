# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
	<home-manager/nixos>
    ];

  # use latest kernel 
  boot.kernelPackages = pkgs.linuxPackages_latest;
  
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # nginx 
#  services.nginx.enable = true;

services.nextcloud = {                
  enable = true;                   
  package = pkgs.nextcloud24;
  hostName = "localhost";
  config.adminpassFile = "${pkgs.writeText "adminpass" "test123"}";
};


  # Set your time zone.
  time.timeZone = "Europe/Berlin";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.utf8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.utf8";
    LC_IDENTIFICATION = "de_DE.utf8";
    LC_MEASUREMENT = "de_DE.utf8";
    LC_MONETARY = "de_DE.utf8";
    LC_NAME = "de_DE.utf8";
    LC_NUMERIC = "de_DE.utf8";
    LC_PAPER = "de_DE.utf8";
    LC_TELEPHONE = "de_DE.utf8";
    LC_TIME = "de_DE.utf8";
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver = {
    layout = "de";
    xkbVariant = "neo_qwertz";
  };

  # Configure console keymap
  console.keyMap = "de";

# fish shell
users.users.mo.shell = pkgs.fish;
environment.shells = with pkgs; [ fish ];
programs.fish.enable = true; 

# steam 
programs.steam = {
	enable = true;
};

# jellyfin
services.jellyfin.enable = true;


  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.mo = {
    isNormalUser = true;
    description = "mo";
    extraGroups = [ "networkmanager" "wheel" ];
    # packages = with pkgs; [ ];
  };


# mullvad vpn
services.mullvad-vpn.enable = true;

# openssh 
services.openssh.enable = true;
services.openssh.ports = [ 69 ];
services.openssh.permitRootLogin = "no";


# flatpak 
services.flatpak.enable = true;


  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [

	vim
	neovim
	tldr
	git
	wget
	curl
	fzf
	ranger 

	firefox-wayland
	tilix	
	jellyfin-media-player
	foliate
	bottles
	calibre
	signal-desktop
	qbittorrent
	syncthing
	fractal 
	jellyfin-media-player
	signal-desktop
	mullvad-vpn

        gnomeExtensions.appindicator
	gnome.gnome-tweaks
	gnome.gnome-boxes
	gnome.geary
	#gnome.gnome-extensions

  ];


  # syncthing 
services = {
    syncthing = {
        enable = true;
        user = "mo";
        dataDir = "/home/mo/Documents";    # Default folder for new synced folders
        configDir = "/home/mo/Documents/.config/syncthing";   # Folder for Syncthing's settings and keys
    };
};


  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [80 443 20 69];
  # networking.firewall.allowedUDPPorts = [80 443 20 69];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.05"; # Did you read the comment?


home-manager.users.mo = { pkgs, ... }: {
	imports = [ ./dconf.nix ]; 
	home.packages = [ pkgs.htop ];
	home.stateVersion = "22.05"; 
};



}
