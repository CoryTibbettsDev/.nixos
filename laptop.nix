{ config, pkgs, ... }:
{
	imports = [
		/etc/nixos/hardware-configuration.nix
		./modules/common.nix
		./modules/packages.nix
	];
	# Enable CUPS to print documents.
	# services.printing.enable = true;

	# Enable touchpad support (enabled default in most desktopManager).
	services.xserver.libinput.enable = true;

}
