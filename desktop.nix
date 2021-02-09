{ config, pkgs, ... }:
{
	imports = [
		/etc/nixos/hardware-configuration.nix
		./modules/efi.nix
		./modules/common.nix
		./modules/packages.nix
	];
}
