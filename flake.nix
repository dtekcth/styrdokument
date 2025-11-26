{
  description = "styrdokument flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    systems.url = "github:nix-systems/x86_64-linux";

    flake-parts.url = "github:hercules-ci/flake-parts";
    flake-parts.inputs.nixpkgs-lib.follows = "nixpkgs";
  };

  outputs = inputs:
    let mkFlake = inputs.flake-parts.lib.mkFlake { inherit inputs; };
    in mkFlake ({ inputs, ... }: {
      systems = import inputs.systems;
      perSystem = { self, inputs, lib, pkgs, ... }:
        {
          devShells.default = pkgs.mkShell {
            buildInputs = with pkgs; [
              texliveFull
              biber
            ];
          };
        };
    });
}
