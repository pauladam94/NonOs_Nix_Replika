PHONY: iso clean

iso:
	time nix-build '<nixpkgs/nixos>' -A config.system.build.isoImage -I nixos-config=iso.nix
clean:
	rm -rf result
