{
  description = "I use Nixos btw";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = {self, nixpkgs, ...} @ inputs: {
    nixosConfigurations.astronaut = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; }; # this is the important part
      modules = [
        ./configuration.nix
        ./hardware-configuration.nix
      ];
    };
  };
}
