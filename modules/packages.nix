{ config, pkgs, ... }:

{
  services.xserver.enable = true;
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.windowManager.awesome.enable = true;
 
  # Configure keymap in X11
  # services.xserver.layout = "us";
  # services.xserver.xkbOptions = "eurosign:e";

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # Compositor
    picom
    # Wallpaper manager
    nitrogen
    # Terminal emulator
    termite
    # File Manager
    pcmanfm
    # Web browser
    qutebrowser
    epiphany
    # PDF viewer
    qpdfview
    # Image viewer
    geeqie
    # Video player
    mplayer
    # Utilities
    wget
    git
    tree
    htop
    curl
    # Auto mount external drives (USB)
    udiskie
    # Editors
    vim
    # Compilers and language utilities
    gcc
    gnumake
    ghc
  ];
  nix.gc.automatic = true;
  nix.gc.options = "--delete-older-than 8d";
}
