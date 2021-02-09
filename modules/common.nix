{config, pkgs, ... }:
{
	# The global useDHCP flag is deprecated, therefore explicitly set to false here.
	# Per-interface useDHCP will be mandatory in the future, so this generated config
	# replicates the default behaviour.
	networking.useDHCP = false;
	networking.interfaces.enp34s0.useDHCP = true;

	time.timeZone = "America/New_York";

	services.xserver.enable = true;
	services.xserver.displayManager.lightdm.enable = true;
	services.xserver.windowManager.awesome.enable = true;

	# Enable sound.
	sound.enable = true;
	hardware.pulseaudio.enable = true;

	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.person = {
		isNormalUser = true;
		extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
	};

	# Some programs need SUID wrappers, can be configured further or are
	# started in user sessions.
	# programs.mtr.enable = true;
	# programs.gnupg.agent = {
	#   enable = true;
	#   enableSSHSupport = true;
	# };

	# Enable the OpenSSH daemon.
	# services.openssh.enable = true;

	# This value determines the NixOS release from which the default
	# settings for stateful data, like file locations and database versions
	# on your system were taken. It‘s perfectly fine and recommended to leave
	# this value at the release version of the first install of this system.
	# Before changing this value read the documentation for this option
	# (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
	system.stateVersion = "20.09"; # Did you read the comment?
}
