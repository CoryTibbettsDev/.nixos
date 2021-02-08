# Cheatsheet for nixos commands

echo "Update the list of packages"
echo "sudo nix-channel --update"

echo "Upgrade packages"
echo "sudo nixos-rebuild switch"

echo "Check for broken dependencies"
echo "nix-store --verify --check-contents"

echo "Verify all installed packages"
echo "sudo nix-store --verify --check-contents"

echo "Fix packages with failed checksums"
echo "sudo nix-store --verify --check-contents --repair"

echo "Find packages"
echo "nix search emacs"

echo "Install and Uninstall by user"
echo "nix-env --install or --uninstall"

echo "Install and Uninstall system wide"
echo "Edit configuration.nix in /etc/nixos/configuration.nix"
